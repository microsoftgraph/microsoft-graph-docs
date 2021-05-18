---
title: "userFlowLanguageConfiguration resource type"
description: "The userFlowsLanguageConfiguration object allows a user flow to support customization of multiple languages."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# userFlowLanguageConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

User flows language customization is a feature that allows a given user flow to support customization of multiple languages, from all the built-in languages to a custom language.

For [Azure Active Directory B2C user flows](/azure/active-directory-b2c/user-flow-language-customization#supported-languages), you can leverage the built-in languages or provide the language customizations for a language that is not currently built-in by default. For [Azure Active Directory user flows](/azure/active-directory/external-identities/user-flow-customize-language), you can only leverage the built-in languages provided by Microsoft. Both user flows for Azure Active Directory B2C and Azure Active Directory support customizing the language and strings shown to users as they go through the journeys you configure with your user flows.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get userFlowLanguageConfiguration](../api/userflowlanguageconfiguration-get.md)|[userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md)|Read the properties and relationships of a [userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) object. These objects represent a language available in a user flow.|
|[Delete userFlowLanguageConfiguration](../api/userflowlanguageconfiguration-delete.md)|None|Deletes a custom [userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) object. These objects represent a language available in a user flow and only a custom language can be deleted from an Azure AD B2C user flow.|
|[List defaultPages](../api/userflowlanguageconfiguration-list-defaultpages.md)|[userFlowLanguagePage](../resources/userflowlanguagepage.md) collection|Get the userFlowLanguagePage resources from the defaultPages navigation property. Represents the default user journey in a user flow.|
|[List overridesPages](../api/userflowlanguageconfiguration-list-overridespages.md)|[userFlowLanguagePage](../resources/userflowlanguagepage.md) collection|Get the userFlowLanguagePage resources from the overridesPages navigation property. Represents a custom experience for a user journey in a user flow.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the language. This field is Language ID tag [RFC 5646](https://tools.ietf.org/html/rfc5646) compliant and must be a documented Language ID.|
|isEnabled|Boolean|Indicates whether the language is enabled within the user flow.|
|displayName|String|The language name to display. This property is read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|defaultPages|[userFlowLanguagePage](../resources/userflowlanguagepage.md) collection|Collection of pages with the default content to display in a user flow for a specified language. This collection does not allow any kind of modification.|
|overridesPages|[userFlowLanguagePage](../resources/userflowlanguagepage.md) collection|Collection of pages with the overrides messages to display in a user flow for a specified language. This collection only allows to modify the content of the page, any other modification is not allowed (creation or deletion of pages).|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userFlowLanguageConfiguration",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.userFlowLanguageConfiguration",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "displayName": "String"
}
```
