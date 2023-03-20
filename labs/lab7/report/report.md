---
## Front matter
title: "Лабораторная работа № 7"
subtitle: "Эффективность рекламы "
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

Целью данной работы является построение модели распространения рекламы.

# Задание

Построить графики распространения рекламы для трех случаев. При этом объем аудитории
N = 810, в начальный момент о товаре знает 11 человек. Для случая 2 определить, в какой момент времени скорость распространения рекламы будет иметь максимальное значение.

# Теоретическое введение

Мальтузианская модель роста (англ. Malthusian growth model), также называемая моделью Мальтуса — это экспоненциальный рост с постоянным темпом. Модель названа в честь английского демографа и экономиста Томаса Мальтуса. [1]

Модель рекламной кампании описывается следующими величинами.
Считаем, что $dn/dt$ - скорость изменения со временем числа потребителей, узнавших о товаре и готовых его купить, $t$ - время, прошедшее с начала рекламной
кампании, $nt()$ - число уже информированных клиентов. Эта величина
пропорциональна числу покупателей, еще не знающих о нем, это описывается
следующим образом: $\alpha_1(t)(N-n(t))$, где N - общее число потенциальных платежеспособных покупателей, $\alpha_1(t) > 0$ - характеризует интенсивность рекламной кампании (зависит от затрат на рекламу в данный момент времени). Помимо этого, узнавшие о товаре потребители также распространяют полученную информацию среди потенциальных покупателей, не знающих о нем (в этом случае работает т.н. сарафанное радио). Этот вклад в рекламу описывается величиной $\alpha_2(t)n(t)(N-n(t))$, эта величина увеличивается с увеличением потребителей, унавших о товаре. [2]

# Выполнение лабораторной работы

1. Опишем начальные значения согласно варианту 8 на языке Julia (@fig:001).

![Начальные значения на языке Julia](image/screenshot_1.png){#fig:001 width=90%}

2. Опишем дифференциальное уравнение для первого случая(@fig:002).

![Дифференциальное уравнение для первого случая на языке Julia](image/screenshot_2.png){#fig:002 width=90%}

3. Получим решение дифференциального уравнения (@fig:003).

![Решение дифференциального уравнения для первого случая на языке Julia](image/screenshot_3.png){#fig:003 width=90%}

4. Построим график распространения рекламы для первого случая (@fig:004 - @fig:005).

![Построение графика распространения рекламы для первого случая на языке Julia](image/screenshot_4.png){#fig:004 width=90%}

![График распространения рекламы для первого случая, построенный на Julia](image/screenshot_5.png){#fig:005 width=90%}

5. Изменим дифференциальное уравнение для второго случая(@fig:006).

![Дифференциальное уравнение для второго случая на языке Julia](image/screenshot_6.png){#fig:006 width=90%}

6. Определим, в какой момент времени скорость распространения рекламы будет
иметь максимальное значение(@fig:007).

![Определение момента времени, когда скорость распространения рекламы будет
иметь максимальное значение, на языке Julia](image/screenshot_7.png){#fig:007 width=90%}

7. По аналогии с предыдущим построением получим получим график для второго случая (@fig:008).

![График распространения рекламы для второго случая, построенный на Julia](image/screenshot_8.png){#fig:008 width=90%}

8. Изменим дифференциальное уравнение для третьего случая(@fig:009).

![Дифференциальное уравнение для третьего случая на языке Julia](image/screenshot_9.png){#fig:009 width=90%}

9. Получим получим график для третьего случая (@fig:010).

![График распространения рекламы для третьего случая, построенный на Julia](image/screenshot_10.png){#fig:010 width=90%}

10. Построим модель для первого случая на языке OpenModelica (@fig:011 - @fig:012).

![Построение модели для первого случая на языке OpenModelica](image/screenshot_11.png){#fig:011 width=90%}

![График распространения рекламы для первого случая, построенный на языке OpenModelica](image/screenshot_12.png){#fig:012 width=90%}

11. Построим модель для второго случая на языке OpenModelica. Находить, в какой момент времени скорость распространения рекламы будет иметь максимальное значение, не будем, так как реализовать это базовыми средствами OpenModelica довольно затруднительно (@fig:013 - @fig:014).

![Построение модели для второго случая на языке OpenModelica](image/screenshot_13.png){#fig:013 width=90%}

![График распространения рекламы для второго случая, построенный на языке OpenModelica](image/screenshot_14.png){#fig:014 width=90%}

12. Построим модель для третьего случая на языке OpenModelica (@fig:015 - @fig:016).

![Построение модели для третьего случая на языке OpenModelica](image/screenshot_15.png){#fig:015 width=90%}

![График распространения рекламы для третьего случая, построенный на языке OpenModelica](image/screenshot_16.png){#fig:016 width=90%}


# Выводы

В итоге проделанной работы мы построили графики распространения рекламы для трех случаев на языках Julia и OpenModelica. Построение модели распространения рекламы на языке OpenModelica занимает значительно меньше строк, чем аналогичное построение на Julia. Кроме того, построения на языке OpenModelica проводятся относительно значения времени t по умолчанию, что упрощает нашу работу. Но при этом вычисление момент времени, когда скорость распространения рекламы будет иметь максимальное значение, довольно затруднительно на OpenModelica.

# Список литературы{.unnumbered}

[1] Мальтузианская модель роста. Википедия: https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D0%BB%D1%8C%D1%82%D1%83%D0%B7%D0%B8%D0%B0%D0%BD%D1%81%D0%BA%D0%B0%D1%8F_%D0%BC%D0%BE%D0%B4%D0%B5%D0%BB%D1%8C_%D1%80%D0%BE%D1%81%D1%82%D0%B0

[2] Руководство к лабораторной работе: https://esystem.rudn.ru/pluginfile.php/1971668/mod_resource/content/2/%D0%9B%D0%B0%D0%B1%D0%BE%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%BD%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%E2%84%96%206.pdf
