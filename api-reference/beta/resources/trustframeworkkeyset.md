---
title: "trustFrameworkKeySet resource type"
description: "Represents a trust framework keyset/policy keys."
localization_priority: Normal
author: "Nickgmicrosoft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# trustFrameworkKeySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a trust framework keyset/policy keys. The Identity Experience framework stores the secrets, which can be used in the policies. The secrets can be passwords, certificates, or other files. In the portal, these entities are shown as `Policy keys`. The Identity Experience framework uses the JSON Web Key (JWK) standard for the keysets. This entity follows the format specified in [RFC 7517 Section 5](https://tools.ietf.org/html/rfc7517#section-5).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/trustframework-list-keysets.md) | [trustFrameworkKeySet](trustframeworkkeyset.md) Collection | List trustFrameworkKeySets. |
| [Create](../api/trustframework-post-keysets.md) | [trustFrameworkKeySet](trustframeworkkeyset.md) | Create  trustFrameworkKeySet. |
| [Get](../api/trustframeworkkeyset-get.md) | [trustFrameworkKeySet](trustframeworkkeyset.md) | Read properties and relationships of trustFrameworkKeySet object. |
| [Update](../api/trustframeworkkeyset-update.md) | [trustFrameworkKeySet](trustframeworkkeyset.md) | Update trustFrameworkKeySet object. |
| [Delete](../api/trustframeworkkeyset-delete.md) | None | Delete trustFrameworkKeySet object. |
|[Generate key](../api/trustframeworkkeyset-generatekey.md)|[trustFrameworkKey](trustframeworkkey.md)| Generate a key in keyset. |
|[Get active key](../api/trustframeworkkeyset-getactivekey.md)|[trustFrameworkKey](trustframeworkkey.md)| Get currently active key in the keyset. |
|[Upload certificate](../api/trustframeworkkeyset-uploadcertificate.md)|[trustFrameworkKey](trustframeworkkey.md)| Upload a X.509 certificate. |
|[Upload PKCS12](../api/trustframeworkkeyset-uploadpkcs12.md)|[trustFrameworkKey](trustframeworkkey.md)| Upload a PKCS12 format certificate. |
|[Upload secret](../api/trustframeworkkeyset-uploadsecret.md)|[trustFrameworkKey](trustframeworkkey.md)| Upload a string based secret. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Unique identifier of the trustframework keyset |
|keys|[trustFrameworkKey](trustframeworkkey.md) collection| A collection of the keys. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.trustFrameworkKeySet",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "keys": [{"@odata.type": "microsoft.graph.trustFrameworkKey"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "trustFrameworkKeySet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


