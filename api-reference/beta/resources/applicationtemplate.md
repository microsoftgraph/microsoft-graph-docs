---
title: "applicationTemplate resource type"
description: "Represents an application in the Azure AD application gallery"
localization_priority: Normal
author: "luleonpla"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# applicationTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an application in the [Azure AD application gallery](/azure/active-directory/saas-apps/tutorial-list).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[List applicationTemplate](../api/applicationtemplate-list.md)|[applicationTemplate](applicationtemplate.md)|Retrieve a list of applicationTemplate objects.|
| [Get applicationTemplate](../api/applicationtemplate-get.md) | [applicationTemplate](applicationtemplate.md) | Read properties and relationships of applicationTemplate object. |
|[Instantiate applicationTemplate](../api/applicationtemplate-instantiate.md)|[applicationServicePrincipal](applicationserviceprincipal.md)| Add an instance of an application from the Azure AD application gallery into your directory.|


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|categories|String collection|The list of categories for the application. Supported values can be: `Collaboration`, `Business Management`, `Consumer`,`Content management`, `CRM`, `Data services`, `Developer services`, `E-commerce`, `Education`, `ERP`, `Finance`, `Health`, `Human resources`, `IT infrastructure`, `Mail`, `Management`, `Marketing`, `Media`, `Productivity`, `Project management`, `Telecommunications`, `Tools, Travel`, and `Web design & hosting`.|
|description|String|A description of the application.|
|displayName|String|The name of the application.|
|homePageUrl|String|The home page URL of the application.|
|id|String| Unique identifier for the application. Read-only.|
|logoUrl|String|The URL to get the logo for this application.|
|publisher|String|The name of the publisher for this application.|
|supportedProvisioningTypes|String collection|The list of provisioning modes supported by this application. The only valid value is `sync`.|
|supportedSingleSignOnModes|String collection|The list of single sign-on modes supported by this application. The supported values are `password`, `saml`, `external`, and `oidc`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.applicationTemplate",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
	"id" : "id-value",
	"displayName" : "displayName-value",
	"homePageUrl" : "homePageUrl-value",
	"supportedSingleSignOnModes" : ["supportedSingleSignOnModes-value"],
	"logoUrl" : "logoUrl-value",
	"categories" : ["categories-value"],
	"publisher" : "publisher-value",
	"description" : "description-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


