---
## Front matter
lang: ru-RU
title: Лабораторная работа №4
subtitle: Модель гармонических колебаний
author:
  - Федорина Эрнест Васильевич
institute:
  - Российский университет дружбы народов, Москва, Россия

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

# Информация

## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

  * Федорина Эрнест Васильевич
  * студент
  * Российский университет дружбы народов
  * [1032216454@pfur.ru](mailto:1032216454@pfur.ru)
  * <https://evfedorina.github.io/ru/>

:::
::: {.column width="25%"}

![](./image/ernest.jpg)

:::
::::::::::::::

## Цель работы

Научиться строить базовую модель Хищник-жертва в Julia, OpenModelica, вспомнить Julia и OpenModelica, вспомнить теорию для построения фазовых портретов

## Задание

Для модели «хищник-жертва»:
$\frac{\partial x}{\partial t} = -0.15x +  0.044xy$

$\frac{\partial y}{\partial t} = 0.35y -  0.032xy)$

Постройте график зависимости численности хищников от численности жертв,
а также графики изменения численности хищников и численности жертв при
следующих начальных условиях:
x0 = 9, y0 = 14

Найдите стационарное
состояние системы

## Результат

В результате мы построили по  фазовому портрету, а также по графику изменения популяций хищников и жертв с течением времени. Сравнили решения обоих ПО.

## Выводы

В процессе выполнения данной лабораторной работы я построил модель хищник-жертва на языке прогаммирования Julia и посредством ПО OpenModelica, а также провел сравнительный анализ.

## Список литературы

1. МОДЕЛИ ВЗАИМОДЕЙСТВИЯ ДВУХ ВИДОВ [Электронный ресурс]. URL: http://www.library.biophys.msu.ru/LectMB/lect09.htm.