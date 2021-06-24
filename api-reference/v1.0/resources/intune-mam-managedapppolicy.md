---
title: "managedAppPolicy resource type"
description: "The ManagedAppPolicy resource represents a base type for platform specific policies."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# managedAppPolicy resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The ManagedAppPolicy resource represents a base type for platform specific policies.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedAppPolicies](../api/intune-mam-managedapppolicy-list.md)|[managedAppPolicy](../resources/intune-mam-managedapppolicy.md) collection|List properties and relationships of the [managedAppPolicy](../resources/intune-mam-managedapppolicy.md) objects.|
|[Get managedAppPolicy](../api/intune-mam-managedapppolicy-get.md)|[managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|Read properties and relationships of the [managedAppPolicy](../resources/intune-mam-managedapppolicy.md) object.|
|[targetApps action](../api/intune-mam-managedapppolicy-targetapps.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Policy display name.|
|description|String|The policy's description.|
|createdDateTime|DateTimeOffset|The date and time the policy was created.|
|lastModifiedDateTime|DateTimeOffset|Last time the policy was modified.|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAppPolicy",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "version": "String"
}
```




