---
title: "Create conditionalAccessPolicies"
description: "Create a new conditionalAccessPolicy object."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Create a conditionalAccessPolicy

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object by specifying display name, policy type, and policy description.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:--------------- |:------------------------------------------- |
| Delegated (work or school account) | Directory.AccessAsUser.All |
| Delegated (personal Microsoft account) | Not supported. |
| Delegated (work or school account) | Policy.ReadWrite.ConditionalAccess |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /conditionalAccess/policies
```

## Request headers

| Header | Value |
|:------ |:----- |
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body

In the request body, provide a JSON representation of [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object.

The following table shows the properties that are required when you create a policy.

| Parameter	| Type | Description |
|:--------- |:---- |:----------- |
| definition | String | The string version of the [conditionalAccessPolicies](../resources/conditionalaccesspolicy.md) object. |
| displayName | String | A custom name for the conditionalAccessPolicies object. |

## Response

If successful, this method returns `201 Created` response code and [conditionalAccessPolicies](../resources/conditionalaccesspolicy.md) object in the response body. The policy details are validated before being stored. If it does not pass validation, a `400 Bad Request` response code is returned. 

## Example

The following example creates a new conditional access policy.

### Request

The following is an example of the request.

```http
POST https://graph.microsoft.com/beta/conditionalaccess/policies
Content-type: application/json

{
  "displayName": "BasicpolicySample",
  "state": "disabled",
  "sessionControls": null,
  "conditions": {
    "userRiskLevels": [],
    "signInRiskLevels": [],
    "clientAppTypes": [],
    "platforms": null,
    "locations": null,
    "times": null,
    "deviceStates": null,
    "applications": {
      "includeApplications": [
        "None"
      ],
      "excludeApplications": [],
      "includeAuthenticationContext": []
    },
    "users": {
      "includeUsers": [
        "None"
      ],
      "excludeUsers": [],
      "includeGroups": [],
      "excludeGroups": [],
      "includeRoles": [],
      "excludeRoles": []
    }
  },
  "grantControls": {
    "operator": "OR",
    "builtInControls": [
      "block"
    ],
    "customAuthenticationFactors": [],
    "termsOfUse": []
  }
}
```

### Response

The following is an example of the response. 

> **Note:** The response object shown here may be truncated for brevity. All of the properties are returned from an actual call.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft-ppe.com/beta/$metadata#conditionalAccessPolicies/$entity",
  "id": "e56a956d-84ad-42d3-ae21-6141ca9f97c5",
  "displayName": "Basic Policy Sample",
  "createdDateTime": null,
  "modifiedDateTime": null,
  "state": "Disabled",
  "sessionControls": null,
  "conditions": {
    "platforms": null,
    "locations": null,
    "signInRiskLevels": [],
    "clientAppTypes": [],
    "times": null,
    "deviceStates": null,
    "applications": {
      "includeApplications": [
        "none"
      ],
      "excludeApplications": [],
      "includeAuthenticationContext": []
    },
    "users": {
      "includeUsers": [
        "none"
      ],
      "excludeUsers": [],
      "includeGroups":[],
      "excludeGroups":[],
      "includeRoles": [],
      "excludeRoles": []
    }
  },
  "grantControls": {
    "operator": "OR",
    "builtInControls": [
      "Block"
    ],
    "customControls": []
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create conditionalAccessPolicies",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->