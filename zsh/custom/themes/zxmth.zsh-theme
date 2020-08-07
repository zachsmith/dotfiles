local red=$FG[001]
local grey=$FG[240]
local purple=$FG[013]
local cyan=$FG[006]

local _lineup=$'\e[1A'
local _linedown=$'\e[1B'
local return_code="%(?..%{$red%}%?↵%{$reset_color%})"
local ret_status="%(?:%{$grey%}:%{$red%})"

[[ -v SSH_CLIENT ]] && local hostname=${(U)HOST} || local hostname=${(L)HOST}
[[ -v SSH_CLIENT ]] && local hostname_color="yellow" || local hostname_color="white"

PROMPT='${ret_status}[%{$cyan%}%c${ret_status}]%{$reset_color%} $(~/.git-radar/git-radar --zsh)
${ret_status}(%{$fg_bold[${hostname_color}]%}${hostname}${ret_status})➜ '

RPROMPT='%{${_lineup}%}${return_code}%{$reset_color%} $ret_status%*%{$reset_color%{${_linedown}%}'

export GIT_RADAR_COLOR_BRANCH="$purple"
export GIT_RADAR_FORMAT="%{branch} %{local} %{remote} %{changes} %{stash}"
