---
title: "tokenLifetimePolicy resource type"
description: "Represents a policy that can control the lifetime of an access token issued by Azure Active Directory."
localization_priority: Normal
author: "lujiangfeng666"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# tokenLifetimePolicy resource type

Namespace: microsoft.graph



Represents a policy that can control the lifetime of a JWT access token, an ID token or a SAML 1.1/2.0 token issued by Azure Active Directory (Azure AD). You can set token lifetimes for all apps in your organization, for a multi-tenant (multi-organization) application, or for a specific service principal in your organization.  For more scenario details see [Configurable token lifetimes in Azure Active Directory](/azure/active-directory/develop/active-directory-configurable-token-lifetimes).

>**Note:** Configuring this policy for Refresh Tokens and Session Tokens is not supported.

Inherits from [stsPolicy](stsPolicy.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List tokenLifetimePolicies](../api/tokenlifetimepolicy-list.md) | [tokenLifetimePolicy](tokenlifetimepolicy.md) | Read properties and relationships of tokenLifetimePolicies objects. |
| [Create tokenLifetimePolicy](../api/tokenlifetimepolicy-post-tokenlifetimepolicies.md) | [tokenLifetimePolicy](tokenlifetimepolicy.md) | Create a tokenLifetimePolicy object. |
| [Get tokenLifetimePolicy](../api/tokenlifetimepolicy-get.md) | [tokenLifetimePolicy](tokenlifetimepolicy.md) | Read properties and relationships of a tokenLifetimePolicy object. |
| [Update tokenLifetimePolicy](../api/tokenlifetimepolicy-update.md) | None | Update a tokenLifetimePolicy object. |
| [Delete tokenLifetimePolicy](../api/tokenlifetimepolicy-delete.md) | None | Delete a tokenLifetimePolicy object. |
| [List appliesTo](../api/tokenlifetimepolicy-list-appliesto.md) | [directoryObject](directoryobject.md) collection | Get the list of directoryObjects that this policy has been applied to. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Unique identifier for this policy. Read-only.|
|definition|String collection| A string collection containing a JSON string that defines the rules and settings for this policy. See below for more details about the JSON schema for this property. Required.|
|description|String| Description for this policy.|
|displayName|String| Display name for this policy. Required.|
|isOrganizationDefault|Boolean|If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false.|


### Properties of a token lifetime policy definition
The properties below form the JSON object that represents a token lifetime policy. This JSON object must be **converted to a string with quotations escaped** to be inserted into the **definition** property. An example is shown below in JSON format:

<!-- {
  "blockType": "ignored"
}-->
``` json
"definition": [
    "{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"8:00:00\"}}"
  ]
```

>**Note:** All time durations in these properties are specified in the format "dd.hh:mm:ss".

>**Note:** Max values for properties denoted in "days" are 1 second short of the denoted number of days. For example, the max value of 1 days is specified as "23:59:59".

| Property	   | Type	|Description| Min Value | Max Value | Default Value|
|:---------------|:--------|:----------|:--------|:--------|:----|
|AccessTokenLifetime|String|Controls how long both access and ID tokens are considered valid.|10 minutes|1 day|1 hour|
|Version|Integer|Set value of 1. Required.|None|None|None|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|appliesTo|[directoryObject](directoryobject.md) collection| The [directoryObject](directoryObject.md) collection that this policy has been applied to. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.tokenLifetimePolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "definition": ["String"],
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isOrganizationDefault": true,
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "tokenLifetimePolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->