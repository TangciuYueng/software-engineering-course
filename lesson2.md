# defining software
## 笼统的
- 产品
- 信息传递、转换的工具，这里提醒我们要有安全意识，不要信息泄露
- 经济发展的dominant factor

## 很多为什么
### Why long time to finish
- 需求调研没清除，开发过程中不断迭代
- 分析建模等stages不规范，过程控制不行
- 基础不行，没培训

### Why costs high
### Why 不能交付前找出所有errors
- 业务逻辑/流/路径 是无穷的
- 需求调用功能没实现，不符合需求
  - 例如要两位小数，结果只实现了一位小数
  - 整个过程中遇到的各种问题都是errors，其中一些errors导致failure，这些errors成为defect缺陷
### Why so much time & effort for maintenance
- Alops
- 模块各种各样接口，改一个动很多
### Why measuring progress 难
- 我们利用甘特图解决

## definition
1. 指令/代码/程序 满足
   1. features特性、非功能性需求，可移植性、可拓展性等
   2. function
   3. performance性能，其实也属于非功能性需求
2. data structure 数据 处理信息流
   1. static data
   2. dynamic data
3. 各种各样的文档 规约、使用手册...
