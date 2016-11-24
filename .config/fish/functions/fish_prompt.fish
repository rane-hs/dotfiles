function fish_prompt
    set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
    set_color normal
    echo -n (date "+%m/%d/%y %H:%M:%S")
    set_color green
    echo -n ' '(whoami)'@'(hostname)
    set_color yellow
    echo -n ':'(prompt_pwd)' {'"$git_branch"'}'
    set_color normal
    printf '\n> '
end

