---
title: The dirname command in Bash
date: '2025-03-04'
description: dirname is a UNIX-like OS program designed to convert an absolute or
  relative path to a file or directory into the name of the parent directory.
noindex: false
featured: false
pinned: false
series:
- Scripting
tags:
- linux
- bash
categories:
- Linux
images: []
authors:
- Alimektor
status: final
---


`dirname` is a UNIX-like OS program designed to convert an absolute or relative path to a file or directory into the name of the parent directory.

## Syntax ##

```bash
dirname string
```

- `string` - path to file or directory

## Example ##

```shell
$ dirname ~/tests/1.txt
/home/alimektor/tests
```
