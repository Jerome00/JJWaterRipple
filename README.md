# 简介
JJWaterRipple是一个简单的水波效果的工具 

*时间仓促，效果图以后补上。*

# 原理简介
JJWaterRipple的原理很简单，可以配合项目理解   
1.准备两张图片  
2.将两张图片放在重叠的位置  
3.将其中一张图片加上波浪线的遮盖层  
4.通过动态改变遮盖层的形状，形成一种波浪的效果  
5.您只需要在JJWaterRipple的回调方法中设置遮盖层即可

# 安装

### *直接安装*

直接拽入 `JJWaterRipple.h` 和 `JJWaterRipple.m` 文件

### *Pod*
	pod 'JJWaterRipple'

if you want to user the latest features ,use normal external source dependencies.

	pod 'JJWaterRipple', :git => 'https://github.com/Jerome00/JJWaterRipple.git'

install *JJWaterRipple* into your project:

	pod install