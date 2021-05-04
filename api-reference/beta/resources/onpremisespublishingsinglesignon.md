---
title: "onPremisesPublishingSingleSignOn resource type"
description: "Represents the single-sign on settings for an on-premises application published via Application Proxy."
localization_priority: Normal
author: "japere"
ms.prod: "applications"
doc_type: "resourcePageType"
---

# onPremisesPublishingSingleSignOn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the single sign-on settings for the [onPremisesPublishing](onpremisespublishing.md) resource when publishing an on-premises application with Azure AD Application Proxy. This resource is used for setting Integrated Windows Authentication and header-based authentication as the single-sign on mode. For more information, see [Kerberos Constrained Delegation for single-sign on to your apps with Application Proxy](/azure/active-directory/manage-apps/application-proxy-configure-single-sign-on-with-kcd).

>[!NOTE]
>Do not use this property for configuring SAML or password-based single-sign on. If you are configuring SAML single-sign-on this must be set on the [servicePrincipal](serviceprincipal.md).
If you are configuring password-based single-sign this must be set using [createPasswordSingleSignOnCredentials](../api/serviceprincipal-createpasswordsinglesignoncredentials.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|kerberosSignOnSettings| [kerberosSignOnSettings](kerberossignonsettings.md)| The Kerberos Constrained Delegation settings for applications that use Integrated Window Authentication. |
|singleSignOnMode|singleSignOnMode| The preferred single-sign on mode for the application. Possible values are: `none`, `onPremisesKerberos`, `aadHeaderBased`,`pingHeaderBased`. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesPublishingSingleSignOn",
  "baseType": null
}-->

```json
{
  "kerberosSignOnSettings": {"@odata.type": "microsoft.graph.kerberosSignOnSettings"},
  "singleSignOnMode": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesPublishingSingleSignOn resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
