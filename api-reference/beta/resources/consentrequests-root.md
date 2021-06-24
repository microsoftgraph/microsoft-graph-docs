---
title: "Azure Active Directory consent requests"
description: "Use Azure AD consent requests to manage the request workflow for users attempting to access apps that require admin consent."
localization_priority: Normal
author: "psignoret"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Azure Active Directory consent requests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) consent requests help you manage the request workflow for users attempting to access apps that require admin approval.

To allow users to request access or admin consent for applications they're unauthorized to grant consent to themselves, first enable the consent request workflow. 

>[!NOTE]
>The current APIs are limited to configuring the workflow and reading the list of requests. At this time, there aren’t any methods available to programmatically approve or deny a request. However, the contents of the request can be used to recreate a URL which can be used to grant admin consent and approve a request.

The consent request resource types include:

* [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md): Specifies the policy by which app consent requests can be created and managed for the entire tenant. There is a single **adminConsentRequestPolicy** per tenant.
* [appConsentRequest](../resources/appconsentrequest.md): A request that represents a collection of **userConsentRequests** for a specific application.
* [userConsentRequest](../resources/userconsentrequest.md): A request created by a user to use an app that requires admin consent to access.
* [appConsentRequestScope](../resources/appconsentrequestscope.md): A resource that contains details of the dynamic permission scopes being requested for an application.  

## Methods

The following table lists the methods that you can use to interact with consent request resources.

| Method		   | Return type	|Description|
|:---------------|:--------|:----------|
|[Get adminConsentRequestPolicy](../api/adminconsentrequestpolicy-get.md) | [adminConsentRequestPolicy](adminconsentrequestpolicy.md) collection | Read the properties of the [adminConsentRequestPolicy](adminconsentrequestpolicy.md). |
|[Update adminConsentRequestPolicy](../api/adminconsentrequestpolicy-update.md) | [adminConsentRequestPolicy](adminconsentrequestpolicy.md) collection | Set configurations for the [adminConsentRequestPolicy](adminconsentrequestpolicy.md). |
|[List appConsentRequests ](../api/appconsentrequest-list.md) | [appConsentRequest](appconsentrequest.md) collection | Retrieve a collection of [appConsentRequest](appconsentrequest.md) objects and their properties. |
|[Get appConsentRequest ](../api/appconsentrequest-get.md) | [appConsentRequest](appconsentrequest.md) collection | Read an [appConsentRequest](appconsentrequest.md) object. |
|[appConsentRequests: filterByCurrentUser](../api/appconsentrequest-filterByCurrentUser.md) | [appConsentRequest](../resources/appconsentrequest.md) collection | Read the properties of [appConsentRequest](../resources/appconsentrequest.md) objects for which the current user is the reviewer and the status of the user consent request is `InProgress`. |
|[Get userConsentRequest ](../api/userconsentrequest-get.md) | [userConsentRequest](userconsentrequest.md) collection | Read a [userConsentRequest](userconsentrequest.md) object for an [appConsentRequest](appconsentrequest.md). |
|[List userConsentRequests ](../api/userconsentrequest-list.md) | [userConsentRequest](userconsentrequest.md) collection | Retrieve a collection of [userConsentRequest](userconsentrequest.md) objects for an [appConsentRequest](appconsentrequest.md). |
|[userConsentRequest: filterByCurrentUser](../api/userconsentrequest-filterByCurrentUser.md) | [appConsentRequests](../resources/userconsentrequest.md) collection | Read the properties of [userConsentRequest](../resources/userconsentrequest.md) objects for an [appConsentRequest](appconsentrequest.md) for which the current user is the reviewer. |

## Role and delegated permission authorization checks

The following directory roles are required for a calling user to manage the requests workflow or read the list of requests.

| Operation | Delegated permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | ConsentRequest.Read.All, ConsentRequest.ReadWrite.All | Global Administrator, Global Reader, Cloud App Administrator, and Application Administrator |

## See also

- [Configure the admin consent workflow (preview)](/azure/active-directory/manage-apps/configure-admin-consent-workflow?preserve-view=true)


<!--
{
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
