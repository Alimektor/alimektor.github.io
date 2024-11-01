#!/usr/bin/env -S bash -e
# Get words from Markdown files in the notebook.

git_sync_repo="$(git rev-parse --show-toplevel)"
export git_sync_repo

# shellcheck source=../lib/functions
. "${git_sync_repo}/.githooks/lib/functions"

cd "${git_sync_repo}"

if ! command -v pandoc >/dev/null 2>&1; then
    echo "pandoc is not installed!"
    exit 1
fi


# shellcheck disable=SC2312
words="$(find . -iname "*.md" -not \( -path __templates__ -prune \) -exec pandoc --strip-comments -t markdown {} \; 2> /dev/null | wc -w)"

print_info "Words in the notebook: ${success_color}${words}${reset_color}"
