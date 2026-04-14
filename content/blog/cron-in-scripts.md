---
title: Cron in Scripts
date: 2025-03-01
description: "How to Pass a Task to cron From a Script?"
taxonomies:
  tags:
    - bash
    - linux
    - automation
  categories:
    - Linux
extra:
  author: Alimektor
---


## How to Pass a Task to `cron` From a Script? ##

You can use the following script to do this in scripts:

```bash
crontab -l > taskcron
echo "* * * * * sometask" >> taskcron
crontab taskcron
rm taskcron
```
