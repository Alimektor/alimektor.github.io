---
title: How to Rename Multiple Files in Linux
date: '2025-03-06'
description: This post about how to rename multiple files in Linux will provide you
  with a step-by-step guide on how to rename multiple files in Linux using the `mv`
  command.
noindex: false
featured: false
pinned: false
series:
- Scripting
tags:
- bash
- linux
categories:
- Linux
images: []
authors:
- Alimektor
status: final
---


Use the following scripts.

Rename by pattern in current directory:

```bash
for f in <pattern: *.md>; do mv "$f" "$(echo "$f" | sed s/OLDNAME/NEWNAME/)"; done
```

Rename by search pattern recursively:

```bash
find . -name '<pattern: *.md>' -exec bash -c 'echo mv $0 ${0/OLDNAME/NEWNAME}' {} \; 
```

## Links ##

- [Rename multiple files by replacing a particular pattern in the filenames using a shell script](https://stackoverflow.com/questions/6840332/rename-multiple-files-by-replacing-a-particular-pattern-in-the-filenames-using-a)