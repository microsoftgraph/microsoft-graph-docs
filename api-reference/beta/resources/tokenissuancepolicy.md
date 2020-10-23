---
title: "tokenIssuancePolicy resource type"
description: "Represents the policy to specify the characteristics of SAML tokens issued by Azure AD."
localization_priority: Normal
author: "luleonpla"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# tokenIssuancePolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy to specify the characteristics of SAML tokens issued by Azure AD. You can use token-issuance policies to:

- Set signing options
- Set signing algorithm
- Set SAML token version

Inherits from [stsPolicy](stsPolicy.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create tokenIssuancePolicy](../api/tokenissuancepolicy-post-tokenissuancepolicy.md) | [tokenIssuancePolicy](tokenissuancepolicy.md) | Create a tokenIssuancePolicy object. |
| [Get tokenIssuancePolicy](../api/tokenissuancepolicy-get.md) | [tokenIssuancePolicy](tokenissuancepolicy.md) | Read properties and relationships of a tokenIssuancePolicy object. |
| [List tokenIssuancePolicy](../api/tokenissuancepolicy-list.md) | [tokenIssuancePolicy](tokenissuancepolicy.md) | Read properties and relationships of tokenIssuancePolicy objects. |
| [Update tokenIssuancePolicy](../api/tokenissuancepolicy-update.md) | None | Update a tokenIssuancePolicy object. |
| [Delete tokenIssuancePolicy](../api/tokenissuancepolicy-delete.md) | None | Delete a tokenIssuancePolicy object. |
| [List appliesTo](../api/tokenissuancepolicy-list-appliesto.md) | [directoryObject](directoryobject.md) collection | Get the list of directoryObjects that this policy has been applied to. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Unique identifier for this policy. Read-only.|
|definition|String collection| A string collection containing a JSON string that defines the rules and settings for this policy. See below for more details about the JSON schema for this property. Required.|
|description|String| Description for this policy.|
|displayName|String| Display name for this policy. Required.|
|isOrganizationDefault|Boolean|Ignore this property. The token-issuance policy can only be applied to service principals and can't be set globally for the organization.|


### Properties of a token issuance policy definition
The properties form the JSON object that represents a token issuance policy. This JSON object must be **converted to a string with quotations escaped** to be inserted into the **definition** property. The following is an example in JSON format:

<!-- {
  "blockType": "ignored"
}-->
``` json
"definition": [
    "{ \"TokenIssuancePolicy\":{\"TokenResponseSigningPolicy\":\"TokenOnly\",\"SamlTokenVersion\":\"1.1\",\"SigningAlgorithm\":\"http://www.w3.org/2001/04/xmldsig-more#rsa-sha256\",\"Version\":1}}"
  ]
```


| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|TokenResponseSigningPolicy|String|Represents the certificate signing options available in Azure AD. Supported values are: `ResponseOnly`, `TokenOnly`, `ResponseAndToken`.  |
|SamlTokenVersion|String|Version of the SAML token. Supported values are: `1.1`, `2.0`. |
|SigningAlgorithm|String|Signing algorithm use by Azure AD to sign the SAML token. Supported values are: `http://www.w3.org/2001/04/xmldsig-more#rsa-sha256`, `http://www.w3.org/2000/09/xmldsig#rsa-sha1`.|
|Version|Integer|Set value of 1. Required.|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|appliesTo|[directoryObject](directoryobject.md) collection| The [directoryObject](directoryObject.md) collection that this policy has been applied to. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.tokenIssuancePolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "definition": ["String"],
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isOrganizationDefault": true,
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "tokenIssuancePolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


