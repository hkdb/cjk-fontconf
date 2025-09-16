#!/usr/bin/env bash

CWD=$(pwd)

echo -e "\nCopy config files to /etc/fonts...\n"
cp -r conf.custom /etc/fonts/

echo -e "\nEntering /etc/fonts\n"
cd /etc/fonts/conf.d

echo -e "\nCreating symlinks in /etc/fonts/conf.d...\n"
ln -s ../conf.custom/25-arphic-ukai-render.conf .
ln -s ../conf.custom/25-arphic-uming-render.conf .
ln -s ../conf.custom/30-cjk-aliases.conf .
ln -s ../conf.custom/41-arphic-ukai.conf .
ln -s ../conf.custom/41-arphic-uming.conf .
ln -s ../conf.custom/64-language-selector-prefer.conf .
ln -s ../conf.custom/69-language-selector-zh-cn.conf .
ln -s ../conf.custom/69-language-selector-zh-hk.conf .
ln -s ../conf.custom/69-language-selector-zh-mo.conf .
ln -s ../conf.custom/69-language-selector-zh-sg.conf .
ln -s ../conf.custom/69-language-selector-zh-tw.conf .
ln -s ../conf.custom/70-fonts-noto-cjk.conf .
ln -s ../conf.custom/75-arphic-ukai-select.conf .
ln -s ../conf.custom/90-arphic-ukai-embolden.conf .
ln -s ../conf.custom/90-arphic-uming-embolden.conf
ln -s ../conf.custom/99-language-selector-zh.conf .

echo -e "\nReturning to $CWB\n"
cd $CWD

echo -e "\nRefresh font cache...\n"
fc-cache -f -v
echo -e "\n"
