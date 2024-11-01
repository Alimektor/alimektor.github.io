#!/usr/bin/env -S bash -e
# Save Obsidian configuration.

# shellcheck disable=SC2154

git_sync_repo="$(git rev-parse --show-toplevel)"
export git_sync_repo

# shellcheck source=../lib/functions
. "${git_sync_repo}/.githooks/lib/functions"

cd "${git_sync_repo}"

echo -e "${info_color}Copy Obsidian configuration.${reset_color}"
rm -rf "${git_sync_repo}/.githooks/data/obsidian-config"
cp -r "${git_sync_repo}/.obsidian" "${git_sync_repo}/.githooks/data/obsidian-config"
echo -e "${success_color}Done!${reset_color}"
