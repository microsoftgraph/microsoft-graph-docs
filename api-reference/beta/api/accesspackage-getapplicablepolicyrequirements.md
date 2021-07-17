---
title: "accessPackage: getApplicablePolicyRequirements"
description: "Allows callers to find requirements to request an assignment for a specific accessPackage."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "apiPageType"
---

# accessPackage: getApplicablePolicyRequirements
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This operation allows callers to find properties that are required to successfully request an assignment for a specific accessPackage. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/accessPackages/{id}/getApplicablePolicyRequirements
```

## Function parameters

None

## Optional query parameters
None

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and an `accessPackageAssignmentRequestRequirements` collection in the response body, one object for each policy that the user is an `allowedRequestor`. If there is a policy with no requirements, the `accessPackageAssignmentRequestRequirements` will have false and null values. If there are no policies where the user is an `allowedRequestor`, an empty collection will be returned instead.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "accesspackage_getapplicablepolicyrequirements"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/fb449cf8-3a59-4d86-bdfd-a1b7299681de/getApplicablePolicyRequirements
```

### Response
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageAssignmentRequestRequirements)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "policyId": "449feb20-7040-499a-ba91-bdfb93ede34b", 
            "policyDisplayName": "Initial Policy", 
            "policyDescription": "Initial Policy", 
            "isApprovalRequired": false, 
            "isApprovalRequiredForExtension": false, 
            "isRequestorJustificationRequired": false, 
            "questions": [], 
            "existingAnswers": [] 
        }
    ]
}
``` 
