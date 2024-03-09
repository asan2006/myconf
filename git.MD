``` shell
# 删除本地分支
git branch -d localBranchName

# 删除远程分支
git push origin --delete remoteBranchName

# origin remote操作
git config --get remote.origin.url
git remote -v

git remote set-url origin git@github.com:asan2006/myconf.git
```