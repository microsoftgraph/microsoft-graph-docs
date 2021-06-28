---
title: "policyRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# policyRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get policyRoot](../api/policyroot-get.md)|[policyRoot](../resources/policyroot.md)|Read the properties and relationships of a [policyRoot](../resources/policyroot.md) object.|
|[Update policyRoot](../api/policyroot-update.md)|[policyRoot](../resources/policyroot.md)|Update the properties of a [policyRoot](../resources/policyroot.md) object.|
|[List privateLinkResourcePolicies](../api/policyroot-list-privatelinkresourcepolicies.md)|[privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md) collection|Get the privateLinkResourcePolicy resources from the privateLinkResourcePolicies navigation property.|
|[Create privateLinkResourcePolicy](../api/policyroot-post-privatelinkresourcepolicies.md)|[privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md)|Create a new privateLinkResourcePolicy object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activityBasedTimeoutPolicies|[activityBasedTimeoutPolicy](../resources/activitybasedtimeoutpolicy.md) collection|**TODO: Add Description**|
|adminConsentRequestPolicy|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|**TODO: Add Description**|
|authenticationFlowsPolicy|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md)|**TODO: Add Description**|
|authenticationMethodsPolicy|[authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md)|**TODO: Add Description**|
|authorizationPolicy|[authorizationPolicy](../resources/authorizationpolicy.md) collection|**TODO: Add Description**|
|b2cAuthenticationMethodsPolicy|[b2cAuthenticationMethodsPolicy](../resources/b2cauthenticationmethodspolicy.md)|**TODO: Add Description**|
|claimsMappingPolicies|[claimsMappingPolicy](../resources/claimsmappingpolicy.md) collection|**TODO: Add Description**|
|conditionalAccessPolicies|[conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) collection|**TODO: Add Description**|
|deviceRegistrationPolicy|[deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md)|**TODO: Add Description**|
|directoryRoleAccessReviewPolicy|[directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md)|**TODO: Add Description**|
|featureRolloutPolicies|[featureRolloutPolicy](../resources/featurerolloutpolicy.md) collection|**TODO: Add Description**|
|homeRealmDiscoveryPolicies|[homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) collection|**TODO: Add Description**|
|identitySecurityDefaultsEnforcementPolicy|[identitySecurityDefaultsEnforcementPolicy](../resources/identitysecuritydefaultsenforcementpolicy.md)|**TODO: Add Description**|
|permissionGrantPolicies|[permissionGrantPolicy](../resources/permissiongrantpolicy.md) collection|**TODO: Add Description**|
|privateLinkResourcePolicies|[privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md) collection|**TODO: Add Description**|
|roleManagementPolicies|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) collection|**TODO: Add Description**|
|roleManagementPolicyAssignments|[unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) collection|**TODO: Add Description**|
|tokenIssuancePolicies|[tokenIssuancePolicy](../resources/tokenissuancepolicy.md) collection|**TODO: Add Description**|
|tokenLifetimePolicies|[tokenLifetimePolicy](../resources/tokenlifetimepolicy.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policyRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyRoot"
}
```

