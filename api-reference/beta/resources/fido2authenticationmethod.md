---
title: "fido2AuthenticationMethod resource type"
description: "A representation of a FIDO2 security key registered to a user. FIDO2 is a sign-in authentication method."
author: "mmcla"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# fido2AuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of a FIDO2 security key registered to a user. FIDO2 is a sign-in authentication method.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/fido2authenticationmethod-list.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) collection|Retrieve a list of a user's fido2AuthenticationMethod objects and their properties.|
|[Get](../api/fido2authenticationmethod-get.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md)|Read the properties and relationships of a user's fido2AuthenticationMethod object.|
|[Delete](../api/fido2authenticationmethod-delete.md)|None|Deletes a user's fido2AuthenticationMethod object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The authentication method identifier.|
|displayName|String|The display name of the key as given by the user.|
|createdDateTime|DateTimeOffset|The timestamp when this key was registered to the user.|
|creationDateTime (Deprecated)|DateTimeOffset|The timestamp when this key was registered to the user.|
|aaGuid|String|Authenticator Attestation GUID, an identifier that indicates the type (e.g. make and model) of the authenticator.|
|model|String|The manufacturer-assigned model of the FIDO2 security key.|
|attestationCertificates|String collection|The attestation certificate(s) attached to this security key.|
|attestationLevel|attestationLevel|The attestation level of this FIDO2 security key. Possible values are: `attested`, `notAttested`, `unknownFutureValue`.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.fido2AuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fido2AuthenticationMethod",
  "id": "String (identifier)",
  "displayName": "String",
  "creationDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "aaGuid": "String",
  "model": "String",
  "attestationCertificates": [
    "String"
  ],
  "attestationLevel": "String"
}
```

