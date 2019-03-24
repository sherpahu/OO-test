# 使用教程
## 测试数据
在目录下新建test.txt, 写入测试样例
**注意: 最后一行需要加上回车, 否则无法读取**
## 互测
### 编译jar&MANIFEST.MF
用了包:(只要在代码第一行写了package ...的都算, package src也算)
在包的**父目录**命令行下运行
javac -encoding UTF-8 father/*.java
vim MANIFEST.MF

输入
```
Manifest-Version: 1.0
Main-Class: father.PolyCal

```
**注意**
**Main-Class: PolyCal的“:”后必须有空格,此行后必须有换行**


jar cvfm Somebody.jar father/MANIFEST.MF father/*.class


没用包：
在src下命令行运行
javac -encoding UTF-8 *.java
vim MANIFEST.MF
输入
```
Manifest-Version: 1.0
Main-Class: PolyCal

```
jar cfm Somebody.jar MANIFEST.MF *.class

### jar的使用
在jar当前目录下
java -jar Somebody.jar
