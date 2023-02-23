---
## Front matter
title: "Лабораторная работа № 3"
subtitle: "Модель боевых действий"
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

Целью данной работы является построение модели боевых действий.

# Задание

- Построить модель боевых действий между регулярными войсками на языках Julia и OpenModelica
- Построить модель ведения боевых действий с участием регулярных войск и
партизанских отрядов на языках Julia и OpenModelica


# Теоретическое введение

- Законы Ланчестера (законы Осипова — Ланчестера) [1] — математическая формула для расчета относительных сил пары сражающихся сторон — подразделений вооруженных сил

В противоборстве могут принимать участие как регулярные войска,
так и партизанские отряды. В общем случае главной характеристикой соперников
являются численности сторон. Если в какой-то момент времени одна из
численностей обращается в нуль, то данная сторона считается проигравшей (при
условии, что численность другой стороны в данный момент положительна).

Рассмотривается три случая ведения боевых действий:

	1. Боевые действия между регулярными войсками

	2. Боевые действия с участием регулярных войск и партизанских отрядов

	3. Боевые действия между партизанскими отрядами

# Выполнение лабораторной работы

1. Опишем начальные значения согласно варианту 8 на языке Julia (@fig:001).

![Начальные значения](image/screenshot_1.png){#fig:001 width=90%}

2. Укажем коэффициенты a, b, c, d (@fig:002).

![Коэффициенты a, b, c, d для первого случая на языке Julia](image/screenshot_2.png){#fig:002 width=90%}

3. Опишем функцию P подхода подкрепления армии X и функцию Q для армии Y. Составим систему дифференциальных уравнений, описывающую противостояние регулярных войск (@fig:003).

![Составление функций для моделирования боевых действий с участием регулярных войск на языке Julia](image/screenshot_3.png){#fig:003 width=90%}


4. Получим решение системы дифференциальных уравнений (@fig:004).

![Решение системы дифференциальных уравнений для первого случая на языке Julia](image/screenshot_4.png){#fig:004 width=90%}

5. Построим графики по полученным данным (@fig:005 - @fig:006).

![Построение графика для первого случая на языке Julia](image/screenshot_5.png){#fig:005 width=90%}

![Модель противостояния регулярных войск, построенная на языке Julia](image/screenshot_6.png){#fig:006 width=90%}

6. Для второго случая начальные значения численности армий X и Y остаются прежними. Определим коэффициенты a, b, c, d  (@fig:007).

![Коэффициенты a, b, c, d для второго случая на языке Julia](image/screenshot_7.png){#fig:007 width=90%}

7. Опишем функции P, Q и систему дифференциальных уравнений для второго случая  (@fig:008).

![Составление функций для моделирования боевых действий с участием регулярных войск и партизанских отрядов на языке Julia](image/screenshot_8.png){#fig:008 width=90%}

8. По аналогии с первым случаем построим модель для второго (@fig:009).

![Модель противостояния регулярных войск с участием партизанских отрядов, построенная на языке Julia](image/screenshot_9.png){#fig:009 width=90%}

9. Построим программу, моделирующую боевые действия с участием регулярных войск с помощью OpenModelica (@fig:010 - @fig:011).

![Построение модели для первого случая на языке OpenModelica](image/screenshot_10.png){#fig:010 width=90%}

![Модель противостояния регулярных войск, построенная на языке OpenModelica](image/screenshot_11.png){#fig:011 width=90%}

10. Построим программу, моделирующую боевые действия с участием регулярных войск и партизанских отрядов с помощью OpenModelica (@fig:012 - @fig:013).

![Построение модели для второго случая на языке OpenModelica](image/screenshot_12.png){#fig:012 width=90%}

![Модель противостояния регулярных войск с участием партизанских отрядов, построенная на языке OpenModelica](image/screenshot_13.png){#fig:013 width=90%}

# Выводы

В итоге проделанной работы мы построили по две модели на языках Julia и OpenModelica. В ходе проделанной работы можем сделать вывод, что OpenModelica лучше приспособлен для моделирование процессов, протекающих во времени. Построение моделей боевых действий на языке openModelica занимает меньше строк, чем аналогичное построение на Julia.

# Список литературы{.unnumbered}

[1] https://ru.wikipedia.org/wiki/%D0%97%D0%B0%D0%BA%D0%BE%D0%BD%D1%8B_%D0%9E%D1%81%D0%B8%D0%BF%D0%BE%D0%B2%D0%B0_%E2%80%94_%D0%9B%D0%B0%D0%BD%D1%87%D0%B5%D1%81%D1%82%D0%B5%D1%80%D0%B0#:~:text=%D0%9B%D0%B8%D0%BD%D0%B5%D0%B9%D0%BD%D1%8B%D0%B9%20%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD%20%D0%9B%D0%B0%D0%BD%D1%87%D0%B5%D1%81%D1%82%D0%B5%D1%80%D0%B0,-%D0%92%20%D0%B4%D1%80%D0%B5%D0%B2%D0%BD%D0%B5%D0%B9%20%D0%B1%D0%B8%D1%82%D0%B2%D0%B5&text=%D0%95%D1%81%D0%BB%D0%B8%20%D0%BA%D0%B0%D0%B6%D0%B4%D1%8B%D0%B9%20%D1%87%D0%B5%D0%BB%D0%BE%D0%B2%D0%B5%D0%BA%20%D1%83%D0%B1%D0%B8%D0%B2%D0%B0%D0%B5%D1%82%20%D1%80%D0%BE%D0%B2%D0%BD%D0%BE,(%D0%BF%D1%80%D0%B8%20%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D0%B8%D1%87%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D0%BD%D1%8F%D0%B5%D0%BC%D0%BE%D0%B3%D0%BE%20%D0%BE%D1%80%D1%83%D0%B6%D0%B8%D1%8F).


