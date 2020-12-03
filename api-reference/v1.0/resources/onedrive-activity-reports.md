---
title: "OneDrive activity reports"
description: "Use the OneDrive activity reports to get the activity of every user licensed to use OneDrive by looking at their interaction with files on OneDrive. These reports can help you to understand the level of collaboration going on by showing the number of files shared."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: conceptualPageType
---

# OneDrive activity reports

Namespace: microsoft.graph

Use the OneDrive activity reports to get the activity of every user licensed to use OneDrive by looking at their interaction with files on OneDrive. These reports can help you to understand the level of collaboration going on by showing the number of files shared.

> **Note:** For details about different report views and names, see [Microsoft 365 reports - OneDrive for Business activity](https://support.office.com/client/OneDrive-for-Business-user-activity-8bbe4bf8-221b-46d6-99a5-2fb3c8ef9353).

## Reports

| Function                                 | Return Type | Description                              |
| :--------------------------------------- | :---------- | :--------------------------------------- |
| [Get user detail](../api/reportroot-getonedriveactivityuserdetail.md) | Stream      | Get details about OneDrive activity by user. |
| [Get user counts](../api/reportroot-getonedriveactivityusercounts.md) | Stream      | Get the trend in the number of active OneDrive users. |
| [Get file counts](../api/reportroot-getonedriveactivityfilecounts.md) | Stream      | Get the number of unique, licensed users that performed file interactions against any OneDrive account. |


