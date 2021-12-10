# 免扩展自定义 UserAgent 启动 Chrome 浏览器

## 推荐方法
```
1.如已启动需先关闭chrome
2.按 win+r 快捷键 直接运行：

chrome --user-agent="pan.baidu.com" http://pan.bai7du.com

```

## 其它方法
1.从win命令行启动
```
chrome.exe --user-agent="pan.baidu.com" http://pan.bai7du.com
```

2.从mac终端启动
```
open -a Google\ Chrome --user-agent="pan.baidu.com" http://pan.bai7du.com
```

3.从win桌面快捷方式启动
```
如果经常使用同一个或多个useragent 可以复制多个chrome快捷方式

右键--属性--目标-- 在chrome.exe后面加一个空格 然后加 --user-agent="pan.baidu.com"
```



![image](https://user-images.githubusercontent.com/26950227/145552226-06f4f75a-462e-4378-b027-1b61407ba9eb.png)
