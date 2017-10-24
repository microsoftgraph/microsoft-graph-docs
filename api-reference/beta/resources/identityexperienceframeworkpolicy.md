# identityExperienceFrameworkPolicy resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an Identity Experience Framework Policy (also called Custom Policy) in Azure Active Directory B2C.  A custom policy in Azure AD B2C gives you full control over the identity authorization workflow.

Creating an Identity Experience Framework Policy in your Azure AD B2C tenant enables you to:

* Control each step in the user journey through the identity stack.
* Federate to any SAML, Open ID Connect, or OAuth2 identity provider.
* Integrate with other systems or user data stores by calling REST endpoints.
* Transform claims and customize tokens issued to the relying party application.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get identityExperienceFrameworkPolicy](../api/identityprovider_get.md) |identityExperienceFrameworkPolicy|Read properties of an existing identityExperienceFrameworkPolicy.|
|[Create identityExperienceFrameworkPolicy](../api/identityprovider_post_identityproviders.md)|identityExperienceFrameworkPolicy|Create a new identityExperienceFrameworkPolicy.|
|[Update identityExperienceFrameworkPolicy](../api/identityprovider_update.md)|None|Update an existing identityExperienceFrameworkPolicy.|
|[Delete identityExperienceFrameworkPolicy](../api/identityprovider_delete.md)|None|Delete an existing identityExperienceFrameworkPolicy.|
|[List identityExperienceFrameworkPolicy](../api/identityprovider_list.md)|identityExperienceFrameworkPolicy collection|List all identityExperienceFrameworkPolicies configured in a tenant.|
|[Copy identityExperienceFrameworkPolicy](../api/identityprovider_list.md)|identityExperienceFrameworkPolicy|Make a copy of an identityExperienceFrameworkPolicy in the same tenant.|
|[Swap identityExperienceFrameworkPolicy](../api/identityprovider_list.md)|None|Swap two identityExperienceFrameworkPolicies such as a staged and production policy.|

## Properties

|Property|Type|Required|Nullable|Description|
|:---------------|:--------|:--------|:--------|:----------|
|id|String|Yes|No|The id of the policy.|


## JSON representation

The following is a JSON representation of the resource.

```json
{
    "@odata.mediaReadLink": "identityExperienceFrameworkPolicies/B2C_1A_Test/$value",
    "id": "B2C_1A_Test"
}
```
