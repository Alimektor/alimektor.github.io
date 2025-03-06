---
title: Cron in Scripts
date: '2025-03-01'
description: How to Pass a Task to cron From a Script?
noindex: false
featured: false
pinned: false
series:
- Automation
tags:
- linux
- bash
- automation
categories:
- Linux
images: []
authors:
- Alimektor
status: final
---


## How to Pass a Task to `cron` From a Script? ##

You can use the following script to do this in scripts:

```bash
crontab -l > taskcron
echo "* * * * * sometask" >> taskcron
crontab taskcron
rm taskcron
```
