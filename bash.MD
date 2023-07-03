``` shell
# 保存输出到log文件，并且在终端显示
./script/run.sh  2>&1 |tee log.txt

# 重定向输出到系统剪切板
# sudo apt install xclip
pwd | grep xclip -selection c

# awk分割字符串，并输出第二项
awk '{print $2}' 
cut -d' ' -f2
```
