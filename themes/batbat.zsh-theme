# based on the bira theme (2011-12-21)
# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
local rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

# Rails Environment
# local r_env='$FG[201]$(echo $RAILS_ENV)$reset_color'
local r_env=' %{$FG[201]%}$(echo $RAILS_ENV)%{$reset_color%}'


time="$FG[244][$FG[238]%*$FG[244]]%{$reset_color%}"
PROMPT="╭─${user_host} ${current_dir} ${rvm_ruby} ${git_branch}
╰─${time}%B$%b "
RPS1="${return_code}${r_env}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
