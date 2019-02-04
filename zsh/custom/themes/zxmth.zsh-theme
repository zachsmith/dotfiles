local red=$FG[001]
local grey=$FG[010]
local yellow=$FG[003]
local cyan=$FG[006]

local _lineup=$'\e[1A'
local _linedown=$'\e[1B'
local return_code="%(?..%{$red%}%?↵%{$reset_color%})"
local ret_status="%(?:%{$grey%}:%{$red%})"

PROMPT='${ret_status}[%{$cyan%}%c${ret_status}]%{$reset_color%} $(git-radar --zsh)
${ret_status}(%{$fg_bold[white]%}%m${ret_status})➜ '

RPROMPT='%{${_lineup}%}${return_code}%{$reset_color%} %*%{${_linedown}%}'

export GIT_RADAR_COLOR_BRANCH="$yellow"
export GIT_RADAR_FORMAT="%{branch} %{local} %{remote} %{changes} %{stash}"
