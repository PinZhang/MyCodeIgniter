# CSDN 博客详情页

## Install Composer

我们采用 Composer 作为包管理器，具体安装方式请参照：[getcomposer](https://getcomposer.org/doc/00-intro.md)

## 开发环境

初始化 dependencies:

```sh
composer install --dev
```

准备 config.php

```sh
cp application/config/config.php.example application/config/config.php
```

或者创建一个 soft link

```sh
ln -s application/config/config.php.example application/config/config.php
```

## 生产环境初始化 dependencies

```sh
composer install --no-dev
```

## 检查代码格式

```sh
sh ./bin/checkstyle.sh
```
