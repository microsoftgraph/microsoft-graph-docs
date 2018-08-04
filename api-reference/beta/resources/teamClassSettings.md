# teamClassSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Settings to configure class-type [teams](team.md). 
Note: Class settings are open data type. It is expected for this property to be absent for teams that are not of type class. Also, this property will be absent if the team admin of a class team has not interacted with the new setting.

## teamClassSettings Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|notifyGuardiansAboutAssignments|Boolean|If set to true, teachers in classes have enabled notifications for assignemnts to guardians of students in that class.|

## JSON representation

The following is a JSON representation of the resource.

```json
{
  "notifyGuardiansAboutAssignments": true
}
```
