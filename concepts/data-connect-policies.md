---
title: "Microsoft Graph data connect policies and licensing"
description: "Describes what policies are supported and how to assign ISV access SKUs to organizations."
author: "tlenig"
localization_priority: Priority
ms.prod: "data-connect"
---

# Microsoft Graph data connect policies and licensing

Microsoft Graph data connect uses [Azure managed applications](/azure/managed-applications/overview) to allow you to create and deploy your solutions in your customer's Azure environment. Managed applications allow you to support certain Azure policies, giving customers greater confidence and comfortability when using your applications. Additionally, you must purchase and apply licenses from Microsoft your organization or the organizations that install your applications, in order to allow the application to access data through data connect.

## Policies

The following Azure policies are supported for an Azure managed application built using Microsoft 365 data:

- [ADLS Gen1 Encryption Required Policy](/azure/azure-policy/scripts/enforce-datalakestore-encryption)

When you select any of the policies during Azure marketplace publishing, the policy compliance status will be checked and enforced for all installations of your application. All selected policies that are compliant will be shown to the data approvers as part of the data request. Any policy compliance violation would cause the pipeline run to fail and stop the data extraction.

If you would like to request support for additional policies , let us know on [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359581).

## Licensing

Microsoft Graph data connect is currently available as part of the Workplace Analytics license, which is available on a per-user, per-month basis. Organizations with Workplace Analytics can extend their insights from Microsoft 365 data by granting and governing access to their data at scale. To learn more, including how to purchase, visit the  [Workplace Analytics product page](https://products.office.com/business/workplace-analytics).

Starting February 1, 2021, Microsoft Graph data connect will transition to Azure Billing for all customers. The bill will be associated with the Azure Subscription of the Azure Data Factory you are using. The price in this new billing model is based on the number of Microsoft Graph objects you are accessing.

While this new billing capability is in preview, the rate is $0.375 for 1,000 Microsoft Graph objects. For example, if you access 10,000 total objects, you will receive an Azure bill for $3.75. At the end of the preview period, the rate will be $0.75 per 1,000 Microsoft Graph objects. The rates noted above will apply to Exchange message and Teams chat objects, including: BasicDataSet_v0.Contact, BasicDataSet_v0.Event, BasicDataSet_v0.Message, BasicDataSet_v0.SentItem, BasicDataSet_v0.MailFolder, and BasicDataSet_v0.CalendarView.

Objects for directory objects will not be charged, including: BasicDataSet_v0.User, BasicDataSet_v0.MailboxSettings, BasicDataSet_v0.Manager, and BasicDataSet_v0.DirectReport.

## Next Steps
If you would like to request support for additional policies or datasets, let us know on [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359581). To learn more about Workplace Analytics, including how to purchase, visit the [Workplace Analytics product page](https://products.office.com/business/workplace-analytics).