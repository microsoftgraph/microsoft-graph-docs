---
title: "securityBaselineContributingPolicy resource type"
description: "The security baseline compliance state of a setting for a device"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# securityBaselineContributingPolicy resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The security baseline compliance state of a setting for a device

## Properties
|Property|Type|Description|
|:---|:---|:---|
|sourceId|String|Unique identifier of the policy|
|displayName|String|Name of the policy|
|sourceType|[securityBaselinePolicySourceType](../resources/intune-deviceintent-securitybaselinepolicysourcetype.md)|Authoring source of the policy. Possible values are: `deviceConfiguration`, `deviceIntent`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.securityBaselineContributingPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityBaselineContributingPolicy",
  "sourceId": "String",
  "displayName": "String",
  "sourceType": "String"
}
```




