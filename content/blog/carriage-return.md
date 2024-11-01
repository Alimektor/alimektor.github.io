---
title: "What Is Carriage Return?"
date: 2024-04-04
description: "A note about carriage return and how to remove it."
noindex: false
featured: false
pinned: false
series:
  - Bash
  - Powershell
categories:
  - Linux
  - Windows
tags:
  - strings
  - linux
  - shell
  - general
  - windows
images: []
authors:
  - Alimektor
status: final
---

## What Are Carriage Return, Linefeed, and Form Feed? ##

**Carriage return** means to return to the beginning of the current line without advancing downward. The name comes from a printer's carriage, as monitors were rare when the name was coined. This is commonly escaped as `\r`, abbreviated `CR`, and has ASCII value `13` or `0xD`.

**Linefeed** means to advance downward to the next line; however, it has been repurposed and renamed. Used as "newline", it _terminates_ lines (commonly confused with _separating_ lines). This is commonly escaped as `\n`, abbreviated `LF` or `NL`, and has ASCII value `10` or `0xA`. `CRLF` (but not `CRNL`) is used for the pair `\r\n`.

**Form feed** means advance downward to the next "page". It was commonly used as page separators, but now is also used as section separators. Text editors can use this character when you "insert a page break". This is commonly escaped as `\f`, abbreviated `FF`, and has ASCII value `12` or `0xC`.

## Script to Delete Carriage Return ##

{{< bs/toggle carriageReturnRemove >}}

{{% bs/toggle-item Bash %}}

```bash
sed -i 's/\r//g' "<filename>"
```

{{% /bs/toggle-item %}}

{{% bs/toggle-item Powershell %}}

```powershell
$path = "<filename>"
(Get-Content $path -Raw).Replace("`r`n","`n") | Set-Content $path -Force
```

{{% /bs/toggle-item %}}

{{< /bs/toggle >}}

## Links ##

- [StackOverflow](https://stackoverflow.com/questions/3091524/what-are-carriage-return-linefeed-and-form-feed)
