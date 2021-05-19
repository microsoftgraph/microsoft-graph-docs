---
title: "userFlowLanguageConfiguration resource type"
description: "Allows a user flow to support multiple languages."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# userFlowLanguageConfiguration resource type

Namespace: microsoft.graph

Allows a user flow to support the use of multiple languages.

For [Azure Active Directory user flows](/azure/active-directory/external-identities/user-flow-customize-language), you can only leverage the built-in languages provided by Microsoft. User flows for Azure Active Directory support defining the language and strings shown to users as they go through the journeys you configure with your user flows.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get userFlowLanguageConfiguration](../api/userflowlanguageconfiguration-get.md)|[userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md)|Read the properties and relationships of a [userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) object. These objects represent a language available in a user flow.|
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
