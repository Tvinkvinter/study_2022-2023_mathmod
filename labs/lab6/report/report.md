---
## Front matter
title: "Лабораторная работа № 6"
subtitle: "Задача об эпидемии"
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

Целью данной работы является построение модели эпидемии.

# Задание

Построить графики изменения числа особей в каждой из трех групп S, I, R.
Рассмотреть, как будет протекать эпидемия в случае:


1) если I(0) <= I*

2) если I(0) > I*

# Теоретическое введение

Рассмотрим простейшую модель эпидемии SIR [1]. Предположим, что некая
популяция, состоящая из N особей, (считаем, что популяция изолирована)
подразделяется на три группы. Первая группа - это восприимчивые к болезни, но
пока здоровые особи, обозначим их через S(t). Вторая группа – это число
инфицированных особей, которые также при этом являются распространителями
инфекции, обозначим их I(t). А третья группа, обозначающаяся через R(t) – это
здоровые особи с иммунитетом к болезни.
До того, как число заболевших не превышает критического значения I\*, считаем, что все больные изолированы и не заражают здоровых. Когда I(t) > I\*, тогда инфицирование способны заражать восприимчивых к болезни особей. [2] 

# Выполнение лабораторной работы

1. Опишем начальные значения согласно варианту 8 на языке Julia (@fig:001).

![Начальные значения на языке Julia](image/screenshot_1.png){#fig:001 width=90%}

2. Опишем соответсвующую систему дифференциальных уравнений для первого случая, когда больные изолированы (@fig:002).

![Система дифференциальных уравнений для первого случая на языке Julia](image/screenshot_2.png){#fig:002 width=90%}

3. Получим решение системы дифференциальных уравнений (@fig:003).

![Решение системы дифференциальных уравнений для первого случая на языке Julia](image/screenshot_3.png){#fig:003 width=90%}

4. Построим графики численности особей трех групп S, I, R (@fig:004 - @fig:005).

![Построение графиков численности особей трех групп S, I, R на языке Julia](image/screenshot_4.png){#fig:004 width=90%}

![Графики численности особей трех групп S, I, R, построенные на Julia, для случая, когда больные изолированы](image/screenshot_5.png){#fig:005 width=90%}

5. Изменим коэффициенты заболеваемости и выздоровления, а также систему дифференциальных уравнений для второго случая, когда зараженные могут инфицировать особей из группы S (@fig:006).

![Коэффициенты заболеваемости и выздоровления и система дифференциальных уравнений для второго случая на языке Julia](image/screenshot_6.png){#fig:006 width=90%}

6. По аналогии с предыдущим построением получим получим графики для второго случая (@fig:007).

![Графики численности особей трех групп S, I, R, построенные на Julia, для случая, когда больные могут заражать особей группы S](image/screenshot_7.png){#fig:007 width=90%}

7. Построим модель для первого случая на языке OpenModelica (@fig:008).

![Построение модели для первого случая на языке OpenModelica](image/screenshot_8.png){#fig:008 width=90%}

8. Построим графики численности особей трех групп S, I, R (@fig:009).

![Графики численности особей трех групп S, I, R, построенные на OpenModelica, для случая, когда больные изолированы](image/screenshot_9.png){#fig:009 width=90%}

9. Для второго случая, когда зараженные могут инфицировать особей из группы S, изменим коэффициенты заболеваемости и выздоровления, а также систему дифференциальных уравнений (@fig:010).

![Построение модели для второго случая на языке OpenModelica](image/screenshot_10.png){#fig:010 width=90%}

10. Построим графики для второго случая (@fig:011).

![Графики численности особей трех групп S, I, R, построенные на OpenModelica, для случая, когда больные могут заражать особей группы S](image/screenshot_11.png){#fig:011 width=90%}

# Выводы

В итоге проделанной работы мы построили графики зависимости численности особей трех групп S, I, R для случаев, когда больные изолированы и когда они могут заражать особей группы S, на языках Julia и OpenModelica. Построение модели эпидемии на языке OpenModelica занимает значительно меньше строк, чем аналогичное построение на Julia. Кроме того, построения на языке OpenModelica проводятся относительно значения времени t по умолчанию, что упрощает нашу работу.

# Список литературы{.unnumbered}

[1] Конструирование эпидемиологических моделей. Habr: https://habr.com/ru/post/551682/

[2] Руководство к лабоарторной работе: https://esystem.rudn.ru/pluginfile.php/1971664/mod_resource/content/2/%D0%9B%D0%B0%D0%B1%D0%BE%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%BD%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%E2%84%96%205.pdf
