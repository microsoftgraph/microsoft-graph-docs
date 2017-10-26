# identityExperienceFrameworkPolicy resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an Identity Experience Framework Policy (also called custom policy) in Azure Active Directory B2C.  An Identity Experience Framework Policy gives you full control over the identity workflow.  Creating one enables:

* Control of each step in the user journey through the identity stack.
* Federation to any SAML, Open ID Connect, or OAuth2 identity provider.
* Integration with other systems or user data stores by calling REST endpoints.
* Transformation of claims and customization of tokens issued to the relying party application.

For more information, visit [https://docs.microsoft.com/en-us/azure/active-directory-b2c/active-directory-b2c-overview-custom](https://docs.microsoft.com/en-us/azure/active-directory-b2c/active-directory-b2c-overview-custom).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create identityExperienceFrameworkPolicy](../api/identityexperienceframeworkpolicy_post_identityexperienceframeworkpolicy.md)|identityExperienceFrameworkPolicy|Create a new identityExperienceFrameworkPolicy.|
|[Get identityExperienceFrameworkPolicy](../api/identityexperienceframeworkpolicy_get.md) |identityExperienceFrameworkPolicy|Read properties of an existing identityExperienceFrameworkPolicy.|
|[List identityExperienceFrameworkPolicy](../api/identityexperienceframeworkpolicy_list.md)|identityExperienceFrameworkPolicy collection|List all identityExperienceFrameworkPolicies configured in a tenant.|
|[Update identityExperienceFrameworkPolicy](../api/identityexperienceframeworkpolicy_update.md)|None|Update an existing identityExperienceFrameworkPolicy.|
|[Delete identityExperienceFrameworkPolicy](../api/identityexperienceframeworkpolicy_delete.md)|None|Delete an existing identityExperienceFrameworkPolicy.|
|[Copy identityExperienceFrameworkPolicy](../api/identityexperienceframeworkpolicy_copy.md)|identityExperienceFrameworkPolicy|Make a copy of an identityExperienceFrameworkPolicy in the same tenant.|
|[Swap identityExperienceFrameworkPolicy](../api/identityexperienceframeworkpolicy_swap.md)|None|Swap two identityExperienceFrameworkPolicies such as a staged and production policy.|

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

## XML representation

The following is an XML representation of the policy.  For the complete XML schema, refer to the TrustFrameworkPolicy xsd file here: [https://github.com/Azure-Samples/active-directory-b2c-custom-policy-starterpack](https://github.com/Azure-Samples/active-directory-b2c-custom-policy-starterpack).

```xml
<TrustFrameworkPolicy xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/online/cpim/schemas/2013/06" PolicySchemaVersion="0.3.0.0" TenantId="tenantName.onmicrosoft.com" PolicyId="B2C_1A_SocialAndLocalAccounts_Base">
    <!---PolicyContent-->
</TrustFrameworkPolicy>
```
