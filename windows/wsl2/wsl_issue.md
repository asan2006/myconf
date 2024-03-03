### wsl 更新报错

```
wsl --update
Wsl/UpdatePackage/0x80190193
解决方法：关闭vpn，或者clash设置全局模式
```

### wsl启用镜像模式
```shell
# %userprofile%\.wslconfig 
[experimental]
autoMemoryReclaim=gradual  # gradual  | dropcache | disabled
networkingMode=mirrored
dnsTunneling=true
firewall=true
autoProxy=true
# wsl --shutdown
```

### 禁止在 WSL 2 中访问 Windows 环境变量
```shell
# /etc/wsl.conf
[interop]
appendWindowsPath = false
```