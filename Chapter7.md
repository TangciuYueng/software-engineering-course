# Principles That Guide Practice

## software engineering knowledge
软件开发的知识半衰期三年，三年就会过时一半
但是，软件工程原则不会

## core principles

### principles that guide process
- be agile
- focus on quality at every step
- be ready to adapt
- build an effective team
- establish mechanism for communication and coordination
- manage change
- assess risk
- create work products that provide value for others

### priciples that guide practice
- divide and conquer
  - 需求调研开始就要考虑分而治之
  - 例如：每个函数要求高内聚，只做一件事情
- understand the use of abstraction
  - 建模UML也是抽象 
  - 代码都是抽象
- strive for consistency
  - 后一个阶段和前一个有偏差、不一致就出问题了
- focus on the transfer of information
- build software that exhibits effective mudularity
  - 类、微服务、子系统等等都是模块化，粒度不同
- look for pattern
  - 前人行之有效的已经步骤化的
- when possible, represent the problem and its solution from a number of different perspectives
  - 每个人的数据库设计都不同，找出冗余最少的那个
- remember that someone will maintain the software
  - 第一次迭代的时候，需要变更的放到backlog里面，先完成第一次按照之前的，第二次迭代再完成这个变更
  - software由document、coding等等组成

## principles that guide each framework activity
### communication principles
- listen
  - 多听听甲方，看他们有什么需求
- prepare before you communicate
- someone should facilitate the activity
- face-to-face communication is best
- take notes and document decisions
  - 乙方记录，让甲方确认
- strive for collaboration
- stay focused, modularize your discussion
  - 谈话讨论分类，遇到问题把这问题模块化
- if sth is unclear, draw a picture
- once you agree to sth, move on. if you can't agree to sth, move on. if a feature or function is unclear and cannot be clarified at the moment, move on
  - 有个问题搞不清楚，先放下记录下来，先开发其他的，随着项目的开发，会清楚的大概率
- negotiation is not a contest or a game. it works best when both parties win

### planning principles
- understand the scope of the project
  - 需求调研后就有开发的范围
- involve stakeholders in the planning activity
  - 需求范围搞清楚才做计划，甲方也参与计划进来
- recognize that planning is iterative
  - 某一次迭代的过程中，计划不变，但不同迭代中计划也可以迭代改变
- estimate based on what you know
- consider risk as you define the plan
  - 招了个新手过来，我们将计划3人/天增加到3.5人/天
- be realistic
- adjust granularity(粒度) as you define the plan
- define how you intend to ensure quality
  - 通过评审、测试
  - 在一个阶段最后有个小任务在计划中
- describe how you intend to accommodate change
  - 变更在两次迭代之间，在迭代之中不要变，先记录下来
- track the plan frequently and make adjustments as required
  - 每天检查追踪然后调整

每个人都应该参与进计划中

### modeling principles
3 different domains
- 数据建模/信息领域建模，构建一个初步的类图
- 功能建模
- 行为建模

#### modeling principles
- the primary goal of the team is to build software, not create models
  - 建模要简单，是服务软件开发
- travel light - don't create more models than you need
- strive to produce the simplest model that will describe the problem or the software
  - 实际开发围绕use case diagram差不多
- build models in a way that makes them amenable to change
  - 软件工程的工具要让models容易修改迭代
- be able to state an explicit purpose for each model that is created
  - Activity 抽象的是整个use case的功能业务流
  - 泳道图 在 活动图基础上把类提取出来，有类的帮助
- adapt the models you develop to the system at hand
  - 用熟悉的拿手的建模方式
- try to build useful models, but forget about building perfect models
- don't become dogmatic about the syntax of the model. if it communicates content successfully, representation is secondary
  - 不一定要按照UML那些教条的，要灵活，重点在于表达清楚
- if your instincts tell you a model isn't right even though it seems okay on paper, you probably have reason to be concerned
- get feedback as soon as you can

#### requirements modeling principles
- 数据/信息建模
  - 数据的角度，需要定义哪些类
  - 分析类图
