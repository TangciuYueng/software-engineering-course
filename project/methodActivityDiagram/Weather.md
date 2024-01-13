```plantuml
@startuml

start
:获取当前时间;
:根据mode计算起始时间startDate;
:调用weatherMapper的getWeather方法获取天气信息列表;
:返回天气信息列表;

stop

@enduml

```