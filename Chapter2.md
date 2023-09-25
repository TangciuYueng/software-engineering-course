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

例如
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
### Process Framework
过程框架的两种活动
- development dimension上面的就是framework activity，开发的活动，开发维
- quality dimension，umbrella activity，质量维，庇护性活动

generic process framwork
- Communication
- Planning(umbrella activities)
- Modeling
- Construction
- Deployment