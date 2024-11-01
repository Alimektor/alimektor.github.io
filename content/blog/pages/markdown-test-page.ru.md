---
title: Тестовая страница Markdown
date: 2024-04-04
draft: false
description: Это страница для обзора Markdown.
noindex: false
featured: false
pinned: false
categories:
  - Test Pages
tags:
  - general
images: []
authors:
  - Alimektor
status: final
---

# Тестовая страница Markdown #

# h1 Заголовок #
## h2 Заголовок ##
### h3 Заголовок ###
#### h4 Заголовок ####
##### h5 Заголовок #####
###### h6 Заголовок ######


## Тематическое разделение абзацев ##

___

---

***


## Подчеркивание ##

**Это полужирный текст**

__Это полужирный текст__

*Это курсивный текст*

*Это курсивный текст*

~~Зачеркнутый~~


## Цитаты ##


> Блок-кавычки также могут быть вложенными...
>> ...с помощью дополнительных знаков "больше-меньше", расположенных рядом друг с другом...
> > > ...или с помощью пробелов между стрелками.


## Списки ##

Неупорядоченные:

- Создайте список, начав строку с `-`, `+` или `*`.
- Вложенные списки создаются с отступом в 2 пробела:
  + Смена символов маркера заставляет начать новый список:
    * Ac tristique libero volutpat at.
    + Facilisis in pretium nisl aliquet
    - Nulla volutpat aliquam velit
- Очень легко!

Пронумерованные:

1. Lorem ipsum dolor sit amet
2. Consectetur adipiscing elit
3. Integer molestie lorem at massa
1. Вы можете использовать последовательные числа...
1. ...или оставить все номера в виде `1.`.

Начните нумерацию со смещения:

57. foo
1. bar


## Код ##

Строчный `код`

Код с отступом

    // Некоторые комментарии
    строка 1 кода
    строка 2 кода
    строка 3 кода


Код блока "заборы"

```
Образец текста здесь...
```

Выделение синтаксиса

``` js
var foo = function (bar) {
  return bar++;
};

console.log(foo(5));
```

## Tables ##

| Опция | Описание |
| ------ | ----------- |
| data | путь к файлам данных, которые будут передаваться в шаблоны. |
| Движок | Движок, который будет использоваться для обработки шаблонов. По умолчанию используется Handlebars. |
| ext | extension to be used for dest files. |

Выравнивание столбцов вправо

| Опция | Описание |
| ------:| -----------:|
| data | путь к файлам данных, которые будут передаваться в шаблоны. |
| Движок | Движок, который будет использоваться для обработки шаблонов. По умолчанию используется Handlebars. |
| ext | extension to be used for dest files. |


## Links ##

[link text](http://dev.nodeca.com)

[link with title](http://nodeca.github.io/pica/demo/ "title text!")

Autoconverted link https://github.com/alimektor/Alimektor (enable linkify to see)


## Images ##

![Minion](https://octodex.github.com/images/minion.png)
![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg "The Stormtroopocat")

Like links, Images also have a footnote style syntax

![Alt text][id]

With a reference later in the document defining the URL location:

[id]: https://octodex.github.com/images/dojocat.jpg "The Dojocat"


### Subscript ###

- 19<sup>th</sup>
- H<sub>2</sub>O


### `<ins>` ###

<ins>Inserted text</ins>


### `<mark>` ###

<mark>Marked text</mark>


### Footnotes ###

Footnote 1 link[^first].

Footnote 2 link[^second].

Inline footnote^[Text of inline footnote] definition.

Дублированная сноска ссылка[^вторая].

[^первая]: Сноска **может иметь разметку**

    и несколько абзацев.

[^второй]: Текст сноски.
