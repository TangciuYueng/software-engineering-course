[TOC]
# Component-level design
详细设计 两个主要任务

共用的访问数据库的类多重要、边界类、控制类这些辅助

- 完整的方法和属性的基础上，完善和定义协作的方法，告诉别人怎么调用和我要怎么调用别人，(不但内部，还要告诉别人)，不仅仅是自己，要考虑协作关系的
  - 定义就是**定义参数**

- 每个类都要构建对应的 activity diagrams，*每个方法都要*

![](./ref/traditionalComponentDesign.PNG)
传统的，针对函数

## steps
1. identify all design classes that correspond to the problem domain关注业务类的功能
2. identify all design classes that correspond to the infrastructure domain关注GUI、系统的信息、TCP等等这些 utils
3. elaborate all design classes that are not acquired as reusable components这里不考虑 refactor
   1. 这个类和哪几个类有协作
   2. 类内方法接口调用
   3. 定义的数据类型和返回结果
   4. 每个方法活动图或者伪代码
4. Describe persistent data sources (databases and files) and identify the classes required to manage them

![](./ref/methodActivityDiagram.PNG)

5. Develop and elaborate behavioral representations for a class or component状态图和时序图进一步细化确认，看有没有遗漏

6.对每个类的代码进行重构**要考**refactor，可读性、复用性、合理性、前面有一个ppt