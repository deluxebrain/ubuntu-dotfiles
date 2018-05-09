#!/usr/bin/env bash

function get_latest_version()
{
    pyenv install --list \
    | sed -n 's/^[ \t]*\(\(\(.*\)-\)\?\([0-9]*\.[0-9]*\.[0-9]*\)\)$/\3,\4,\1/p' \
    | sort -k1V \
    | awk -F"," -v distribution="$1" '$1==distribution {print $3}' \
    | tail -n1 \
    | awk 'END { if (NR != 0) { print; exit 0 } else { exit 1 }}'
}

function main()
{
    local name="$1"
    local version

    version="$(get_latest_version "$name")"
    if (( $? != 0 )); then
        echo "ERROR: Distribution $name not found" >&2
        false; return
    fi

    echo "INFO: Installing $version" >&2
    if ! pyenv install "$version"; then
        echo "ERROR: Installation of $version failed" >&2
        false; return
    fi
}

main "$@"