---
title: "verifiedCustomDomainCertificatesMetadata resource type"
description: "Represents the custom cerificate metadata for an on-premises application published via Application Proxy."
localization_priority: Normal
author: "japere"
ms.prod: "applications"
doc_type: "resourcePageType"
---

# verifiedCustomDomainCertificatesMetadata resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the custom domain certificate metadata for the [onPremisesPublishing](onpremisespublishing.md) resource when publishing an on-premises application with Application Proxy. Using a custom domain allows you to use your own domain name instead of the default domain, msappproxy.net, for your application. To learn more see, [Custom domains in Azure AD Application Proxy](/azure/active-directory/manage-apps/application-proxy-configure-custom-domain).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|expiryDate|DateTimeOffset| The expiry date of the custom domain certificate. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|issueDate|DateTimeOffset| The issue date of the custom domain. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|issuerName|String| The issuer name of the custom domain certificate. |
|subjectName|String| The subject name of the custom domain certificate. |
|thumbprint|String| The thumbprint associated with the custom domain certificate. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.verifiedCustomDomainCertificatesMetadata",
  "baseType": null
}-->

```json
{
  "expiryDate": "String (timestamp)",
  "issueDate": "String (timestamp)",
  "issuerName": "String",
  "subjectName": "String",
  "thumbprint": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "verifiedCustomDomainCertificatesMetadata resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
