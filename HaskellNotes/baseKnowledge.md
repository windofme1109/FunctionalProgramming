<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Haskell 基本知识 —— 《Haskell趣学指南》学习笔记](#haskell-%E5%9F%BA%E6%9C%AC%E7%9F%A5%E8%AF%86--haskell%E8%B6%A3%E5%AD%A6%E6%8C%87%E5%8D%97%E5%AD%A6%E4%B9%A0%E7%AC%94%E8%AE%B0)
  - [学习资料](#%E5%AD%A6%E4%B9%A0%E8%B5%84%E6%96%99)
  - [基本知识](#%E5%9F%BA%E6%9C%AC%E7%9F%A5%E8%AF%86)
    - [1. 基本运算](#1-%E5%9F%BA%E6%9C%AC%E8%BF%90%E7%AE%97)
    - [2. 函数](#2-%E5%87%BD%E6%95%B0)
    - [3. 函数的定义](#3-%E5%87%BD%E6%95%B0%E7%9A%84%E5%AE%9A%E4%B9%89)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Haskell 基本知识 —— 《Haskell趣学指南》学习笔记



## 学习资料

1. 《Haskell趣学指南》中文版地址：[Haskell趣学指南](https://github.com/windofme1109/learnyouahaskell-zh)

## 基本知识

### 1. 基本运算

1. 相加 —— `+`
2. 相减 —— `-`
3. 相除 —— `/`
4. 相乘 —— `*`
5. 布尔运算
   - 与 —— `&&`
   - 或 —— `||`
   - 非 —— `not`
   - 真 —— `True`
   - 假 —— `False`
6. 基本的逻辑判断：
   - 相等 —— `==`
   - 不等于 —— `/=`
7. 注意事项：
   - 使用负数时最好将其置于括号之中，像 `5*(-3)` 就不会有问题。而 `5 * -3` 会报错。
   - 运算符两侧，加空格，如：`5 + 6`、`15 * 20` 等。
   - 使用运算符，必须保证是统一数据类型。

### 2. 函数

1. Haskell 中函数的调用方式是：`函数名，空格，空格分隔的参数表`，例如：`succ` 函数返回一个数的后继 (successor)，`succ 9` 返回值就是 `10`。

2. 中缀函数
   - 像三明治一样，两个参数将它夹在中央，这被称作中缀函数，例如：`8 * 9`。
3. 前缀函数
   - 函数名在前，参数在后，就是前缀函数，例如：`succ 9` 就是前缀函数。

4. 接收多个参数，使用空格分隔。例如：`min 5 6`，返回两个参数中较小的哪个值。两个参数可以是整数，也可以是浮点数。

5. 函数调用拥有最高的优先级。例如：`succ 9 + min 5 6 + 1`，从左向右，先调用函数，最后执行普通运算，结果最终是16。

6. 小括号可以提高运算的优先级。例如我们项要获取 `9 * 10` 的后继，这样写是不行的：`succ 9 * 10`，这样会先计算9的后继，然后再乘10，最终结果就是100。所以，我们要优先计算 `9 * 10` ，使用小括号将其包起来，即：`succ ( 9 * 10)`，结果就是91。

### 3. 函数的定义

1. 与函数调用类似，首先定义函数名，后跟由空格分隔的参数表。但在声明中一定要在 `=` 后面定义函数的行为。例如:  
   ```
        doubleMe x = x * x
   ```



