#!/bin/bash

e=$(networksetup -getwebproxy wi-fi | grep "No")

if [ -n "$e" ]; then
  printf 'HTTP and HTTPS Proxy Enabled \n'
  sudo networksetup -setwebproxy Wi-Fi 127.0.0.1 8080
  sudo networksetup -setsecurewebproxy Wi-Fi 127.0.0.1 8080
else
  printf 'HTTP and HTTPS Proxy Disabled \n'
  sudo networksetup -setwebproxystate wi-fi off
  sudo networksetup -setsecurewebproxystate wi-fi off
fi
