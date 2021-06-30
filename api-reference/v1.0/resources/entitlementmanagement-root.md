---
title: "Working with the Azure AD entitlement management API"
description: "Govern access to resources including groups, apps and sites through Azure AD entitlement management"
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "conceptualPageType"
---

# Working with the Azure AD entitlement management API

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) entitlement management can help you manage access to groups, applications, and SharePoint Online sites for internal users as well as users outside your organization.

By creating access packages with the roles users need to have across those resources, and defining policies for who can request an access package and how long they can have an assignment to an access package, you can govern the lifecycle of access for both internal and external users.

The entitlement management resource types include:

- [approval](approval.md): represents the decisions associated with an access package request.

For a tutorial that shows you how to use entitlement management to create a package of resources that internal users can self-service request, see [Create an access package using Microsoft Graph APIs](/graph/tutorial-access-package-api).

Note that the entitlement management feature, including the API, is included in Azure AD Premium P2. The tenant where entitlement management is being used must have a valid purchased or trial Azure AD Premium P2 or EMS E5 subscription.

## Methods

The following table lists the methods that you can use to interact with entitlement management-related resources.

| Method       | Return type  |Description|
|:---------------|:--------|:----------|
|[Get approval](../api/approval-get.md) | [approval](approval.md) | Retrieve the properties of an **approval** object. |
|[List approvalStages](../api/approval-list-stages.md) | [approvalStage](approvalstage.md) collection | List the **approvalStage** objects associated with an **approval** object. |
|[Get approvalStage](../api/approvalstage-get.md) | [approvalStage](approvalstage.md) | Retrieve the properties of an **approvalStage** object. |
|[Update approvalStage](../api/approvalstage-update.md) | None | Apply approve or deny decision on an **approvalStage** object. |


## Types

- [approvalStage](approvalStage.md) - Used in [approval](approval.md) to distinguish the different approval steps.
## See also

 - [What is Azure AD entitlement management?](/azure/active-directory/governance/entitlement-management-overview)



<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
