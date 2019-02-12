---
title: "iosMobileAppIdentifier resource type"
description: "The identifier for an iOS app."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# iosMobileAppIdentifier resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The identifier for an iOS app.

Inherits from [mobileAppIdentifier](../resources/intune-mam-mobileappidentifier.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bundleId|String|The identifier for an app, as specified in the app store.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosMobileAppIdentifier"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosMobileAppIdentifier",
  "bundleId": "String"
}
```



