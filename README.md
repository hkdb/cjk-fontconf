# CJK Font Fix for Arch-based Distros
maintained by @hkdb


### SUMMARY

A simple script to enable better looking CJK characters in [Arch](https://archlinux.org/)-based distros.


### USAGE

1. `git clone https://github.com/hkdb/cjk-fontconf.git`
2. `cd cjk-fontconf`
3. `./configure.sh`


### BACKGROUND

I have been a long time Debian based distro user with the latest being [Pop! OS](https://system76.com/pop/) as my main daily driver. In [Pop! OS](https://system76.com/pop/), out of the box, Chinese fonts look great! However, every time I use an [Arch](https://archlinux.org/)-based distro (been using [CachyOS](https://cachyos.org/) more and more lately), I can't help but to notice that Chinese fonts are super ugly. Among other things, part of the reason why is that for Chinese fonts to look reasonable, the font weight must be much heavier but the proper font weight for Chinese is just not suitable for English. Looking at Pop! OS, I noticed that there are some custom configs in `/etc/fonts/conf.d` which dynamically adjust font settings for CJK characters. So I figured that by adding these same configurations to any Arch based distro or any other similarly structured distro for that matter of fact, I would get the same great look for CJK characters. Sure enough, it worked!

Since it worked so well, I figured, I would create this repo to automate this process so I can easily do this with any future [Arch](https://archlinux.org/)-based distro I use.


### SOURCE

Config files in `conf.custom` were copied from [Pop! OS](https://system76.com/pop/) 22.04 by following the symlinks in `/etc/fonts/conf.d`.


### WHAT IT DOES

It adds the `conf.custom` directory to `/etc/fonts` and then adds symlinks to all the config files in `/etc/fonts/conf.d` then, just in case, refreshes font cache.


### DISCLAIMER

Anyone is free to use this but use at your own risk. I am not responsible for any damages this script may or may not cause. I make no guarantees.
