## install scoop
```shell
# Open a PowerShell terminal (version 5.1 or later) and run
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

## scoop config
```shell
scoop bucket list
scoop bucket known
scoop bucket add extras
scoop config proxy localhost:7890
```

## uninstall scoop
```shell
scoop uninstall scoop
```

## uninstall apps
```shell
# --purge	删除包目录中的所有文件和目录（可移植）
winget uninstall --purge --name 微信
```