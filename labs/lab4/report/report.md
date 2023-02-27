---
## Front matter
title: "Лабораторная работа № 4"
subtitle: "Модель гармонических колебаний"
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

Целью данной работы является построение модели гармонических колебаний.

# Задание

Построить фазовый портрет гармонического осциллятора и решенить уравнения
гармонического осциллятора для следующих случаев:

1. Колебания гармонического осциллятора без затуханий и без действий внешней
силы

2. Колебания гармонического осциллятора c затуханием и без действий внешней
силы

3. Колебания гармонического осциллятора c затуханием и под действием внешней
силы

# Теоретическое введение

- Гармонический осциллятор [1] — система, которая при смещении из положения равновесия испытывает действие возвращающей силы F, пропорциональной смещению x.

- Гармоническое колебание [2] - колебание, в процессе которого величины, характеризующие движение (смещение, скорость, ускорение и др.), изменяются по закону синуса или косинуса (гармоническому закону).

# Выполнение лабораторной работы

1. Опишем начальные значения x и y, а также коэффициенты уравнения для первого случая согласно варианту 8 на языке Julia (@fig:001).

![Начальные значения и коэффициенты для случая 1 на языке Julia](image/screenshot_1.png){#fig:001 width=90%}

2. Опишем соответсвующую систему дифференциальных уравнений(@fig:002).

![Система дифференциальных уравнений для случая 2 на языке Julia](image/screenshot_2.png){#fig:002 width=90%}

3. Получим решение системы дифференциальных уравнений (@fig:003).

![Решение системы дифференциальных уравнений для случая 1 на языке Julia](image/screenshot_3.png){#fig:003 width=90%}


4. Построим решение по полученным данным (@fig:004 - @fig:005).

![Построение решения для случая 1 на языке Julia](image/screenshot_4.png){#fig:004 width=90%}

![Решение уравнения колебания гармонического осциллятора без затуханий и без действий внешней силы, построенное на Julia](image/screenshot_5.png){#fig:005 width=90%}

5. Построим решение по полученным данным (@fig:006 - @fig:007).

![Построение фазового портрета для случая 1 на языке Julia](image/screenshot_6.png){#fig:006 width=90%}

![Фазовый портрет колебания гармонического осциллятора без затуханий и без действий внешней
силы, построенный на Julia](image/screenshot_7.png){#fig:007 width=90%}

6. Для второго случая изменим значение коэффициентов (@fig:008).

![Начальные значения и коэффициенты для случая 2 на языке Julia](image/screenshot_8.png){#fig:008 width=90%}

7. Код решения остается без изменений. Получим решение и фазовый портрет (@fig:009 - @fig:010).

![Решение уравнения колебания гармонического осциллятора c затуханием и без действий внешней силы, построенное на Julia](image/screenshot_9.png){#fig:009 width=90%}

![Фазовый портрет колебания гармонического осциллятора c затуханием и без действий внешней
силы, построенный на Julia](image/screenshot_10.png){#fig:010 width=90%}

8. Изменим значение коэффициентов для третьего случая (@fig:011).

![Начальные значения и коэффициенты для случая 3 на языке Julia](image/screenshot_11.png){#fig:011 width=90%}

9. Добавим функцию внешней силы в систему дифференциальных уравнений (@fig:012).

![Система дифференциальных уравнений для случая 3 на языке Julia](image/screenshot_12.png){#fig:012 width=90%}

10. Получим решение и фазовый портрет (@fig:013 - @fig:014).

![Решение уравнения колебания гармонического осциллятора  c затуханием и под действием внешней силы, построенное на Julia](image/screenshot_13.png){#fig:013 width=90%}

![Фазовый портрет колебания гармонического осциллятора  c затуханием и под действием внешней силы, построенный на Julia](image/screenshot_14.png){#fig:014 width=90%}

11. Построим модель для случая 1 на языке OpenModelica и получим решение и фазовый портрет (@fig:015 - @fig:017).

![Модель для случая 1 на языке OpenModelica](image/screenshot_15.png){#fig:015 width=90%}

![Решение уравнения колебания гармонического осциллятора без затуханий и без действий внешней силы, построенное на OpenModelica](image/screenshot_16.png){#fig:016 width=90%}

![Фазовый портрет колебания гармонического осциллятора без затуханий и без действий внешней
силы, построенный на OpenModelica](image/screenshot_17.png){#fig:017 width=90%}

12. Построим модель для случая 2 на языке OpenModelica и получим решение и фазовый портрет (@fig:018 - @fig:020).

![Модель для случая 2 на языке OpenModelica](image/screenshot_18.png){#fig:018 width=90%}

![Решение уравнения колебания гармонического осциллятора c затуханием и без действий внешней силы, построенное на OpenModelica](image/screenshot_19.png){#fig:019 width=90%}

![Фазовый портрет колебания гармонического осциллятора c затуханием и без действий внешней
силы, построенный на OpenModelica](image/screenshot_20.png){#fig:020 width=90%}

13. Построим модель для случая 3 на языке OpenModelica и получим решение и фазовый портрет (@fig:021 - @fig:023).

![Модель для случая 3 на языке OpenModelica](image/screenshot_21.png){#fig:021 width=90%}

![Решение уравнения колебания гармонического осциллятора c затуханием и под действием внешней силы, построенное на OpenModelica](image/screenshot_22.png){#fig:022 width=90%}

![Фазовый портрет колебания гармонического осциллятора c затуханием и под действием внешней
силы, построенный на OpenModelica](image/screenshot_23.png){#fig:023 width=90%}

# Выводы

В итоге проделанной работы мы построили по три модели на языках Julia и OpenModelica. Построение моделей колебания на языке openModelica занимает меньше строк, чем аналогичное построение на Julia.

# Список литературы{.unnumbered}

[1] https://dic.academic.ru/dic.nsf/ruwiki/112993

[2] https://foxford.ru/wiki/fizika/garmonicheskie-kolebaniya


