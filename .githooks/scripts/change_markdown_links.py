#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Copyright (c) 2024 AlimeKtor

# Change all markdown links in all markdown files in current directory

import glob
import os
import re


def get_files(path, extension, recursive=False):
    """
    A generator of filepaths for each file into path with the target extension.
    If recursive, it will loop over subfolders as well.
    """
    if not recursive:
        for file_path in glob.iglob(path + "/*." + extension):
            yield file_path
    else:
        for root, _, _ in os.walk(path):
            for file_path in glob.iglob(root + "/*." + extension):
                yield file_path


def get_all_markdown_links_from_content(markdown_file_content):
    """Get all markdown links in specified string"""
    return re.findall(r"\[(.*?)\]\((.+?)\)", markdown_file_content)


def change_all_markdown_links(markdown_file_content):
    """
    This function do several things:

    - Add markdown extensions for the link target without any extension.
    - Add a backslash for each link to a Markdown file.
    """
    markdown_links = get_all_markdown_links_from_content(markdown_file_content)
    replace_links = []
    for link_description, link_target in markdown_links:
        changed = False
        current_link_target = link_target
        # If the link target starts with protocol, skip
        if re.search(r"\w+?://", current_link_target):
            continue
        # If the link target without markdown extension, add it
        if not re.search(r"\.[^.]+", current_link_target):
            current_link_target = f"{current_link_target}.md"
            changed = True
        # If the link target starts without backslash, add it
        if not link_target.startswith("/"):
            current_link_target = f"/{current_link_target}"
            changed = True
        if changed:
            replace_links.append(
                (
                    f"[{link_description}]({link_target})",
                    f"[{link_description}]({current_link_target})",
                )
            )
    for links in replace_links:
        link_before = links[0]
        link_after = links[1]
        print(
            f"\033[91m{link_before}\033[00m \033[93m==>\033[00m \033[92m{link_after}\033[00m"
        )
        markdown_file_content = markdown_file_content.replace(link_before, link_after)
    return markdown_file_content


def main():
    for markdown_file_path in get_files(".", "md", recursive=True):
        # Read file
        with open(markdown_file_path, "r", encoding="utf-8") as markdown_file:
            print(f"\033[96mProcess markdown file: {markdown_file_path}\033[00m")
            markdown_file_content = markdown_file.read()

        # Change content
        markdown_file_content = change_all_markdown_links(markdown_file_content)

        # Write file
        with open(markdown_file_path, "w", encoding="utf-8") as markdown_file:
            markdown_file.write(markdown_file_content)


if __name__ == "__main__":
    main()
