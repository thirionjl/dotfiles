function git_current_branch

    set -l branch (git symbolic-ref -q HEAD | cut -c 12-)
    set -l remote_info

    if test -z $branch
        set -l hash (git rev-parse --short HEAD | cut -c 2-)
        set branch ":"$hash
    else
        set remote_info (___fish_git_print_remote_info $branch)
    end

    echo $branch
end

