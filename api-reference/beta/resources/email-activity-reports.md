---
title: "Email activity reports"
description: "You can get a high level view of email traffic within your organization from the Reports page. You can also drill into the Email Activity widget to understand the trends and details per user of the email activity in your organization."
localization_priority: Normal
author: "pranoychaudhuri"
ms.prod: "reports"
doc_type: conceptualPageType
---

# Email activity reports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can get a high level view of email traffic within your organization from the Reports page. You can also drill into the Email Activity widget to understand the trends and details per user of the email activity in your organization.

> **Note:** For details about different report views and names, see [Microsoft 365 reports - Email Activity](https://support.office.com/client/Email-activity-1cbe2c00-ca65-4fb9-9663-1bbfa58ebe44).

## Reports

| Function                                 | CSV return type | JSON return type                         | Description                              |
| :--------------------------------------- | :-------------- | :--------------------------------------- | ---------------------------------------- |
| [Get user detail](../api/reportroot-getemailactivityuserdetail.md) | Stream          | [emailActivityUserDetail](../resources/emailactivityuserdetail.md) | Get details about email activity users have performed. |
| [Get activity counts](../api/reportroot-getemailactivitycounts.md) | Stream          | [emailActivitySummary](../resources/emailactivitysummary.md) | Enables you to understand the trends of email activity (like how many were sent, read, and received) in your organization. |
| [Get user counts](../api/reportroot-getemailactivityusercounts.md) | Stream          | [emailActivitySummary](../resources/emailactivitysummary.md) | Enables you to understand trends on the number of unique users who are performing email activities like send, read, and receive. |


