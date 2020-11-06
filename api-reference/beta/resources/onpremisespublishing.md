---
title: "onPremisesPublishing resource type"
description: "Represents an Application Proxy onPremisesPublishing object."
localization_priority: Normal
author: "japere"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# onPremisesPublishing resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An on-premises application published via [Azure AD Application Proxy](https://aka.ms/whyappproxy) is represented by an [application](application.md) object and its associated **onPremisesPublishing** property. Application Proxy provides secure remote access to on-premises applications.

An **onPremisesPublishing** object represents the set of properties for configuring Application Proxy for an on-premises [application](application.md). 

After [instantiating a custom application](../api/applicationtemplate-instantiate.md) or [creating an application](../api/application-post-applications.md), the Application Proxy settings for the application can be configured by [updating the application's](../api/application-update.md) onPremisesPublishing properties.

For a tutorial about configuring Application Proxy, see [Automate the configuration of Application Proxy using the Microsoft Graph API](/graph/application-proxy-configure-api).

## Properties

| Property|Type|Description|
|:---------------|:--------|:----------|
|alternateUrl|String| If you are configuring a traffic manager in front of multiple App Proxy applications, the alternateUrl is the user-friendly URL that will point to the traffic manager. |
|applicationServerTimeout|String| The duration the connector will wait for a response from the backend application before closing the connection. Possible values are `default`, `long`. When set to default, the backend application timeout has a length of 85 seconds. When set to long, the backend timeout is increased to 180 seconds. Use `long` if your server takes more than 85 seconds to respond to requests or if you are unable to access the application and the error status is "Backend Timeout". Default value is `default`. |
|applicationType|String| Indicates if this application is an Application Proxy configured application. This is pre-set by the system. Read-only. |
|externalAuthenticationType|String| Details the pre-authentication setting for the application. Pre-authentication enforces that users must authenticate before accessing the app. Passthru does not require authentication. Possible values are: `passthru`, `aadPreAuthentication`. |
|externalUrl|String| The published external url for the application. For example, https://intranet-contoso.msappproxy.net/.  |
|internalUrl|String| The internal url of the application. For example, https://intranet/. |
|isHttpOnlyCookieEnabled|Boolean| Indicates if the HTTPOnly cookie flag should be set in the HTTP response headers. Set this value to `true` to have Application Proxy cookies include the HTTPOnly flag in the HTTP response headers. If using Remote Desktop Services, set this value to False. Default value is `false`. |
|isOnPremPublishingEnabled|Boolean| Indicates if the application is currently being published via Application Proxy or not. This is pre-set by the system. Read-only. |
|isPersistentCookieEnabled|Boolean| Indicates if the Persistent cookie flag should be set in the HTTP response headers. Keep this value set to `false`. Only use this setting for applications that can't share cookies between processes. For more information about cookie settings, see [Cookie settings for accessing on-premises applications in Azure Active Directory](/azure/active-directory/manage-apps/application-proxy-configure-cookie-settings). Default value is `false`. |
|isSecureCookieEnabled|Boolean| Indicates if the Secure cookie flag should be set in the HTTP response headers. Set this value to `true` to transmit cookies over a secure channel such as an encrypted HTTPS request. Default value is `true`.|
|isTranslateHostHeaderEnabled|Boolean| Indicates if the application should translate urls in the reponse headers. Keep this value as `true` unless your application required the original host header in the authentication request. Default value is `true`.|
|isTranslateLinksInBodyEnabled|Boolean| Indicates if the application should translate urls in the application body. Keep this value as `false` unless you have hardcoded HTML links to other on-premises applications and don't use custom domains. For more information, see [Link translation with Application Proxy](/azure/active-directory/manage-apps/application-proxy-configure-hard-coded-link-translation). Default value is `false`.|
|singleSignOnSettings|[onPremisesPublishingSingleSignOn](onpremisespublishingsinglesignon.md)| Represents the single sign-on configuration for the on-premises application. |
|verifiedCustomDomainCertificatesMetadata|[verifiedCustomDomainCertificatesMetadata](verifiedcustomdomaincertificatesmetadata.md)| Details of the certificate associated with the application when a custom domain is in use. `null` when using the default domain. Read-only.|
|verifiedCustomDomainKeyCredential|[keyCredential](keycredential.md)| The associated key credential for the custom domain used. |
|verifiedCustomDomainPasswordCredential|[passwordCredential](passwordcredential.md)| The associated password credential for the custom domain used. |



## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesPublishing"
}-->

```json
{
  "alternateUrl": "String",
  "applicationServerTimeout": "String",
  "applicationType": "String",
  "externalAuthenticationType": "String",
  "externalUrl": "String",
  "internalUrl": "String",
  "isHttpOnlyCookieEnabled": true,
  "isOnPremPublishingEnabled": true,
  "isPersistentCookieEnabled": true,
  "isSecureCookieEnabled": true,
  "isTranslateHostHeaderEnabled": true,
  "isTranslateLinksInBodyEnabled": true,
  "singleSignOnSettings": {"@odata.type": "microsoft.graph.onPremisesPublishingSingleSignOn"},
  "verifiedCustomDomainCertificatesMetadata": {"@odata.type": "microsoft.graph.verifiedCustomDomainCertificatesMetadata"},
  "verifiedCustomDomainKeyCredential": {"@odata.type": "microsoft.graph.keyCredential"},
  "verifiedCustomDomainPasswordCredential": {"@odata.type": "microsoft.graph.passwordCredential"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2019-02-04 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "onPremisesPublishing resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


