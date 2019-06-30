function fish_prompt
    printf '\n'

    set_color $fish_color_cwd_root
    printf ' '

    # print base dir

    if test $PWD = "/" >/dev/null ^/dev/null
        set_color --bold $fish_color_cwd_root
        printf \/
    else if test $PWD = $HOME >/dev/null ^/dev/null
        set_color --bold $fish_color_cwd
        printf \~
    else
        set_color --bold $fish_color_cwd
        printf (basename $PWD)
    end
    printf ' '


    # print indicator

    if git rev-parse --is-inside-work-tree >/dev/null ^/dev/null

        # print branch

        set_color normal
        set_color blue
        printf ' '
        printf (git symbolic-ref --short HEAD; or false); printf ' '


        # print indicator

        if test -z (git status --porcelain) >/dev/null ^/dev/null

            # print clean indicator

            # XXX: inherit color
            printf '➦  '
        else

            # print dirty indicator

            set_color normal
            set_color yellow
            printf '➦  '
        end
    else

        # print default indicator

        set_color normal
        printf '➦  '
    end
end
