# bash completion for ffp-compiler

_ffp_compiler_completions()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    opts="--package --pkg-version --jobs --list --info --system-info --publish --versions --autoretry --failexit --dry-run --version --help -v -h"

    # Complete options
    if [[ ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi

    # Complete package names if --package or --info or --versions
    if [[ ${prev} == "--package" || ${prev} == "--info" || ${prev} == "--versions" ]]; then
        local pkgs=$(ls definitions 2>/dev/null | sed 's/\.sh$//' )
        COMPREPLY=( $(compgen -W "${pkgs}" -- ${cur}) )
        return 0
    fi
}

complete -F _ffp_compiler_completions ffp-compiler
