---
title: "certificateAuthority resource type"
description: "Represents a certificate authority."
localization_priority: Normal
author: "adimitui"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# certificateAuthority resource type

Namespace: microsoft.graph

Represents a certificate authority.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|certificate|Binary|Required. The base64 encoded string representing the public certificate.|
|certificateRevocationListUrl|String|The URL of the certificate revocation list.|
|deltaCertificateRevocationListUrl|String|The URL contains the list of all revoked certificates since the last time a full certificate revocaton list was created.|
|isRootAuthority|Boolean|Required. **true** if the trusted certificate is a root authority, **false** if the trusted certificate is an intermediate authority.|
|issuer|String|The issuer of the certificate, calculated from the **certificate** value. Read-only. |
|issuerSki|String|The subject key identifier of the certificate, calculated from the **certificate** value. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.certificateAuthority",
  "baseType": null
}-->

```json
{
  "certificate": "Binary",
  "certificateRevocationListUrl": "String",
  "deltaCertificateRevocationListUrl": "String",
  "isRootAuthority": true,
  "issuer": "String",
  "issuerSki": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "certificateAuthority resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
