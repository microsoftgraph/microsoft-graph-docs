---
title: "aadUserNotificationRecipient resource type"
description:  Represents an Azure Active Directory (Azure AD) user recipient of a notification sent in a Microsoft Teams activity feed.
author: RamjotSingh
localization_priority: Normal
ms.prod: microsoft-teams
doc_type: resourcePageType
---

# aadUserNotificationRecipient resource type

Namespace: microsoft.graph

Represents an Azure Active Directory (Azure AD) user recipient of a notification sent in a Microsoft Teams activity feed.

Inherits from [teamworkNotificationRecipient](teamworknotificationrecipient.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userId|String|Azure AD user identifier. Use the [List users](../api/user-list.md) method to get this ID.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.aadUserNotificationRecipient"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.aadUserNotificationRecipient",
  "userId": "String"
}
```

