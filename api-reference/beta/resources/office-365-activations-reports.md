---
title: "Office 365 activations reports"
description: "The Office 365 activation report gives you a view of which users have activated their Office 365 subscriptions on at least one device. It provides a breakdown of the Office 365 ProPlus, Project, and Visio Pro for Office 365 subscription activations, as well as the breakdown of activations across desktop and devices. This report could help you identify users who might need additional support to activate their Office subscription."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: conceptualPageType
---

# Office 365 activations reports

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Office 365 activation report gives you a view of which users have activated their Office 365 subscriptions on at least one device. It provides a breakdown of the Office 365 ProPlus, Project, and Visio Pro for Office 365 subscription activations, as well as the breakdown of activations across desktop and devices. This report could help you identify users who might need additional support to activate their Office subscription.

> **Note:** For details about different report views and names, see [Office 365 Reports - Microsoft Office activations](https://support.office.com/client/Office-activations-87c24ae2-82e0-4d1e-be01-c3bcc3f18c60).

## Reports
| Function                                 | CSV return type | JSON return type                         | Description                              |
| :--------------------------------------- | :-------------- | :--------------------------------------- | ---------------------------------------- |
| [Get user detail](../api/reportroot-getoffice365activationsuserdetail.md) | Stream          | [office365ActivationsUserDetail](../resources/office365activationsuserdetail.md) | Get details about users who have activated Office 365. |
| [Get activation counts](../api/reportroot-getoffice365activationcounts.md) | Stream          | [office365ActivationCounts](../resources/office365activationcounts.md) | Get the count of Office 365 activations on desktops and devices. |
| [Get user counts](../api/reportroot-getoffice365activationsusercounts.md) | Stream          | [office365ActivationsUserCounts](../resources/office365activationsusercounts.md) | Get the count of users that are enabled and those that have activated the Office subscription on desktop or devices. |
