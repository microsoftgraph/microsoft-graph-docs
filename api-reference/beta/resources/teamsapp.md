# teamsApp resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

An application installed in a [team](team.md). 
Any bots that are part of the app will become part of any team the app is added to.

To find the app ID of an app you want to install, 
use the [Microsoft Teams client UI](http://teams.microsoft.com) to add that app to a test team, 
then use [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) to [List apps](../api/teams_apps_list.md) in that test team.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List apps](../api/teams_apps_list.md) | [teamsApp](teamsapp.md) | Lists apps installed in a team.|
|[Add app](../api/teams_apps_add.md) | [teamsApp](teamsapp.md) | Adds (installs) an app to a team.|
|[Remove app](../api/teams_apps_delete.md) | [teamsApp](teamsapp.md) | Removes (uninstalls) an app from a team.|


## Properties

|Name          |Type           |Description                                                                                                                                      |
|--------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
|id			|string      |App id.|
|name			|string      |Name of the app.|
|version		|string      |Version of the app.|
|isBlocked		|bool        |An indication whether the app is blocked by tenant. Note: this property is deprecated and will be removed in the future. It is currently always false. |
|installedState |[teamsAppInstalledState](../resources/teamsappinstalledstate.md)   |App's install state. Note: this property is deprecated and will be removed in the future. It is currently always "installed".|
|context		|[teamsAppContext](../resources/teamsappcontext.md)  |Where the app came from. Note: this property will soon be replaced by a property named "distributionMethod" with values "store", "organization", and "sideloaded" |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.team"
}-->

```json
{  
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
