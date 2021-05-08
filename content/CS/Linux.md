---
title: "Linux"
markup: pandoc
---

# 目录结构

```sh
/
├── media   # 系统挂载 removable media 的目录
└── mnt     # 用户临时挂载点
```

# 发行版

## Arch Linux

### 清除缓存

```sh
sudo paccache -rk0
```

## Ubuntu

### add-apt-repository: command not found

```sh
sudo apt install software-properties-common
```

## nix

# Virtual Box

```sh
sudo pacman -S xf86-video-vmware
```

# 硬盘

## 判断是否为 SSD[@linux_ssd]

```sh
cat /sys/block/sda/queue/rotational  # 假设在判断 sda
# - 0 为 SSD
# - 1 为机械硬盘
```

## 挂载

### samba

| 操作系统 | 命令                          |
|----------|-------------------------------|
| Ubuntu   | `sudo apt install cifs-utils` |

: samba 组件安装命令 {#tbl:sambaInstall}

# 查看目录

## broot

### 安装 broot

| 操作系统   | 命令                   |
|------------|------------------------|
| Arch Linux | `sudo pacman -S broot` |

: broot 安装命令 {#tbl:brootInstall}

# Core Pattern

```sh
# ulimit -c unlimited
# sysctl -w kernel.core_pattern=core.%p
# sysctl --system  # 使更改生效
```

# Sed

```sh
sed 's/Hello/Hi/g' <file_name> > file
```

# 壁纸

```sh
nix-env -iA nixpkgs.variety
```

# 常用命令

## 合并文件

```sh
cat * > merged-file
```

## 把 windows 的 CR+LF 变为 Linux 的 LF

```sh
dos2unix myfile.txt
```

# 参考文献
