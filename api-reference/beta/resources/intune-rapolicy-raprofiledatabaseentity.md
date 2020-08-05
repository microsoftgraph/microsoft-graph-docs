---
title: "raProfileDatabaseEntity resource type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# raProfileDatabaseEntity resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List raProfileDatabaseEntities](../api/intune-rapolicy-raprofiledatabaseentity-list.md)|[raProfileDatabaseEntity](../resources/intune-rapolicy-raprofiledatabaseentity.md) collection|List properties and relationships of the [raProfileDatabaseEntity](../resources/intune-rapolicy-raprofiledatabaseentity.md) objects.|
|[Get raProfileDatabaseEntity](../api/intune-rapolicy-raprofiledatabaseentity-get.md)|[raProfileDatabaseEntity](../resources/intune-rapolicy-raprofiledatabaseentity.md)|Read properties and relationships of the [raProfileDatabaseEntity](../resources/intune-rapolicy-raprofiledatabaseentity.md) object.|
|[Create raProfileDatabaseEntity](../api/intune-rapolicy-raprofiledatabaseentity-create.md)|[raProfileDatabaseEntity](../resources/intune-rapolicy-raprofiledatabaseentity.md)|Create a new [raProfileDatabaseEntity](../resources/intune-rapolicy-raprofiledatabaseentity.md) object.|
|[Delete raProfileDatabaseEntity](../api/intune-rapolicy-raprofiledatabaseentity-delete.md)|None|Deletes a [raProfileDatabaseEntity](../resources/intune-rapolicy-raprofiledatabaseentity.md).|
|[Update raProfileDatabaseEntity](../api/intune-rapolicy-raprofiledatabaseentity-update.md)|[raProfileDatabaseEntity](../resources/intune-rapolicy-raprofiledatabaseentity.md)|Update the properties of a [raProfileDatabaseEntity](../resources/intune-rapolicy-raprofiledatabaseentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|version|Int32|Not yet documented|
|isDeleted|Boolean|Not yet documented|
|softDeletedTime|DateTimeOffset|Not yet documented|
|displayName|String|Not yet documented|
|linkedProfileIds|Guid collection|Not yet documented|
|profileTypeName|String|Not yet documented|
|profileBody|String|Not yet documented|
|profileBodyHash|String|Not yet documented|
|platformType|Int32|Not yet documented|
|transformedProfileBody|String|Not yet documented|
|transformedProfileBodyHash|String|Not yet documented|
|tenantId|Guid|Not yet documented|
|profileId|Guid|Not yet documented|
|eTag|String|Not yet documented|
|schemaVersion|[raPolicyServiceVersions](../resources/intune-rapolicy-rapolicyserviceversions.md)|Not yet documented. Possible values are: `initial`, `betaStart`, `experimentStart`, `mmpcStart`, `iosStart`.|
|lastModified|DateTimeOffset|Not yet documented|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.raProfileDatabaseEntity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.raProfileDatabaseEntity",
  "version": 1024,
  "isDeleted": true,
  "softDeletedTime": "String (timestamp)",
  "displayName": "String",
  "linkedProfileIds": [
    "Guid"
  ],
  "profileTypeName": "String",
  "profileBody": "String",
  "profileBodyHash": "String",
  "platformType": 1024,
  "transformedProfileBody": "String",
  "transformedProfileBodyHash": "String",
  "tenantId": "Guid",
  "profileId": "Guid",
  "eTag": "String",
  "schemaVersion": "String",
  "lastModified": "String (timestamp)"
}
```



