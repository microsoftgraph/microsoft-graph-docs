---
title: "userFlowApiConnectorConfiguration resource type"
description: "Represents the API connectors that are enabled for a user flow."
author: "nickgmicrosoft"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# userFlowApiConnectorConfiguration resource type

Namespace: microsoft.graph

Defines the APIs that are called at specific points in the user flow.  Each relationship of this object corresponds to a specific step in the user flow that can be configured to call an API connector.

## Relationships

| Relationship            | Type                                            | Description                                                                                                                                             |
| :---------------------- | :---------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------ |
| postFederationSignup    | [identityApiConnector](identityapiconnector.md) | Specifies an API to call after federation with an external identity provider. For example, a Google, Facebook, or Azure AD API is completed when the user is signing up (does not apply to sign-in). |
| postAttributeCollection | [identityApiConnector](identityapiconnector.md) | Specifies an API to call after a user submits the collected attributes and before the user account is created during sign-up.                                                      |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userFlowApiConnectorConfiguration"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.userFlowApiConnectorConfiguration"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "User flow API Connector Configuration",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
