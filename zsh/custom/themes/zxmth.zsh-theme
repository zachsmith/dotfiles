local ret_status="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})"
PROMPT='${ret_status}[%{$fg[cyan]%}%c${ret_status}]%{$reset_color%} $(git-radar --zsh)
(%{$fg_bold[white]%}%M%{$reset_color%})${ret_status}➜ '

local _lineup=$'\e[1A'
local _linedown=$'\e[1B'
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

RPROMPT='%{${_lineup}%}${return_code}%{$reset_color%} %*%{${_linedown}%}'

export GIT_RADAR_COLOR_BRANCH="$fg_bold[yellow]"
export GIT_RADAR_FORMAT="%{branch} %{local} %{remote} %{changes} %{stash}"
