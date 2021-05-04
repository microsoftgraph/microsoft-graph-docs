---
title: "b2cIdentityUserFlow resource type"
description: "Represents a user flow within an Azure Active Directory B2C tenant."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "identity-and-sign-in"
author: "jkdouglas"
---

# b2cIdentityUserFlow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user flow within an Azure Active Directory B2C tenant.

To help you set up the most common identity tasks for your applications, Azure Active Directory B2C includes predefined, configurable policies called [user flows](/azure/active-directory-b2c/user-flow-overview). A user flow lets you determine how users interact with your application when they do things like sign in, sign up, edit a profile, or reset a password. You can create many user flows of different types in your tenant and use them in your applications as needed. With user flows, you can control the following capabilities:

- Account types used for sign-in, such as social accounts like a Facebook or local account
- Attributes to be collected from the consumer, such as first name, postal code, and shoe size
- Azure Multi-Factor Authentication
- Customization of the user interface
- Information that the application receives in the token

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List user flows](../api/identitycontainer-list-b2cuserflows.md)|b2cIdentityUserFlow collection|Retrieve all B2C user flows.|
|[Get user flow](../api/b2cidentityuserflow-get.md)|b2cIdentityUserFlow|Retrieve properties of a B2C user flow.|
|[Create user flow](../api/identitycontainer-post-b2cuserflows.md)|b2cIdentityUserFlow|Create a new B2C user flow.|
|[Update user flow](../api/b2cidentityuserflow-update.md)|b2cIdentityUserFlow|Update the properties of a B2C user flow.|
|[Delete user flow](../api/b2cidentityuserflow-delete.md)|None|Delete a B2C user flow.|
|[List identity providers](../api/b2cidentityuserflow-list-identityproviders.md)|[identityProvider](../resources/identityProvider.md) collection|Retrieve all identity providers in a B2C user flow.|
|[Add identity provider](../api/b2cidentityuserflow-post-identityproviders.md)|None|Add an identity provider to a B2C user flow.|
|[Remove identity provider](../api/b2cidentityuserflow-delete-identityproviders.md)|None|Remove an identity provider from a B2C user flow.|
|[List user attribute assignments](../api/b2cidentityuserflow-list-userattributeassignments.md)|[identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) collection|Retrieve all user attribute assignments in a B2C user flow.|
|[Create user attribute assignment](../api/b2cidentityuserflow-post-userattributeassignments.md)|[identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md)|Create a user attribute assignment in a B2C user flow.|
|[List languages](../api/b2cidentityuserflow-list-languages.md)|[userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) collection|Retrieve all languages within a B2C user flow.|
|[Create language](../api/b2cidentityuserflow-put-languages.md)|[userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md)|Creates a custom language in a B2C user flow.|
|[Get API connectors configuration for user flow](../api/b2cidentityuserflow-get-apiConnectorConfiguration.md)|[userFlowApiConnectorConfiguration](../resources/userflowapiconnectorconfiguration.md)| Get the configuration for API connectors used in the user flow. The $expand query parameter is not supported for this method.|
|[Configure an API connector in a user flow](../api/b2cidentityuserflow-put-apiConnectorConfiguration.md)|None| Configure an API connector for specific steps in a user flow by updating the [apiConnectorConfiguration](../resources/userflowapiconnectorconfiguration.md) property.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The name of the user flow. This is a required value and is immutable after it's created. The name will be prefixed with the value of `B2C_1_` after creation.|
|userFlowType|userFlowType|The [type of user flow](/azure/active-directory-b2c/user-flow-versions). The supported values for **userFlowType** are: `signUp`, `signIn`, `signUpOrSignIn`, `passwordReset`, `profileUpdate`, `resourceOwner`.|
|userFlowTypeVersion|Single|The version of the user flow.|
|isLanguageCustomizationEnabled|Boolean|The property that determines whether language customization is enabled within the B2C user flow. Language customization is not enabled by default for B2C user flows.|
|defaultLanguageTag|String|Indicates the default language of the b2cIdentityUserFlow that is used when no `ui_locale` tag is specified in the request. This field is [RFC 5646](https://tools.ietf.org/html/rfc5646) compliant.|
|apiConnectorConfiguration|[userFlowApiConnectorConfiguration](../resources/userflowapiconnectorconfiguration.md)|Configuration for enabling an API connector for use as part of the user flow. You can only obtain the value of this object using [Get userFlowApiConnectorConfiguration](../api/b2cidentityuserflow-get-apiConnectorConfiguration.md).|

## Relationships

| Relationship       | Type  |Description|
|:---------------|:--------|:----------|
|identityProviders|[identityProvider](../resources/identityprovider.md) collection|The identity providers included in the user flow.|
|userAttributeAssignments|[identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) collection|The user attribute assignments included in the user flow.|
|languages|[userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) collection|The languages supported for customization within the user flow. Language customization is not enabled by default in B2C user flows.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.b2cIdentityUserFlow",
  "optionalProperties": [],
  "keyProperty": "id"
} -->

```json
{
    "id": "String (identifier)",
    "userFlowType": "String",
    "userFlowTypeVersion": "Single",
    "isLanguageCustomizationEnabled": "Boolean",
    "defaultLanguageTag": "String",
    "identityProviders": [{"@odata.type": "microsoft.graph.identityProvider"}],
    "userAttributeAssignments": [{"@odate.type": "microsoft.graph.identityUserFlowAttributeAssignment"}],
    "languages": [{"@odata.type": "microsoft.graph.userFlowLanguageConfiguration"}],
    "apiConnectorConfiguration": {
      "@odata.type": "microsoft.graph.userFlowApiConnectorConfiguration"
    }
}
```
