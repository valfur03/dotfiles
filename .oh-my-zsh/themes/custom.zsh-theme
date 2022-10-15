# fg[green]=$FG[072]
# fg_bold[green]+=$FG[072]
# fg[blue]=$FG[110]
# fg_bold[blue]+=$FG[110]
# fg[yellow]=$FG[223]
# fg_bold[yellow]+=$FG[223]
# fg[red]=$FG[216]
# fg_bold[red]+=$FG[216]

local return_code="%(?..%{$fg[red]%}%?%{$reset_color%} )"
local current_pwd="%{${fg_bold[green]}%}%~%{$reset_color%}"

if [ -z "${PROMPT_DEVICE_ID+x}" ]
then
	PROMPT_DEVICE_ID=""
else
	PROMPT_DEVICE_ID="%{$fg[magenta]%}[$PROMPT_DEVICE_ID]%{$reset_color%} "
fi

PROMPT='${return_code}${PROMPT_DEVICE_ID}${current_pwd}$(git_prompt_info)%-20(l. .
)%{${fg_bold[blue]}%}$%{${reset_color}%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_DIRTY="•"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"
