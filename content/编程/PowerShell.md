---
title: "PowerShell"
markup: pandoc
---

# 安装

从 <https://github.com/PowerShell/PowerShell/releases> 下载 x64.msi 安装。

# 配置

路径为 `C:\Users\<user>\Documents\PowerShell\profile.ps1`。

# 语法

## 别名

```ps1
Set-Alias -Name br -Value broot
```

## 代理

```ps1
netsh winhttp show proxy  # 显示当前代理
netsh winhttp set proxy "127.0.0.1:3128"  # 设置代理
netsh winhttp reset proxy  # 重置代理
```

## 删除项目

```ps1
Remove-Item -Recurse -Force <some_dir>
```

## 查询命令的路径

```ps1
(Get-Command python).Path
```

# bat

## 关闭回显

```bat
@ECHO OFF
```

## 多行命令

```bat
copy file1.txt ^
    file2.txt
```
