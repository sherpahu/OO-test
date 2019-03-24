# 使用教程
## 自动化多人互测
### 获得jar
在使用命令得到jar需要首先编译,再针对不同的主类名填写MANIFEST.MF文件.<br>
MANIFEST.MF顾名思义是配置文件的意思, 这个文件中必须要进行主类名的说明.<br>
最后就可以直接调用了.<br>
jar在多人互测时比较方便.<br>
当然, 如果只是针对自己的一个project可以在编译后直接用`java Main`的方法(Main为主类名)调用主类, 就不需要jar了
#### 用了包:
在包的**父目录**命令行下运行<br>
`javac -encoding UTF-8 father/*.java`
完成编译<br>
再在命令行下输入
`vim MANIFEST.MF`
写入相应的MANIREST.MF文件内容, 此处father为.java代码文件的父路径, Main为主类名(下同)
```
Manifest-Version: 1.0
Main-Class: father.Main

```
**注意**<br>
**Main-Class: father.Main的“:”后必须有空格,此行后必须有换行**<br>
父目录下运行命令打包jar<br>
`jar cvfm Dalibao.jar father/MANIFEST.MF father/*.class`
#### 没用包：
在src下命令行运行
`javac -encoding UTF-8 *.java`
命令行输入
`vim MANIFEST.MF`
输入MANIFEST.MF内容
```
Manifest-Version: 1.0
Main-Class: Main

```
打包jar
`jar cfm Dalibao.jar MANIFEST.MF *.class`
### jar的使用
在jar当前目录下输入
`java -jar Dalibao.jar`
互测可以利用下面的test.sh直接自动化统一测试.
## 测试
在目录下新建test.txt, 写入测试样例<br>
将所有的jar复制到同一路径下, 运行`bash test.sh`即可
**注意: 最后一行需要加上回车, 否则最后的输入数据无法读取**
例如
```
((cos((cos(x)*6	*(x*-3+sin(x)^ 5*x	 ) ))*cos(x)--x	)) 
--((((((((((((((x)*x)*x)*x)*x)*x)*x)*x)*x)*x)*x)*x)*x)*x)
(x+(x+(x+(x+(x+(x+(x+(x+(x+(x+(x+(x+(x+cos(x)^2)))))))))))))

```
## diff.py说明
这个python文件以sympy为基础,调用三种判断方式对于结果进行判断.<br>
在某些特定情况下(如输入数据过长而又充分优化),某一两种测试方法会判定false.<br>
但是经在互测提交试验后发现这种情况都是空刀,只要有一种输出true就应该是正确结果.<br>
也可视情况删减一两种方法以加快评测速度.
## 最后
鸣谢讨论区大佬提供思路
