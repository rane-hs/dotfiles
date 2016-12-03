
function fish_right_prompt -d "Write out the right prompt"
    set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
    set_color purple
    echo -n ' {'"$git_branch"'}'
    set_color normal
    echo -n (date "+%m/%d/%y %H:%M:%S")
end
