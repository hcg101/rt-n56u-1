
my github update 我自己的github更新

是虚拟机的Ubuntu 

//首先显示分支

git branch   

//然后切换到分支wifidog

git checkout wifidog  

//有什么修改的话add所有

git add .   

//确认修改并给一个标签

git commit -m "addwifdog"



//最后首次同步到github的分支

git push --set-upstream origin wifidog



//另外如果再次修改内容后，先git add .然后再次设置不通的标签git commit -m "addwifdog-compile-firmware"，

//当然也可以一样，再次同步到同样的分支git push origin wifidog

howto get branch ' wifidog

git clone -b wifidog https://github.com/hcg101/rt-n56u-1.git

how to install ,please see master install
