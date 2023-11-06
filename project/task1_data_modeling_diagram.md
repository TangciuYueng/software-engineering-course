Get_Free_Consumables(int issue_id)??
create_planting_and_issue(int field_id, int crop_id, string dateString, int technologist_id)??
solve_issue_by_equipment(int issue_id, int? equipment_id, int? consumables_id, string dateString, int technologist_id)??
```plantuml
@startuml
class Field {
    - Field_Id
    - Status
    - Name
    - Farm_Id
    - Soil_Type
    - Ph_Level
    - Vertex1_Latitude
    - Vertex1_Longitude
    - Vertex2_Latitude
    - Vertex2_Longitude
    - Vertex3_Latitude
    - Vertex3_Longitude
    - Vertex4_Latitude
    - Vertex4_Longitude
    - Photo
}
class Farm {
    - Farm_Id 
    - Name
    - Location
}
class Harvest {
    - Harvest_Id
    - Harvest_Date
    - Technologist_Id
    - Planting_Id
}
class Harvest_Info {
    - Harvest_Info_Id
    - Quality
    - Weight
    - Harvest_Id
}
class Crop {
    - Crop_Id
    - Name
    - Crop_Type
    - Soil_Type
    - High_Ph
    - Low_Ph
}
class Issue {
    - Issue_Id
    - Type
    - Start_Date
    - End_Date
    - Planting_Id
    - Detail
    - Technologist_Id
    - Address_Date
}
class Activity {
    - Activity_Id
    - Issue_Id
    - Equipment_Id
    - Consumables_Id
    - Detail
    - Amount
    - Technologist_Id
}
class Weather {
    - Farm_Id
    - Record_Date
    - High_Temp
    - Low_Temp
    - Precipitation
    - Humidity
    - Wind
    - Weather_Info
}
class Planting {
    - Planting_Id
    - Field_Id
    - Crop_Id
    - Start_Date
    - End_Date
    - Technologist_Id
}
class Technologist {
    - Technologist_Id
    - Name
    - Password
}
class Equipment {
- Equipment_Id
- Name
- Type
- Farm_Id
}
Farm "1" --o "0..*" Field
Farm "1" --o "0..*" Weather
Farm "1" --o "0..*" Planting
Farm --- Equipment

Planting "1" --o "0..*" Issue
Planting "1" --o "0..*" Crop
Planting "1" --o "0..*" Harvest

Harvest "1" --o "0..*" Harvest_Info

Issue "1" --o "0..*" Activity

' Technologist "1" --o "0..*" Planting
' Technologist "1" --o "0..*" Activity
' Technologist "1" --o "0..*" Issue
' Technologist "1" --o "0..*" Harvest

Technologist --- Planting
Technologist --- Activity
Technologist --- Issue
Technologist --- Harvest

Activity --- Equipment

class FieldManager {
    - fieldList: List<Field>

    + get_filter_fields(getFilterFieldsRequest: GetFilterFieldsRequest)
    + get_farmFields(fieldId: int)
}

class CropManager {
    - cropList: List<Crop>

    + find_appropriate_crop(fieldId: int)
    + get_crop(fieldId: int)
    + create_new_crop_and_get_id(crop: Crop)
}

class IssueManager {
    - issueList: List<Issue>

    + get_issues_by_fieldId(fieldId: int)
    + create_issue(issue: Issue)
}

class ActivityManager {
    - acivityList: List<Activity>

    + get_activities_by_activityId(activityId: int)
}
class EquipmentManager {
    - equipmentList: List<Equipment>

    + get_free_equipment(issueId: int)
}


FieldManager "1" --o "*" Field
CropManager "1" --o "*" Crop
IssueManager "1" --o "*" Issue
ActivityManager "1" --o "*" Activity
EquipmentManager "1" --o "*" Equipment

@enduml
```