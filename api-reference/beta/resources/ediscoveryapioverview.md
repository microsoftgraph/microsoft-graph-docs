---
title: "Use the Microsoft Graph eDiscovery API"
description: "The Microsoft 365 eDiscovery APIs provide functionality for organizations to automate repetitive tasks and integrate with their existing eDiscovery tools to build a repeatable workflows that might be required based on industry regulations. You can use the eDiscovery APIs to help with your legal needs."
localization_priority: Priority
author: "mahage-msft"
ms.prod: "compliance"
doc_type: conceptualPageType
---

# Use the Microsoft Graph eDiscovery API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph APIs for eDiscovery provide functionality for organizations to automate repetitive tasks and integrate with their existing eDiscovery tools to build repeatable workflows that might be required based on industry regulations. You can use the eDiscovery APIs to help with your legal needs.

> [!IMPORTANT]
> The Microsoft Graph APIs for eDiscovery are intended for the use of eDiscovery operations for Litigation, Investigation and regulatory requests. These APIs should not be used as a substitute for journaling data out of the Microsoft 365 system or any other mass download.

> [!NOTE]
> During the preview, usage of these APIs may require subscriptions to specific Microsoft offerings and is subject to the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use?context=graph%252fcontext).  Upon general availability, Microsoft may require you or your customer to pay additional fees.
>
> Currently, the eDiscovery APIs in Microsoft Graph only work with Advanced eDiscovery cases.

The Microsoft Graph API includes the following key entities.

| Name | Type       | Use case |
|:-|:-|:-|
| eDiscovery case | [ediscoveryCase](ediscoverycase.md) | eDiscovery cases are the container for all eDiscovery objects including custodians, holds, searches, review set and exports. |
| eDiscovery review set| [reviewSet](reviewset.md) | eDiscovery review sets are static set of electronically stored information collected for use in a litigation, investigation or regulatory request. |
| eDiscovery review set query | [reviewSetQuery](reviewsetquery.md) | eDiscovery review set queries are used to discover, cull, review and tag [ESI](https://en.wikipedia.org/wiki/Electronically_stored_information_(Federal_Rules_of_Civil_Procedure)) with the ultimate goal of production to the requestor or opposing counsel.
