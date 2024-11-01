#!/usr/bin/env -S bash -e
# Install for repository.

. ../lib/functions

cd "${git_sync_repo}"

print_info "Copy Obsidian configuration."
rm -rf "${git_sync_repo}/.obsidian"
cp -r "${git_sync_repo}/.githooks/data/obsidian-config" "${git_sync_repo}/.obsidian"

print_info "Change local user name and email."
git config --local user.name "Alimektor"
git config --local user.email "alimektor@gmail.com"

print_info "Install necessary aliases."

git config --local alias.pullstash "!git fetch --all; git stash; git merge @{u}; git stash pop"
git config --local pull.rebase false

current_os="$(
    set -e
    get_os
)"

if [[ "${current_os}" = "termux" ]]; then
    git config --local alias.committermux '!bash -e ./.githooks/termux'
    git config --local alias.sync "!git pullstash; git add -A; [ -z \"\$(git status --porcelain)\" ] || git committermux; git stash clear"
    git config --local core.filemode false
else
    git config --local core.hooksPath .githooks
    git config --local alias.xgithook "!chmod +x \"\$(git rev-parse --show-toplevel)\"/.githooks/*; chmod +x \"\$(git rev-parse --show-toplevel)\"/.githooks/scripts/*"
    git config --local alias.sync "!git pullstash; git xgithook; git add -A; [[ -z \"\$(git status --porcelain)\" ]] || git commit -m \"[UPDATED]\"; git stash clear"
fi

git config --local alias.run "!f() { bash -e \"\$(git rev-parse --show-toplevel)/.githooks/scripts/\${@}\"; }; f"
git config --local alias.runhelp "!f() { ls -1 \"\$(git rev-parse --show-toplevel)/.githooks/scripts/\"; }; f"
git config --local alias.runls "!f() { ls -1 \"\$(git rev-parse --show-toplevel)/.githooks/scripts/\"; }; f"

# shellcheck disable=SC2010
# shellcheck disable=SC2312
for script in $(ls "${git_sync_repo}/.githooks/scripts" | grep '.sh$'); do
    print_info "Add alias for script ${success_color}${script}${info_color} as ${warning_color}run-${script}${info_color}."
    git config --local alias."run-${script}" "!f() { bash -e \"\$(git rev-parse --show-toplevel)/.githooks/scripts/${script}\" \"\${@}\"; }; f"
done

print_okay "Settings installation for the ${warning_color}${git_sync_repo_basename}${success_color} Git repository is complete!"
