---
title: Git Patch
date: 2025-03-05
description: Git patches are text files that contain code and Git commit metadata.
taxonomies:
  tags:
    - linux
    - git
    - vcs
  categories:
    - Linux
    - Git
extra:
  author: Alimektor
---


Git patches are text files that contain code and Git commit metadata.

## Generate a Git Patch For a Specific Commit ##

Generate a patch for the HEAD commit:

```bash
git format-patch -1 HEAD
```

Generate a patch for the HEAD commit with specified file name:

```bash
git format-patch -1 HEAD --output=head.patch
```

Generate a patch for HEAD - `n` commits:

```bash
git format-patch -<n> HEAD
```

Apply the patch with verbose:

```bash
git apply --verbose *.patch
```
