local _lineup=$'\e[1A'
local _linedown=$'\e[1B'
local return_code="%(?..%{$fg[red]%}%?↵%{$reset_color%})"
local ret_status="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})"

PROMPT='${ret_status}[%{$fg[cyan]%}%c${ret_status}]%{$reset_color%} $(git-radar --zsh)
${ret_status}(%{$fg_bold[white]%}%m${ret_status})➜ '

RPROMPT='%{${_lineup}%}${return_code}%{$reset_color%} %*%{${_linedown}%}'

export GIT_RADAR_COLOR_BRANCH="$fg_bold[yellow]"
export GIT_RADAR_FORMAT="%{branch} %{local} %{remote} %{changes} %{stash}"
