---
title: "targetedManagedAppConfiguration resource type"
description: "Configuration used to deliver a set of custom settings as-is to all users in the targeted security group"
author: "rolyon"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# targetedManagedAppConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Configuration used to deliver a set of custom settings as-is to all users in the targeted security group


Inherits from [managedAppConfiguration](../resources/intune-mam-managedappconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List targetedManagedAppConfigurations](../api/intune-shared-targetedmanagedappconfiguration-list.md)|[targetedManagedAppConfiguration](../resources/intune-shared-targetedmanagedappconfiguration.md) collection|List properties and relationships of the [targetedManagedAppConfiguration](../resources/intune-shared-targetedmanagedappconfiguration.md) objects.|
|[Get targetedManagedAppConfiguration](../api/intune-shared-targetedmanagedappconfiguration-get.md)|[targetedManagedAppConfiguration](../resources/intune-shared-targetedmanagedappconfiguration.md)|Read properties and relationships of the [targetedManagedAppConfiguration](../resources/intune-shared-targetedmanagedappconfiguration.md) object.|
|[Create targetedManagedAppConfiguration](../api/intune-shared-targetedmanagedappconfiguration-create.md)|[targetedManagedAppConfiguration](../resources/intune-shared-targetedmanagedappconfiguration.md)|Create a new [targetedManagedAppConfiguration](../resources/intune-shared-targetedmanagedappconfiguration.md) object.|
|[Delete targetedManagedAppConfiguration](../api/intune-shared-targetedmanagedappconfiguration-delete.md)|None|Deletes a [targetedManagedAppConfiguration](../resources/intune-shared-targetedmanagedappconfiguration.md).|
|[Update targetedManagedAppConfiguration](../api/intune-shared-targetedmanagedappconfiguration-update.md)|[targetedManagedAppConfiguration](../resources/intune-shared-targetedmanagedappconfiguration.md)|Update the properties of a [targetedManagedAppConfiguration](../resources/intune-shared-targetedmanagedappconfiguration.md) object.|
|**Mobile app management (MAM)**|
|[assign action](../api/intune-shared-targetedmanagedappconfiguration-assign.md)|None|Not yet documented|
|[targetApps action](../api/intune-shared-targetedmanagedappconfiguration-targetapps.md)|None|Not yet documented|
|**Policy Set**|
|[hasPayloadLinks action](../api/intune-shared-targetedmanagedappconfiguration-haspayloadlinks.md)|[hasPayloadLinkResultItem](../resources/intune-policyset-haspayloadlinkresultitem.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|createdDateTime|DateTimeOffset|The date and time the policy was created. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|lastModifiedDateTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|customSettings|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|A set of string key and string value pairs to be sent to apps for users to whom the configuration is scoped, unalterned by this service Inherited from [managedAppConfiguration](../resources/intune-mam-managedappconfiguration.md)|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed.|
|isAssigned|Boolean|Indicates if the policy is deployed to any inclusion groups or not.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|**Mobile app management (MAM)**|
|apps|[managedMobileApp](../resources/intune-mam-managedmobileapp.md) collection|List of apps to which the policy is deployed.|
|deploymentSummary|[managedAppPolicyDeploymentSummary](../resources/intune-mam-managedapppolicydeploymentsummary.md)|Navigation property to deployment summary of the configuration.|
|assignments|[targetedManagedAppPolicyAssignment](../resources/intune-mam-targetedmanagedapppolicyassignment.md) collection|Navigation property to list of inclusion and exclusion groups to which the policy is deployed.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.targetedManagedAppConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.targetedManagedAppConfiguration",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "id": "String (identifier)",
  "version": "String",
  "customSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ],
  "deployedAppCount": 1024,
  "isAssigned": true
}
```




