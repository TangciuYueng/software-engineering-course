[TOC]
# Chapter2 Software Engineering
## DEFINING
- The application of a systematic, disciplined, quantifiable, approach to the development operation, and maintenance of software
  - **systematic**: 软件开发的**过程化**，过程里面要**系统化**
  - **disciplined**: 开发过程中要遵守的一系列规则的**约束**，用什么test，用什么配置管理...
  - **quantifiable**
    - **Software Review**(评审) is systematic inspection of a software by one or more individuals who work together to **find and resolve errors and defects** in the software during the **early stages** of Software Development Life Cycle (SDLC). 
    - 对软件开发过程中的各种衡量依据，定量化分析判断开发过程的好坏，然后进一步改进。例如每页的缺陷率不超过XX%
    - 非常非常重要
- the **study of approaches** as in above

把软件工程**抽象为不同的layers**，layered technology
![](./ref/layeredSE.png)
- 底部，**核心目的: 提高质量**，quality focus
- Process，过程化
- Methods，过程中会使用各种各样的方法，例如UML
- Tools，GIT、IDE、Maven...
  - 发展趋势 -> 工具集成Tool integration
  - Software engineering tools provide automated or semi-automated support for the process and the methods.When tools are integrated so that information created by one tool can be used by another, a system for the support of software development, called **computer-aided software engineering(CASE)**, is established.
  - 开发的过程中用到的所有工具统称为CASE

## THE SOFTWARE ENGINEERING
activities/stages, actions & tasks的集合

系统化的包含关系
- activity1/stage1
  - action1
  - action2
    - task1
    - task2
    - task3
    - ...
  - action3
  - ...

**例如**
- activity: code
  - action1: check detailed design
    - task1: 检查详细的设计规约完整性
    - task2: 检查详细设计规约是否依据概要设计来的
    - task3: 检查每个类设计的流程图
  - action2: interface definition(接口定义)
  - action3: code action
  - action4: code review action
    - task1: 准备工作，人员有谁，谁负责
    - task2: 预评审阶段，发代码给别人先看
    - task3: 举行评审会
    - task4：修改代码

每一次迭代都是一个过程，故有迭代开发DevOps
## Process Framework
过程框架的两种活动
- development dimension上面的就是framework activity，开发的活动，开发维
- quality dimension，umbrella activity, management activity，质量维，庇护性活动，管理维

generic process framwork
- Communication
- Planning(umbrella activities)
- Modeling
- Construction
- Deployment

## Umbrella Activities
通过**管理**进而提高软件开发过程中的*工作产品*质量

软件质量就是在开发过程中形成的

工作产品
- 各种规约
- 代码
- ...

**典型的management activities**
- 项目管理
  - planning
  - tracking
  - control
- risk management风险管理
  - identify识别风险
    - **方法**
      - 根据以往经验experience
      - 头脑风暴brainstorming
      - 专家库repository
    - risk exposure = probability(0-1) * lse(0-10)，从而总结出top5/top10
  - risk mitigation/avoiding plan缓解/规避风险
  - 跟踪风险
    - 每个activity做完都去持续更新top5/top10，总结原因
- SQA(software quality assurance)
  - 还是个职位
  - 在*进行中*检查别人的工作产品是否符合要求
    - 代码符合规约？
    - 规约表述模糊？
- technical review
  - 工作产品做完后进行
  - 比较正式
- measurement
  - 通过测量，得到定量化的指标，从而保证SE中定义中的quantifiable
  - measure测量得到原始数据：全校学生身高
  - metric度量得到处理后的数据：平均数、方差...
- software configuration management
  - 配置项configuration item，最小的独立单元
  - check in/out 程序
    - 版本管理
    - 版本分支
    - 项目发布
      - 打tag，把多个项目特定版本关联起来
- reusability management
  - 主打一个可复用
  - 例子
    - 类库
    - 分支开发
      - 直辖市版本
      - 省版本

## Process Adaptaion
在实际开发中，之间的process的提出只是general的，要根据实际情况进行**调整**
这段文本主要讨论了评估软件开发过程框架的几个方面，包括：

1. 行动和任务在框架活动中的定义程度；
2. 工作产品的识别和要求程度；
3. 质量保证活动的应用方式；
4. 项目跟踪和控制活动的应用方式；
5. 描述过程的详细程度和严谨程度；
6. 客户和其他利益相关者参与项目的程度；
7. 软件团队获得的自主权程度；
8. 团队组织和角色的规定程度。

## software engineering practice