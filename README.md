# CSDN 博客详情页

## Install Composer

我们采用 Composer 作为包管理器，具体安装方式请参照：[getcomposer](https://getcomposer.org/doc/00-intro.md)

## 开发环境

初始化 dependencies:

```sh
composer install --dev
```

### 准备配置文件 config.php database.php

```sh
cp application/config/config.php.example application/config/config.php
cp application/config/database.php.example application/config/database.php
```

或者创建 soft link

```sh
ln -s config.php.example application/config/config.php
ln -s database.php.example application/config/database.php
```

## 测试环境

### 初始化 dependencies
```sh
composer install --no-dev
```

### 初始化配置文件

```sh
cp application/config/config.php.testing   application/config/config.php
cp application/config/database.php.testing application/config/database.php
```

## 生产环境

###初始化 dependencies

```sh
composer install --no-dev
```

###初始化配置文件

```sh
cp application/config/config.php.prod   application/config/config.php
cp application/config/database.php.prod application/config/database.php
```

## 检查代码格式

```sh
sh ./bin/checkstyle.sh
```
