---
title: "trustFrameworkKey resource type"
description: "Represents a JWK (JSON Web Key). TrustFrameworkKey is a JSON data structure that represents a cryptographic key. The structure of this resource follows the format defined in RFC 7517 Section 4."
localization_priority: Normal
author: "valnav"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# trustFrameworkKey resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a JWK (JSON Web Key). TrustFrameworkKey is a JSON data structure that represents a cryptographic key. The structure of this resource follows the format defined in [RFC 7517 Section 4](https://tools.ietf.org/html/rfc7517#section-4).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| kid | string | The unique identifier for the key.   |
| kty | string | The "kty" (key type) parameter identifies the cryptographic algorithm family used with the key, The valid values are rsa, oct. |
| use | string | The "use" (public key use) parameter identifies the intended use of the public key.  The "use" parameter is employed to indicate whether a public key is used for encrypting data or verifying the signature on data. Possible values are    1. "sig" (signature)    2.  "enc" (encryption)   |
| x5c | string collection | The "x5c" (X.509 certificate chain) parameter contains a chain of one or more PKIX certificates [RFC 5280](https://tools.ietf.org/html/rfc5280). |
| x5t | string | The "x5t" (X.509 certificate SHA-1 thumbprint) parameter is a base64url-encoded SHA-1 thumbprint (a.k.a. digest) of the DER encoding of an X.509 certificate [RFC 5280](https://tools.ietf.org/html/rfc5280). |
| e | string | RSA Key - public exponent |
| d| string | RSA Key - private exponent. Field cannot be read back. |
| n | string | RSA Key - modulus |
| p | string | RSA Key - first prime. Field cannot be read back. |
| q | string | RSA Key - second prime. Field cannot be read back. |
| dp | string | RSA Key - first exponent. Field cannot be read back. |
| dq | string | RSA Key - second exponent. Field cannot be read back. |
| qi | string | RSA Key - Coefficient. Field cannot be read back. |
| k | string | Symmetric Key for oct key type. Field cannot be read back.   |
| nbf | int | This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.) |
| exp | int | This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.) |



## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.trustFrameworkKey",
  "baseType": null
}-->

```json
{
  "d": "String",
  "dp": "String",
  "dq": "String",
  "e": "String",
  "exp": 1024,
  "k": "String",
  "kid": "String",
  "kty": "String",
  "n": "String",
  "nbf": 1024,
  "p": "String",
  "q": "String",
  "qi": "String",
  "use": "String",
  "x5c": ["String"],
  "x5t": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "trustFrameworkKey resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


