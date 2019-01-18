---
title: "insightIdentity"
description: "Complex type containing properties of Shared items."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
---

# insightIdentity

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Complex type containing properties of [Shared](insights-shared.md) items. 

## JSON representation
Here is a JSON representation of the resource

```json
{
  "displayName": "string",
  "id": "string",
  "address": "string"
}
```

## Properties

| Property              | Type          | Description  |
| -------------         |-----------    | -------------|
| displayName      	| String	      | The display name of the user who shared the item. |
| id     		  | String        | The id of the user who shared the item.     |
| address      	      | String	    | The email address of the user who shared the item.  |
