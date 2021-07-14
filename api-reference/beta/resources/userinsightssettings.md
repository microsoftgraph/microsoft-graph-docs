---
title: "userInsightsSettings resource type"
description: "Represents user privacy settings for item insights and meeting hours insights."
localization_priority: Normal
author: "simonhult"
ms.prod: "insights"
doc_type: resourcePageType
---

# userInsightsSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents user privacy settings for [itemInsights](iteminsights.md) and [meeting hours insights](https://support.microsoft.com/en-us/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1)
. Use this resource to disable/enable calculation and visibility of item insights and meeting hours insights of a user. 

- Item insights: Calculates relationship between users and items such as documents or sites in Microsoft 365.  
- Meeting hours insights: Calculates a person's calendar meeting hours based on activities in Word, Excel, PowerPoint, email, and Outlook calendar in Microsoft 365.

Use the [itemInsightsSettings](iteminsightssettings.md) resource to disable/enable calculation and visibility of item insights and meeting hours insights at an organization level.

## Methods

| Method                                                 | Return Type                                                   | Description                                                                                        |
|:-------------------------------------------------------|:--------------------------------------------------------------|:---------------------------------------------------------------------------------------------------|
| [Get](../api/userinsightssettings-get.md)       | [userInsightsSettings](userinsightssettings.md) | Read the properties of a **userinsightssettings** object.  |
| [Update](../api/userinsightssettings-update.md) | [userInsightsSettings](userinsightssettings.md) | Update the properties of a **userinsightssettings** object. |

## Properties
| Property                   | Type                                                  | Description                                                                                                                                                         |
|----------------------------|-------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| isEnabled     | Boolean  |  `true` if user's **itemInsights** and meeting hours insights are enabled; `false` if user's **itemInsights** and meeting hours insights are disabled. Default is `true`. Optional.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.userInsightsSettings"
}-->

```json
{
  "isEnabled": "Boolean"
}
```


