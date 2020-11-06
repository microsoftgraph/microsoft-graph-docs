---
title: "credential resource type"
description: "Indicates a single credential used for sign-in to an application."
localization_priority: Normal
author: "bharathramh92"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# credential resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates a single credential used for sign-in to an application. For example, username is one credential, password is another credential.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|fieldId|String|The name of the field for this credential. e.g, username or password or phoneNumber. This is defined by the application. Must match what is in the html field on singleSignOnSettings/password object.|
|type|String|The type for this credential. Valid values: username, password, or other.|
|value|String|The value for this credential. e.g, mysuperhiddenpassword. Note the value for passwords is write-only, the value can never be read back.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.credential",
  "baseType": null
}-->

```json
{
  "fieldId": "param_username",
  "value": "myusername",
  "type": "username"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "credential resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


