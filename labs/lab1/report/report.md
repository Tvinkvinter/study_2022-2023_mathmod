---
## Front matter
title: "Лабораторная работа № 1"
subtitle: "Создание рабочего пространства для лабораторных работ"
author: "Тарусов Артём Сергеевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: false
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной работы является подготовка к выполнению будущих лабораторных работ: создание каталога для хранения работ в локальном хранилище и создание репозитория на GitHub по заданному шаблону.

# Задание

- Создать иерархию каталогов для хранения лабораторных работ
- Создать репозиторий на GitHub
- Оформить репозиторий согласно шаблону

# Теоретическое введение

- Git [1] — распределённая система управления версиями. Проект был создан Линусом Торвальдсом для управления разработкой ядра Linux, первая версия выпущена 7 апреля 2005 года.
- GitHub [2] — крупнейший веб-сервис для хостинга IT-проектов и их совместной разработки. Веб-сервис основан на системе контроля версий Git.
- SSH [3] — сетевой протокол прикладного уровня, позволяющий производить удалённое управление операционной системой и туннелирование TCP-соединений (например, для передачи файлов).

# Выполнение лабораторной работы

1. Создадим иерархию каталогов с помощью команды *mkdir* и откроем папку "Математическое моделирование" с помощью команды *cd* (@fig:001).

![Использование команд *mkdir* и *cd*](image/screenshot_1.jpg){#fig:001 width=90%}

2. С помощью утилиты *gh* создаем репозиторий на GitHub и клонируем его в локальное хранилище, используя SSH (@fig:002).

![Создание и клонирование репозитория](image/screenshot_2.jpg){#fig:002 width=90%}

3. Переходим в каталог mathmod и просматриваем доступные цели *make* (@fig:003).

![Доступные цели *make*](image/screenshot_3.jpg){#fig:003 width=90%}

4. Просматриваем список доступных курсов (@fig:004).

![Доступные курсы](image/screenshot_4.jpg){#fig:004 width=90%}

5. Удаляем лишний файл package.json (@fig:005).

![Удаление package.json](image/screenshot_5.jpg){#fig:005 width=90%}


6. Вызываем *make* для создания необходимых каталогов (@fig:006).

![Создание необходимых каталогов](image/screenshot_6.jpg){#fig:006 width=90%}

7. Отправляем файлы на сервер GitHub (@fig:007 - @fig:008).

![Отправление файлов на сервер](image/screenshot_7.jpg){#fig:007 width=90%}

![Отправление файлов на сервер](image/screenshot_8.jpg){#fig:008 width=90%}

# Выводы

В итоге проделанной работы мы получили готовые к дальнейшей работе репозиторий и его копию в локальном хранилище.

# Список литературы{.unnumbered}

[1] https://ru.wikipedia.org/wiki/Git

[2] https://ru.wikipedia.org/wiki/GitHub

[3] https://ru.wikipedia.org/wiki/SSH