- 功能建模
  - 活动图、泳道图
  - 类里面的方法的抽象
  - 整个项目业务流的抽象
- 行为建模
  - 状态图
  - 系统级别
  - 类级别，类方法设计的基础

- the **information domain** of a problem must be represented and understand
- the **functions** that the software performs must be **defined**
- the behavior of the software(as a consequence of external events) must be represented
- the models that depict information, function, and behavior must be **paritioned in a manner that uncovers detail in a layered**(or hierarchical) fashion
- the analysis task should move **from essential information** toward implementation detail

#### design modeling principles
- design should be traceable to the requirements model
  - 设计的时候要以需求分析为依据
  - 设计类图以分析类图为基础
- always consider the architecture of the system to be built**必考**
  - **概要设计**architecture design
  - 包括**体系结构、数据库、接口设计**
  - 体系结构设计太重要了，scrum中提到要关注高层设计，概要设计就是其中重要部分
- design of data is as important as design of processing functions
  - 数据仓库、数据结构(类里面的方法的数据的组织方式等等)的设计
- interface(both internal and external) must be designed with care
  - 类内方法调用
  - 类之间
  - 前后端
- user interface design should be tuned to the needs of the end user. However, in every case, it should stress ease of use
  - 用户界面设计
- component-level design should be functionally independent
  - 到详细设计了
  - 每个类功能单一独立(高内聚)
  - 分析类图转换为设计类图
  - 进一步评审类的属性、方法定义对不对，然后进行方法的实现
- component should be loosely coupled to one another and to the external environment
  - 低耦合、松耦合
  - 两个方法之间的调用参数少、参数简单
- design representations (models) should be easily understandable
- the design should be developed iteratively不断迭代
- creation of a design model does not preclude an agile approach还是建议用敏捷模型

### construction principle
#### coding principles
##### preparation principles
写代码之前的准备
- understand of the problem you're trying to solve
- understand the component-level design
  - 查询成绩(include 本科生成绩查询/硕士生成绩查询/博士生成绩查询)
  - 时序图对一个include/extend的一个用例的功能中的classes如何协作、相互调用的展示
  - 一个用例需要至少两个以上的时序图，正常流需要哪几个类协作(根据用例规约的事件流)、异常流又需要哪几个类协作(异常流可能包括很多个异常流)
- pick a programming language that meets the needs of the software to be built and the environment in which it will operate
- select a programming environment that provides tools that will make your work easier
- create a set of unit tests that will be applied once the component you code is completed

##### coding principles
- constain your algorithm by following structured programming practice
- consider the use of pair programming结对编程
- select data structures that will meet the needs of the design选择合适的数据结构，控制时空复杂度
- understand the software architecture and create interfaces that are consistent with it保持接口一致性
- keep conditional logic as simple as possible少用if-else
- create nested loops in a way that makes them easily testable循环也要少，容易测试
- select meaningful variable names and follow other local coding standards有意义的规范的变量名
- write code that is self-documenting一定要有注释，**要考**
- creat a visual layout(indentation & blank lines) that aids understanding利用空行、缩进代码容易读

##### validation principles
- conduct a code walkthrough when appropriate
- perform unit tests and correct errors you've uncoverd
- refactor the code
  - 重命名
  - 抽取代码
  - 封装字段
  - 抽取接口
  - 提升方法内的局部变量为方法的参数
  - 删除参数
  - 重排参数

规范之后加入类图，方便重用
Junit提供测试工具，项目用起来

### deployment principles
delivery, support, feedback
- Customer expectations for the software must be managed
- A complete delivery package should be assembled and tested 测试和组装
- A support regime must be established before the software is delivered 构建一个团队，可能有反馈，加入新的stories
- Appropriate instructional materials must be provided to end users使用手册
- buggy software should be fixed first, delivered later修复bug了才能交付

## work practices
- interface
- conventions and templates规范和模板
- layering分层
- algorithmic complexity
- hashing哈希表充分利用，非常灵活
- caching
- concurrency并发性
- cloud computing云计算
- relational databases
  - 数据库表和业务类有什么关系