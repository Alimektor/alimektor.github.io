---
title: "Использование curl для получения текущего IP-адреса"
date: 2024-11-01
description: "Эта заметка о том, как использовать curl для получения текущего IP-адреса."
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

В bash-скриптах иногда полезно знать, какой текущий IP-адрес используется в Интернете. Используйте следующие примеры.

## Главный пример ##

Для IPv4:

```bash
curl -4 icanhazip.com
```

Для IPv6:

```bash
curl -6 icanhazip.com
```

## Другие примеры ##

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
