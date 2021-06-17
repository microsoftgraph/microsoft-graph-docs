---
title: "cloudPcUserSetting resource type"
description: "Represent a cloud Pc user setting"
author: "AshleyYangSZ"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcUserSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cloud PC user setting.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcUserSettings](../api/virtualendpoint-list-usersettings.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md) collection|Get a list of the [cloudPcUserSetting](../resources/cloudpcusersetting.md) objects and their properties.|
|[Get cloudPcUserSetting](../api/cloudpcusersetting-get.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|Read the properties and relationships of a [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|
|[Create cloudPcUserSetting](../api/virtualendpoint-post-usersettings.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|Create a new [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|
|[Update cloudPcUserSetting](../api/cloudpcusersetting-update.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|Update the properties of a [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|
|[Delete cloudPcUserSetting](../api/cloudpcusersetting-delete.md)|None|Deletes a [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|
|[assign](../api/cloudpcusersetting-assign.md)|None|Assign a [cloudPcUserSetting](../resources/cloudpcusersetting.md) to user groups.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the cloud PC user setting. Read-only.|
|displayName|String|The setting name displayed in the user interface. |
|localAdminEnabled|Boolean|Indicates whether the local admin option is enabled. Default value is `false`. To enable the local admin option, change the setting to `true`. |
|selfServiceEnabled|Boolean|Indicates whether the self-service option is enabled. Default value is `false`. To enable the self-service option, change the setting to `true`. |
|lastModifiedDateTime|DateTimeOffset|The last date and time the setting was modified. The Timestamp type represents the date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 looks like this: '2014-01-01T00:00:00Z'. |
|createdDateTime|DateTimeOffset|The date and time the setting was created. The Timestamp type represents the date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 looks like this: '2014-01-01T00:00:00Z'. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[cloudPcUserSettingAssignment](../resources/cloudpcusersettingassignment.md) collection|Office 365 and security groups in Azure AD can have a set of user settings assigned.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcUserSetting",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcUserSetting",
  "id": "String (identifier)",
  "displayName": "String",
  "selfServiceEnabled": "Boolean",
  "localAdminEnabled": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)"
}
```
