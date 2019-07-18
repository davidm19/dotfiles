# Adapted from Josh Dick's own git prompt.
setopt prompt_subst
autoload -Uz colors && colors # Enable colors in prompt

# Echoes information about Git repository status when inside a Git repository
git_info() {

  # Exit if not inside a Git repository
  ! git rev-parse --is-inside-work-tree > /dev/null 2>&1 && return

  # Git branch/tag, or name-rev if on detached head
  local GIT_LOCATION=${$(git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD)#(refs/heads/|tags/)}
  local GIT_LOCATION_NO_WHITESPACE="$(echo -e "${GIT_LOCATION}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"

  local AHEAD="⇡NUM"
  local BEHIND="%{$fg[magenta]%}⇣NUM%{$reset_color%}"
  local MERGING="%{$fg[red]%}|MERGING%{$reset_color%}"
  local UNTRACKED="#"
  local MODIFIED="%{$fg[cyan]%}*%{$reset_color%}"
  local STAGED="%{$fg[green]%}+%{$reset_color%}"

  local -a DIVERGENCES
  local -a FLAGS

  local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_AHEAD" -gt 0 ]; then
    DIVERGENCES+=( "${AHEAD//NUM/$NUM_AHEAD}" )
  fi

  local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_BEHIND" -gt 0 ]; then
    DIVERGENCES+=( "${BEHIND//NUM/$NUM_BEHIND}" )
  fi

  local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
  if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
    FLAGS+=( "$MERGING" )
  fi

  if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    FLAGS+=( "$UNTRACKED" )
  fi

  if ! git diff --quiet 2> /dev/null; then
    FLAGS+=( "$MODIFIED" )
  fi

  if ! git diff --cached --quiet 2> /dev/null; then
    FLAGS+=( "$STAGED" )
  fi

  local -a GIT_INFO
  GIT_INFO+=( "(" )
  GIT_INFO+=( "%{$fg[yellow]%}$GIT_LOCATION_NO_WHITESPACE%{$reset_color%}" )
  [ -n "$GIT_STATUS" ] && GIT_INFO+=( "$GIT_STATUS" )
  [[ ${#DIVERGENCES[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)DIVERGENCES}" )
  [[ ${#FLAGS[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)FLAGS}" )
  echo "${(j::)GIT_INFO})"

}

# Aliases
if [[ "$OSTYPE" == "darwin"* ]]; then
   export CLICOLOR=1
   export LSCOLORS=exfxcxdxBxegxfabagacha
else
   alias ls='ls --color=auto'
fi
alias l="ls"
# nice git log: git log --oneline --graph --all

# Almighty PS1 CHOOSE ONE BEFORE SCHOOL YEAR STARTS
# PS1='%{$fg[cyan]%}%n%{$fg[yellow]%}%{$reset_color%}:%{$fg[magenta]%}%~%{$reset_color%}$(git_info)% %# ' Magenta
# export PS1='%F{196}%n%F{226}@%F{51}%m%F{226}:%F{226}%~%f$(git_info)% %# '
# export PS1='%F{196}%n%F{226}:%F{51}%~%f$(git_info)% %# '
