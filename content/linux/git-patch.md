---
title: Git Patch
description: Git patches are text files that contain code and Git commit metadata.
noindex: false
featured: false
pinned: false
series:
- Scripting
tags:
- linux
- git
- vcs
categories:
- Linux
- Git
images: []
authors:
- Alimektor
status: final
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
