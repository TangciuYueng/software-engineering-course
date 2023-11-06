# Tasks 
- Use Case Diagram

- Requirement Analysis

- 总体Data Modeling in Sub-system

# Ranging
- 田地编辑
- 田地高级搜索
- 田地切换(2种方式)
- 天气管理
- 开始种植
- 终止种植
- 种植历史
- 添加事项
  - 常规
  - 智能方案
  - ..
- 事项解决中
- 解决中事项 -> 已完成
- 添加收获
- 收藏历史


# Use Case Diagram for 田地管理
```plantuml
@startuml
left to right direction

actor 科技部员工 as T

rectangle 田地管理系统 as System {
  usecase "搜索田地" as SearchField
  usecase "查看田地信息" as CheckFieldInfo
  usecase "修改田地信息" as ModifyFieldInfo
  usecase "查看天气统计信息" as CheckWeatherStatisticsInfo
  usecase "查看农业事项" as CheckAlgricultureTodo
  usecase "添加农业事项" as AddAlgricultureTodo
  usecase "查看当前种植信息" as CheckCurrentPlantingInfo
  usecase "查看历史种植信息" as CheckHistoryPlantingInfo
  usecase "查看收获信息" as CheckHarvestInfo
  usecase "切换田地" as SwitchField
  usecase "添加种植活动" as AddPlantingActivity
  usecase "处理农业事项" as DealAlgricultureTodo
  usecase "添加收获信息" as AddHarvestInfo
  usecase "完成收获" as FinishHarvest

  T --> SearchField
  SearchField ..> CheckFieldInfo: <<include>>
  SearchField ..> SwitchField: <<include>>
  T --> CheckFieldInfo

  CheckFieldInfo <.. ModifyFieldInfo: <<extend>>
  CheckFieldInfo <.. SwitchField: <<extend>>


  T --> CheckWeatherStatisticsInfo

  T --> CheckCurrentPlantingInfo

  CheckCurrentPlantingInfo <.. CheckHistoryPlantingInfo: <<extend>>

  T --> CheckHarvestInfo

  T --> AddPlantingActivity
  AddPlantingActivity ..> CheckAlgricultureTodo: <<include>>
  AddPlantingActivity ..> AddAlgricultureTodo: <<include>>
  AddPlantingActivity ..> DealAlgricultureTodo: <<include>>
  AddPlantingActivity ..> AddHarvestInfo: <<include>>
  AddPlantingActivity ..> FinishHarvest: <<include>>

}
@enduml
```