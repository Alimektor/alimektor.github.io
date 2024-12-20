---
title: "Что такое возврат каретки?"
date: 2024-04-04
description: "Заметка о переводе каретки и о том, как его удалить."
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

# carriage-return.ru

## Что такое возврат каретки, перевод строки и подача формы? ##

**Возврат каретки** означает возврат к началу текущей строки без продвижения вниз. Название происходит от каретки принтера, так как мониторы были редкостью на момент появления названия. Обычно это обозначается как `\r`, сокращенно `CR`, и имеет ASCII-значение `13` или `0xD`.

**Linefeed** означает переход на следующую строку; однако он был перепрофилирован и переименован. Используется как "новая строка", она _заканчивает_ строки (обычно путают с _разделяет_ строки). Обычно экранируется как `\n`, сокращенно `LF` или `NL`, и имеет ASCII-значение `10` или `0xA`. `CRLF` (но не `CRNL`) используется для пары `\r\n`.

**Form feed** означает переход к следующей "странице". Этот символ обычно использовался в качестве разделителя страниц, но теперь он также используется в качестве разделителя разделов. Текстовые редакторы могут использовать этот символ, когда вы "вставляете разрыв страницы". Этот символ обычно экранируется как `\f`, сокращенно `FF`, и имеет ASCII-значение `12` или `0xC`.

## Скрипт для удаления возврата каретки ##

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

## Ссылки ##

- [StackOverflow](https://stackoverflow.com/questions/3091524/what-are-carriage-return-linefeed-and-form-feed)
