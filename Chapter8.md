[TOC]
# requirements engineering
包括两个方面
- 需求诱导得到的需求规约
- 需求分析得到的需求分析规约

7个任务是并行的

## Establish the groupwork
Inception启动阶段
- 辨识所有参加需求调研的人员
- 如何通过协作将需求导出
- 要解决什么样的问题
- 提出什么样的解决方案

- Identifying Stakeholders
- Recognizing Multiple Viewpoints
- Working toward Collaboration
- Asking the First Questions
- Nonfunctional Requirements
  - NFR(nonfunctional requirement): quality/performance/security... attribute 另外列在需求文档里面的

## Elicitation
- 明确范围
- 理解功能和可变性

需求调研怎么做
- 甲方给我们**一两页纸**的简单描述的需求
  - 每个人开会前对这样的需求，列出所有的**objects**(名词和名词词组，就有可能是我们的业务类)，进行拓展
  - 列出**功能 services/functions**，简单描述
  - 列出系统可能的**约束和限制**，比如教务管理系统已经毕业的不能访问、用到的硬件的成本限制...
  - 列出一些非功能需求，性能、安全...

    这就是甲方给的
    > 根据我们的研究，家庭管理系统市场每年增长40％。我们首先推出市场的SafeHome功能应该是家庭安全功能。大多数人熟悉"报警系统"，所以这将是一个容易销售的产品。家庭安全功能可以保护家庭免受非法入侵、火灾、水灾、一氧化碳等各种不良"情况"的侵害或发现。它将使用我们的无线传感器来检测每种情况，并可以由居住者进行编程。当检测到情况时，它将自动向监控机构拨打电话。
    简而言之，家庭安全功能为用户提供了一种便捷的方式来保护家庭安全，包括防止非法入侵、火灾、水灾、一氧化碳泄漏等情况，并可以通过无线传感器进行监测和编程，并在检测到情况时自动联系监控机构。🏡🔒🚨

    需要调研的
    - 非法入侵：从窗户进来、从门进来
    - 火灾：传感器检测煤气浓度阈值、传感器检测天然气
    - 水灾：自来水龙头破了，安装在离地面多高的距离
    - ...
    开始分析 
    - 对象分析类，找名词：包括传感器、home owner、alarming(报警事件、事件...)、电话号码(作为其他分析类的属性)、system(用户个数)...
    - 阈值，达到多少阈值需要报警
    - 用户功能，有老人、保姆...
    - 报警、打电话顺序，怎么报警、往哪里报警。例如：要有一个control panel，喇叭alarming，通知owner。如果owner(或其他授权人员)来处理了，就结束；如果没有就要110等相关机构的功能，如果占线了还要不断重播的功能；如果都是火灾生成报表统计分析的功能

- 拓展到四五页，提前发过来然后开会
- 构建use case

## Elaboration
细化，进行建模
developing a refined requirements model(Chapter 9-11, function/behavior/information)

driven by the creation and refinement of user scenarios that describe how the end user will interact the system 然后用户场景提取出分析类

还是上面那个例子，通过找出来的名词
- actor
  - 最高权限用户
  - 正常用户
  - 保姆用户
  - 亲戚用户
- 功能
  - 配置功能
  - 报警处理
  - 统计分析
  - 监控管理
  - ...
- 继承
  - 用户
  - 各种传感器

开始分析
- use case diagram(需求规约)

- requirement analysis功能逻辑、三个建模(需求分析规约)
  - 活动图: 一个用例的逻辑功能抽象，根据用例规约的基本流、异常流
  - **分析**类图: 根据找到的名词、名词词组构建一对多、多对多这些**关联关系、聚合关系、继承关系**...
  - 状态图: 事件驱动的
    - 系统级别的，主程序软件体系架构设计的依据
    - 类级别的，和面向对象设计有关。把每个分析类图里面的**分析类的状态图**，根据类的需求来画。例如：成绩管理的状态：初始化->增加成绩(也可以不断增加)->查询看一下->删除成绩->查询看一下(也可以继续增加)->然后发布。根据状态图初步定义分析类的方法(现有状态图才有分析类的方法)。**如果某个分析类的属性功能很少，就和功能相近的合并**

## Negotiation
评审(umbrella framework)

- 分布式调试**发现错误并确定其原因**
- 运行时验证确定软件是否**符合其规范**
- 运行时验证评估演化的软件是否**满足用户目标**
- 业务活动监控评估系统是否**满足业务目标**
- 演进和协同设计在系统演化时向**利益相关方提供信息**

## Specification
规约
文档、建模、使用场景等等或者它们的组合

## Validation
评审
检查上面的 specification 不模糊、没错误、没缺漏...

**the primary requirements validation mechanism is the technical review**

## Requirements management
a set of activities that **help the project team identify, control and track requirements and changes to requirements** at any time as the project proceeds.

**software configuration management(SCM) techniques** 

进行版本控制和管理