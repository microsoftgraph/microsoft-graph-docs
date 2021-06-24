---
title: "windowsQualityUpdateProfile resource type"
description: "Windows Quality Update Profile"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsQualityUpdateProfile resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Quality Update Profile

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsQualityUpdateProfiles](../api/intune-softwareupdate-windowsqualityupdateprofile-list.md)|[windowsQualityUpdateProfile](../resources/intune-softwareupdate-windowsqualityupdateprofile.md) collection|List properties and relationships of the [windowsQualityUpdateProfile](../resources/intune-softwareupdate-windowsqualityupdateprofile.md) objects.|
|[Get windowsQualityUpdateProfile](../api/intune-softwareupdate-windowsqualityupdateprofile-get.md)|[windowsQualityUpdateProfile](../resources/intune-softwareupdate-windowsqualityupdateprofile.md)|Read properties and relationships of the [windowsQualityUpdateProfile](../resources/intune-softwareupdate-windowsqualityupdateprofile.md) object.|
|[Create windowsQualityUpdateProfile](../api/intune-softwareupdate-windowsqualityupdateprofile-create.md)|[windowsQualityUpdateProfile](../resources/intune-softwareupdate-windowsqualityupdateprofile.md)|Create a new [windowsQualityUpdateProfile](../resources/intune-softwareupdate-windowsqualityupdateprofile.md) object.|
|[Delete windowsQualityUpdateProfile](../api/intune-softwareupdate-windowsqualityupdateprofile-delete.md)|None|Deletes a [windowsQualityUpdateProfile](../resources/intune-softwareupdate-windowsqualityupdateprofile.md).|
|[Update windowsQualityUpdateProfile](../api/intune-softwareupdate-windowsqualityupdateprofile-update.md)|[windowsQualityUpdateProfile](../resources/intune-softwareupdate-windowsqualityupdateprofile.md)|Update the properties of a [windowsQualityUpdateProfile](../resources/intune-softwareupdate-windowsqualityupdateprofile.md) object.|
|[assign action](../api/intune-softwareupdate-windowsqualityupdateprofile-assign.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The Intune policy id.|
|displayName|String|The display name for the profile.|
|description|String|The description of the profile which is specified by the user.|
|expeditedUpdateSettings|[expeditedWindowsQualityUpdateSettings](../resources/intune-softwareupdate-expeditedwindowsqualityupdatesettings.md)|Expedited update settings.|
|createdDateTime|DateTimeOffset|The date time that the profile was created.|
|lastModifiedDateTime|DateTimeOffset|The date time that the profile was last modified.|
|roleScopeTagIds|String collection|List of Scope Tags for this Quality Update entity.|
|releaseDateDisplayName|String|Friendly release date to display for a Quality Update release|
|deployableContentDisplayName|String|Friendly display name of the quality update profile deployable content|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[windowsQualityUpdateProfileAssignment](../resources/intune-softwareupdate-windowsqualityupdateprofileassignment.md) collection|The list of group assignments of the profile.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsQualityUpdateProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "expeditedUpdateSettings": {
    "@odata.type": "microsoft.graph.expeditedWindowsQualityUpdateSettings",
    "qualityUpdateRelease": "String",
    "daysUntilForcedReboot": 1024
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "releaseDateDisplayName": "String",
  "deployableContentDisplayName": "String"
}
```




