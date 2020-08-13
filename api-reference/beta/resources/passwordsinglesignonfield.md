---
title: "passwordSingleSignOnField resource type"
description: "Fields to capture the credentials for password SSO"
localization_priority: Normal
author: "luleonpla"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# passwordSingleSignOnField resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the fields to capture to fill the use credentials for Password-based single sign-on.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|customizedLabel|String|Title/label override for customization.|
|defaultLabel|String|Label that would be used if no customizedLabel is provided. Read only.|
|fieldId|String|Id used to identity the field type. This is an internal id and possible values are `param_1`, `param_2`, `param_userName`, `param_password`.|
|type|String|	Type of the credential. The values can be `text`, `password`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.passwordSingleSignOnField",
  "baseType": null
}-->

```json
{
  "customizedLabel": "String",
  "defaultLabel": "String",
  "fieldId": "String",
  "type": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "passwordSingleSignOnField resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->