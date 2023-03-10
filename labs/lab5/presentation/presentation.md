---
## Front matter
lang: ru-RU
title: Лабораторная работа № 5
author:
  - Тарусов Артём Сергеевич
group:
  - НФИбд-02-20, 1032201667
date: 2023, Москва

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---


## Цели

Целью данной работы является построение модели хищник-жертва.

## Задачи

1. Построить график зависимости численности хищников от численности жертв

2. Построить график зависимости численности хищников и численности жертв от времени

3. Найти стационарное состояние системы

## Ход работы

Опишем начальные значения x и y, а также коэффициенты согласно варианту 8 на языке Julia.

![Начальные значения и коэффициенты на языке Julia](image/screenshot_1.png){#fig:001 height=60%}

## Ход работы

Опишем соответсвующую систему дифференциальных уравнений.

![Система дифференциальных уравнений на языке Julia](image/screenshot_2.png){#fig:002 width=90%}

## Ход работы

Получим решение системы дифференциальных уравнений.

![Решение системы дифференциальных уравнений на языке Julia](image/screenshot_3.png){#fig:003 width=90%}

## Ход работы

Построим график зависимости численности хищников от численности жертв.

![Построение графика зависимости численности хищников от численности жертв на языке Julia](image/screenshot_4.png){#fig:004 height=60%}

## Ход работы

![График зависимости численности хищников от численности жертв, построенный на Julia](image/screenshot_5.png){#fig:005 height=60%}

## Ход работы

Построим графики зависимости численности хищников и численности жертв от времени.

![Построение графиков зависимости численности хищников и численности жертв от времени на языке Julia](image/screenshot_6.png){#fig:006 height=60%}

## Ход работы

![Графики зависимости численности хищников и численности жертв от времени, построенные на Julia](image/screenshot_7.png){#fig:007 height=60%}

## Ход работы

Найдем точку, в которой система переходит в стационарное состояние.

![Нахождение точки, в которой система переходит в стационарное состояние, на Julia](image/screenshot_8.png){#fig:008 width=90%}

## Ход работы

По аналогии с предыдущим построением получим графики зависимости численности хищников и численности жертв от времени в стационарной системе на языке Julia.

![Графики зависимости численности хищников и численности жертв от времени в стационарной системе, построенные на Julia](image/screenshot_9.png){#fig:009 height=60%}

## Ход работы

Построим модель на языке OpenModelica.

![Модель хищник-жертва на языке OpenModelica](image/screenshot_10.png){#fig:010 height=60%}

## Ход работы

Получим график зависимости численности хищников от численности жертв.

![График зависимости численности хищников от численности жертв, построенный на OpenModelica](image/screenshot_11.png){#fig:011 width=90%}

## Ход работы

Получим графики зависимости численности хищников и численности жертв от времени.

![Графики зависимости численности хищников и численности жертв от времени, построенные на OpenModelica](image/screenshot_12.png){#fig:012 width=90%}

## Ход работы

Найдем точку, в которой система переходит в стационарное состояние.

![Нахождение точки, в которой система переходит в стационарное состояние, на OpenModelica](image/screenshot_13.png){#fig:013 height=60%}

## Ход работы

По аналогии с предыдущим построением получим графики зависимости численности хищников и численности жертв от времени в стационарной системе на языке OpenModelica

![Графики зависимости численности хищников и численности жертв от времени в стационарной системе, построенные на OpenModelica](image/screenshot_14.png){#fig:014 height=50%}

## Результаты

В итоге проделанной работы мы построили график зависимости численности хищников от численности жертв, а также графики изменения численности хищников и численности жертв на языках Julia и OpenModelica. Построение модели хищник-жертва на языке openModelica занимает меньше строк, чем аналогичное построение на Julia.

