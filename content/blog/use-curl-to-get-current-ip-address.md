---
title: "Use curl to get your current IP address"
date: 2024-11-01
description: "This note is about how to use curl to get your current IP address."
noindex: false
featured: false
pinned: false
series:
  - Bash
categories:
  - Linux
  - Windows
tags:
  - curl
  - shell
  - network
images: []
authors:
  - Alimektor
status: final
---

In bash scripts, it is sometimes useful to know what public IP address is being used on the Internet. Use the following examples.

## Main Example ##

For IPv4:

```bash
curl -4 icanhazip.com
```

For IPv6:

```bash
curl -6 icanhazip.com
```

## Other Examples ##

```bash
curl ifconfig.me
```

```bash
curl api.ipify.org
```

```bash
curl ipinfo.io/ip
```

```bash
curl ipecho.net/plain
```
