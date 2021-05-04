---
title: "UserFlow resource type"
description: "Represents an identity user flow that is included in a built-in authentication journey."
localization_priority: Normal
author: "Nickgmicrosoft"
ms.prod: "identity-and-sign-in"
doc_type: "resourcePageType"
---

# UserFlow resource type

Namespace: microsoft.graph

User Flows enable you to define predefined, configurable policies for sign-in, sign-up, combined sign-up and sign-in, password reset, and profile update. This is a base class that other user flows inherit from.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| The identifier of the user flow. The prefix of **B2C_1_** is added to the value that you provide.|
|userFlowType|userFlowType| Possible values are: `signUp`, `signIn`, `signUpOrSignIn`, `passwordReset`, `profileUpdate`, `resourceOwner`, `unknownFutureValue`.|
|userFlowTypeVersion|Single| This is the version of the user flow type. Each user flow type can have different possible versions such as 1, 1.1 or 2.  |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.UserFlow",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "userFlowType": "string",
  "userFlowTypeVersion": "Single"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "UserFlow resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
