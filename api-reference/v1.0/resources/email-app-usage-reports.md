---
title: "Email app usage reports"
description: "Use the email app usage reports to see how many email apps are used to connect to Exchange Online. You can also see which versions of Outlook apps are used which will enable you to follow up with users who should upgrade to supported Outlook versions."
localization_priority: Normal
author: "pranoychaudhuri"
ms.prod: "reports"
doc_type: conceptualPageType
---

# Email app usage reports

Namespace: microsoft.graph

Use the email app usage reports to see how many email apps are used to connect to Exchange Online. You can also see which versions of Outlook apps are used which will enable you to follow up with users who should upgrade to supported Outlook versions.

> **Note:** For details about different report views and names, see [Microsoft 365 reports - Email apps usage](https://support.office.com/client/Email-apps-usage-c2ce12a2-934f-4dd4-ba65-49b02be4703d).

## Reports

| Function                                 | Return Type | Description                              |
| :--------------------------------------- | :---------- | :--------------------------------------- |
| [Get user detail](../api/reportroot-getemailappusageuserdetail.md) | Stream      | Get details about which activities users performed on the various email apps. |
| [Get apps user counts](../api/reportroot-getemailappusageappsusercounts.md) | Stream      | Get the count of unique users per email app. |
| [Get user counts](../api/reportroot-getemailappusageusercounts.md) | Stream      | Get the count of unique users that connected to Exchange Online using any email app. |
| [Get versions user counts](../api/reportroot-getemailappusageversionsusercounts.md) | Stream      | Get the count of unique users by Outlook desktop version. |

