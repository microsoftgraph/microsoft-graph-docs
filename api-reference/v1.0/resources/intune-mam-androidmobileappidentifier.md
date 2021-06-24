---
title: "androidMobileAppIdentifier resource type"
description: "The identifier for an Android app."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# androidMobileAppIdentifier resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The identifier for an Android app.


Inherits from [mobileAppIdentifier](../resources/intune-mam-mobileappidentifier.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|packageId|String|The identifier for an app, as specified in the play store.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidMobileAppIdentifier"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidMobileAppIdentifier",
  "packageId": "String"
}
```




