---
title: "Skype for Business participant activity reports"
description: "You can use the Skype for Business participant activity reports to get details on conferencing activity across your organization. These details are very helpful when you are investigating, planning, and making other business decisions for your organization."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: conceptualPageType
---

# Skype for Business participant activity reports

Namespace: microsoft.graph

You can use the Skype for Business participant activity reports to get details on conferencing activity across your organization. These details are very helpful when you are investigating, planning, and making other business decisions for your organization.

> **Note:** For details about different report views and names, see [Microsoft 365 reports - Skype for Business conference participant activity](https://support.office.com/client/Skype-for-Business-Online-conference-participant-activity-c3c89995-65dd-4715-9e38-bb244c742c6b).

## Reports

| Function                                 | Return Type | Description                              |
| :--------------------------------------- | :---------- | :--------------------------------------- |
| [Get activity counts](../api/reportroot-getskypeforbusinessparticipantactivitycounts.md) | Stream      | Get usage trends on the number and type of conference sessions that users from your organization participated in. Types of conference sessions include IM, audio/video, application sharing, web, and dial-in/out - 3rd party. |
| [Get user counts](../api/reportroot-getskypeforbusinessparticipantactivityusercounts.md) | Stream      | Get usage trends on the number of unique users and type of conference sessions that users from your organization participated in. Types of conference sessions include IM, audio/video, application sharing, web, and dial-in/out - 3rd party. |
| [Get minute counts](../api/reportroot-getskypeforbusinessparticipantactivityminutecounts.md) | Stream      | Get usage trends on the length in minutes and type of conference sessions that users from your organization participated in. Types of conference sessions include audio/video. |

