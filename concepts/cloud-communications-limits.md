---
title: "Cloud communication API limits in Microsoft Graph"
description: "This contains information about the limits of the Cloud Communications APIs"
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
---

# Cloud communication API limits in Microsoft Graph

This article describes limitations to the cloud communications APIs. These limits help to ensure that the platform is stable, reliable, and secure. Note that these limitations are subject to change in the future. 

>**Note:** When the limit is reached, attempting to make more API requests will result in an HTTP `429 Error`.

| API      | Limitations    |
| :------------- | :----------: |
|  Calls | 10,000 calls/month and 100 concurrent calls   |
| Meetings   | 2000 meetings/user each month |
| Presence (preview)   | 2 requests/second |

## See also

- [Working with the communications API](/graph/api/resources/communications-api-overview?view=graph-rest-beta)
