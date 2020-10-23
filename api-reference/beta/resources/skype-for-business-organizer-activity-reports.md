---
title: "Skype for Business organizer activity reports"
description: "You can get details on organized conferences activity across your organization. These details are very helpful when you are investigating, planning, and making other business decisions for your organization."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: conceptualPageType
---

# Skype for Business organizer activity reports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can get details on organized conferences activity across your organization. These details are very helpful when you are investigating, planning, and making other business decisions for your organization.

> **Note:** For details about different report views and names, see [Microsoft 365 reports - Skype for Business conference organizer activity](https://support.office.com/client/Skype-for-Business-Online-conference-organized-activity-03a255d4-0e1d-4b24-b73d-7a62fae36254).

## Reports

| Function                                 | CSV return type | JSON return type                         | Description                              |
| :--------------------------------------- | :-------------- | :--------------------------------------- | ---------------------------------------- |
| [Get activity counts](../api/reportroot-getskypeforbusinessorganizeractivitycounts.md) | Stream          | [skypeForBusinessOrganizerActivityCounts](../resources/skypeforbusinessorganizeractivitycounts.md) | Get usage trends on the number and type of conference sessions held and organized by users in your organization. Types of conference sessions include IM, audio/video, application sharing, web, dial-in/out - 3rd party, and Dial-in/out Microsoft. |
| [Get user counts](../api/reportroot-getskypeforbusinessorganizeractivityusercounts.md) | Stream          | [skypeForBusinessOrganizerActivityUserCounts](../resources/skypeforbusinessorganizeractivityusercounts.md) | Get usage trends on the number of unique users and type of conference sessions held and organized by users in your organization. Types of conference sessions include IM, audio/video, application sharing, web, dial-in/out - 3rd party, and dial-in/out Microsoft. |
| [Get minute counts](../api/reportroot-getskypeforbusinessorganizeractivityminutecounts.md) | Stream          | [skypeForBusinessOrganizerActivityMinuteCounts](../resources/skypeforbusinessorganizeractivityminutecounts.md) | Get usage trends on the length in minutes and type of conference sessions held and organized by users in your organization. Types of conference sessions include audio/video, and dial-in and dial-out - Microsoft. |


