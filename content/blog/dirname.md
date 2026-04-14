---
title: The dirname command in Bash
date: 2025-03-06
description: >-
  `dirname` is a UN IX-like OS program designed to convert an absolute or
  relative path to a file or directory into the name of the parent directory.
taxonomies:
  tags:
    - bash
    - linux
  categories:
    - Linux
extra:
  author: Alimektor
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
