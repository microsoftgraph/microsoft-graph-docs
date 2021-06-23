---
title: "Microsoft 365 Browser usage reports"
description: "Use the Microsoft 365 Browser usage reports to get insights into the usage of Browsers in your organization."
localization_priority: Normal
ms.prod: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
---

# Microsoft Browser usage reports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the Microsoft Browser usage reports to get insights into the Browser usage in your organization.

## Methods

| Method                                                                        | Return Type                                    | Description                                                  |
| :---------------------------------------------------------------------------- | :--------------------------------------------- | :----------------------------------------------------------- |
| [Get user detail](../api/reportroot-browserdistributionusercounts.md)         | [report](../resources/intune-shared-report.md) | Get the number of users by browser over the selected period. |
| [Get user counts](../api/reportroot-browserusageusercounts.md)                | [report](../resources/intune-shared-report.md) | Get the trend in the number of active users for each browser |
| [Get platform user counts](../api/reportroot-browseruserdetail.md)            | [report](../resources/intune-shared-report.md) | Get the detailed browser useage per user.                    |


