---
title: "claimsMappingPolicy resource type"
description: "Represents the claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application."
localization_priority: Normal
author: "paulgarn"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# claimsMappingPolicy resource type

Namespace: microsoft.graph

Represents the claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application. You can use claims-mapping policies to:

- Select which claims are included in tokens
- Create claim types that do not already exist
- Choose or change the source of data emitted in specific claims  

For more scenario and configuration details see [How to: Customize claims emitted in tokens for a specific app in a tenant](/azure/active-directory/develop/active-directory-claims-mapping#claims-mapping-policy-properties).

Inherits from [stsPolicy](stsPolicy.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create claimsMappingPolicy](../api/claimsmappingpolicy-post-claimsmappingpolicies.md) | [claimsMappingPolicy](claimsmappingpolicy.md) | Create a claimsMappingPolicy object. |
| [Get claimsMappingPolicy](../api/claimsmappingpolicy-get.md) | [claimsMappingPolicy](claimsmappingpolicy.md) | Read properties and relationships of a claimsMappingPolicy object. |
| [List claimsMappingPolicies](../api/claimsmappingpolicy-list.md) | [claimsMappingPolicy](claimsmappingpolicy.md) | Read properties and relationships of claimsMappingPolicies objects. |
| [Update claimsMappingPolicy](../api/claimsmappingpolicy-update.md) | None | Update a claimsMappingPolicy object. |
| [Delete claimsMappingPolicy](../api/claimsmappingpolicy-delete.md) | None | Delete a claimsMappingPolicy object. |
| [List appliesTo](../api/claimsmappingpolicy-list-appliesto.md) | [directoryObject](directoryobject.md) collection | Get the list of directoryObjects that this policy has been applied to. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Unique identifier for this policy. Read-only.|
|definition|String collection| A string collection containing a JSON string that defines the rules and settings for this policy. See below for more details about the JSON schema for this property. Required.|
|description|String| Description for this policy.|
|displayName|String| Display name for this policy. Required.|
|isOrganizationDefault|Boolean|Ignore this property. The claims-mapping policy can only be applied to service principals and can't be set globally for the organization.|

### Properties of a claims-mapping policy definition

The properties below form the JSON object that represents a claims-mapping policy. This JSON object must be **converted to a string with quotations escaped** to be inserted into the **definition** property. A few definition examples are shown below:

#### Example: **definition** to include the EmployeeID and TenantCountry as claims in tokens
<!-- {
  "blockType": "ignored"
}-->
``` json
{
  "definition": [
    "{\"ClaimsMappingPolicy\":{
      \"Version\":1,
      \"IncludeBasicClaimSet\":\"true\", 
      \"ClaimsSchema\": [
        {\"Source\":\"user\",\"ID\":\"employeeid\",\"SamlClaimType\":\"http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name\",\"JwtClaimType\":\"name\"},{\"Source\":\"company\",\"ID\":\"tenantcountry\",\"SamlClaimType\":\"http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country\",\"JwtClaimType\":\"country\"}
        ]
      }
    }"
  ]
}
```

#### Example: **definition** that uses a claims transformation
<!-- {
  "blockType": "ignored"
}-->
``` json
{
  "definition": [
    "{\"ClaimsMappingPolicy\":{
      \"Version\":1,
      \"IncludeBasicClaimSet\":\"true\", 
      \"ClaimsSchema\":[
        {\"Source\":\"user\",\"ID\":\"extensionattribute1\"},{\"Source\":\"transformation\",\"ID\":\"DataJoin\",\"TransformationId\":\"JoinTheData\",\"JwtClaimType\":\"JoinedData\"}
        ],
      \"ClaimsTransformation\":[
        {\"ID\":\"JoinTheData\",\"TransformationMethod\":\"Join\",\"InputClaims\":[{\"ClaimTypeReferenceId\":\"extensionattribute1\",\"TransformationClaimType\":\"string1\"}], \"InputParameters\": [{\"ID\":\"string2\",\"Value\":\"sandbox\"},{\"ID\":\"separator\",\"Value\":\".\"}],\"OutputClaims\":[{\"ClaimTypeReferenceId\":\"DataJoin\",\"TransformationClaimType\":\"outputClaim\"}]}
        ]
      }
    }"
  ]
}
```

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|Version|Integer|Set value of 1. Required.|
|IncludeBasicClaimSet|Boolean|If set to true, all claims in the basic claim set are emitted in tokens affected by the policy. If set to false, claims in the basic claim set are not in the tokens, unless they are individually added in the ClaimsSchema property of the same policy.|
|ClaimsSchema|JSON object|Defines which claims are present in the tokens affected by the policy, in addition to the basic claim set and the core claim set. For each claim schema entry defined in this property, certain information is required. Specify where the data is coming from (Value or Source/ID pair), and which claim the data is emitted as (Claim Type). For more information, see [ClaimsSchema definition](/azure/active-directory/develop/active-directory-claims-mapping#claims-schema).|
|ClaimsTransformation|JSON object| Defines common transformations that can be applied to source data, to generate the output data for claims specified in the ClaimsSchema. For more information, see [ClaimsTransformation definition](/azure/active-directory/develop/active-directory-claims-mapping#claims-transformation).|


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
  "@odata.type": "microsoft.graph.claimsMappingPolicy",
  "baseType": "microsoft.graph.stsPolicy",
  "keyProperty": "id"
}-->

```json
{
  "definition": ["String"],
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isOrganizationDefault": false,
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "claimsMappingPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->