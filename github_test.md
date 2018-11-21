# 创建一个目录，并初始化它

```
[root@mysr650 ~]# rm mytest/ -fr
[root@mysr650 ~]# mkdir youtest
[root@mysr650 ~]# cp enable_vnc.sh youtest/
[root@mysr650 ~]# cd youtest/
[root@mysr650 youtest]# git init
Initialized empty Git repository in /root/youtest/.git/
[root@mysr650 youtest]#  git config  --global user.name chegnzhupeng
[root@mysr650 youtest]#  git config  --global user.email pengcz@126.com
[root@mysr650 youtest]#  git config --global push.default simple
```

# 添加文件验证本地目录

```
[root@mysr650 youtest]# git add enable_vnc.sh
[root@mysr650 youtest]# git commit -m "init version"
[master (root-commit) 8cae501] init version
 1 file changed, 9 insertions(+)
 create mode 100644 enable_vnc.sh
```
# 添加远程同步目录

```
[root@mysr650 youtest]# git remote add origin git@github.com:chengzhupeng/youtest.git
[root@mysr650 youtest]# git pull origin master
From github.com:chengzhupeng/youtest
 * branch            master     -> FETCH_HEAD
Merge made by the 'recursive' strategy.
 README.md | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 README.md

[root@mysr650 youtest]#   git push --set-upstream origin master
Counting objects: 6, done.
Delta compression using up to 72 threads.
Compressing objects: 100% (4/4), done.
Writing objects: 100% (5/5), 740 bytes | 0 bytes/s, done.
Total 5 (delta 0), reused 0 (delta 0)
To git@github.com:chengzhupeng/youtest.git
   58ff4fa..d2a4eed  master -> master
Branch master set up to track remote branch master from origin.
```
# 修改本地文件验证远程同步

```
[root@mysr650 youtest]# vim enable_vnc.sh
[root@mysr650 youtest]# git add enable_vnc.sh
[root@mysr650 youtest]# git commit -m "update for test only"
[master 21b72e9] update for test only
 1 file changed, 1 insertion(+)
[root@mysr650 youtest]# git push
Counting objects: 5, done.
Delta compression using up to 72 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 316 bytes | 0 bytes/s, done.
Total 3 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To git@github.com:chengzhupeng/youtest.git
   d2a4eed..21b72e9  master -> master
```







# 下面是一次完整的流程记录
```
[root@mysr650 ~]# rm mytest/ -fr
[root@mysr650 ~]# mkdir youtest
[root@mysr650 ~]# cp enable_vnc.sh youtest/
[root@mysr650 ~]# cd youtest/
[root@mysr650 youtest]# git init
Initialized empty Git repository in /root/youtest/.git/
[root@mysr650 youtest]#  git config  --global user.name chegnzhupeng
[root@mysr650 youtest]#  git config  --global user.email pengcz@126.com
[root@mysr650 youtest]#  git config --global push.default simple
[root@mysr650 youtest]# git add enable_vnc.sh
[root@mysr650 youtest]# git commit -m "init version"
[master (root-commit) 8cae501] init version
 1 file changed, 9 insertions(+)
 create mode 100644 enable_vnc.sh
[root@mysr650 youtest]# git remote add origin git@github.com:chengzhupeng/youtest.git
[root@mysr650 youtest]# git pull origin
warning: no common commits
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
From github.com:chengzhupeng/youtest
 * [new branch]      master     -> origin/master
You asked to pull from the remote 'origin', but did not specify
a branch. Because this is not the default configured remote
for your current branch, you must specify a branch on the command line.
[root@mysr650 youtest]# ls
enable_vnc.sh
[root@mysr650 youtest]# git pull origin master
From github.com:chengzhupeng/youtest
 * branch            master     -> FETCH_HEAD
Merge made by the 'recursive' strategy.
 README.md | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 README.md
[root@mysr650 youtest]# git push
fatal: The current branch master has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin master

[root@mysr650 youtest]#   git push --set-upstream origin master
Counting objects: 6, done.
Delta compression using up to 72 threads.
Compressing objects: 100% (4/4), done.
Writing objects: 100% (5/5), 740 bytes | 0 bytes/s, done.
Total 5 (delta 0), reused 0 (delta 0)
To git@github.com:chengzhupeng/youtest.git
   58ff4fa..d2a4eed  master -> master
Branch master set up to track remote branch master from origin.
[root@mysr650 youtest]# vim enable_vnc.sh
[root@mysr650 youtest]# git add enable_vnc.sh
[root@mysr650 youtest]# git commit -m "update for test only"
[master 21b72e9] update for test only
 1 file changed, 1 insertion(+)
[root@mysr650 youtest]# git push
Counting objects: 5, done.
Delta compression using up to 72 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 316 bytes | 0 bytes/s, done.
Total 3 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To git@github.com:chengzhupeng/youtest.git
   d2a4eed..21b72e9  master -> master
[root@mysr650 youtest]#

```



