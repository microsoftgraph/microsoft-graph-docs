---
title: "Use the Microsoft Graph eDiscovery API"
description: "The Microsoft 365 eDiscovery APIs provide functionality for organizations to automate repetitive tasks and integrate with their existing eDiscovery tools to build a repeatable workflows that might be required based on industry regulations. You can use the eDiscovery APIs to help with your legal needs."
localization_priority: Priority
author: "mahage-msft"
ms.prod: "ediscovery"
doc_type: conceptualPageType
---

# Use the Microsoft Graph eDiscovery API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph APIs for eDiscovery provide functionality for organizations to automate repetitive tasks and integrate with their existing eDiscovery tools to build repeatable workflows that might be required based on industry regulations. You can use the eDiscovery APIs to help with your legal needs.

> [!IMPORTANT]
> The Microsoft Graph APIs for eDiscovery are intended for the use of eDiscovery operations for litigation, investigation, and regulatory requests. These APIs should not be used as a substitute for journaling data out of the Microsoft 365 system or any other mass download.

> [!NOTE]
> During the preview, usage of these APIs may require subscriptions to specific Microsoft offerings and is subject to the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use?context=graph%252fcontext).  Upon general availability, Microsoft may require you or your customer to pay additional fees.
>
> Currently, the eDiscovery APIs in Microsoft Graph only work with Advanced eDiscovery cases.

The eDiscovery API is defined in the OData subnamespace, microsoft.graph.ediscovery. The API includes the following key entities.

| Name | Type       | Use case |
|:-|:-|:-|
| Case | [microsoft.graph.ediscovery.case](ediscovery-case.md) | The container for all eDiscovery objects including custodians, holds, searches, review sets, and exports. |
| Custodian | [microsoft.graph.ediscovery.custodian](ediscovery-custodian.md) | A person and the data they have administrative control over. When custodians are identified, *Advanced eDiscovery* can hold, search, cull, and export their data. For details, see [Work with custodians and non-custodial data sources in Advanced eDiscovery](/microsoft-365/compliance/managing-custodians).|
| Legal hold | [microsoft.graph.ediscovery.legalHold](ediscovery-legalhold.md) | Used to hold content for litigation and legal purposes. Legal holds should not be confused with or used as retention holds, which are typically used to comply with government or industry regulations. To learn more, see [Manage holds in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/managing-holds).|
| Review set| [microsoft.graph.ediscovery.reviewSet](ediscovery-reviewset.md) | A static set of electronically stored information collected for use in a litigation, investigation, or regulatory request. |
| Review set query | [microsoft.graph.ediscovery.reviewSetQuery](ediscovery-reviewsetquery.md) | Used to discover, cull, review, and tag [ESI](https://en.wikipedia.org/wiki/Electronically_stored_information_(Federal_Rules_of_Civil_Procedure)) with the goal of production to the requestor or opposing counsel.|
| Source collection| [microsoft.graph.ediscovery.sourceCollection](ediscovery-sourcecollection.md)| Commonly known as searches, allow you to collect data from the Microsoft 365 live services such as Exchange, SharePoint, and Teams. Source collections can be added to a review set to further cull and eventually export data relevant to your case. For details, see [Collect data for a case in Advanced eDiscovery](/microsoft-365/compliance/collecting-data-for-ediscovery).|
| Tags | [microsoft.graph.ediscovery.tag](ediscovery-tag.md) | Used in a review set during review or culling to cull responsive data from non-responsive data, identify privileged content, or generally aid in the review process.  To learn more, see [Tag documents in a review set in Advanced eDiscovery](/microsoft-365/compliance/tagging-documents).|
