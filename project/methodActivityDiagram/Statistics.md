```plantuml
@startuml

start
: 获取;
if (获取收获统计ID列表成功?) then (yes)
    :调用另一个微服务方法获取农场ID、作物ID等信息;
        :调用私有方法getHarvestStatistics;
        :返回收获统计信息;
      else (no)
        :处理获取收获统计信息失败的情况;
        :抛出异常;
      endif
    else (no)
      :处理获取农场ID和作物ID失败的情况;
      :抛出异常;
    endif
  else (no)
    :处理获取质量和重量列表失败的情况;
    :抛出异常;
  endif
else (no)
  :处理获取收获统计ID列表失败的情况;
  :抛出异常;
endif

stop

@enduml

```