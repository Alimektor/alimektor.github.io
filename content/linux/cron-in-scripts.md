---
title: Cron in Scripts
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
- linux
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
