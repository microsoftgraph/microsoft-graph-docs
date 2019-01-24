---
title: "List secureScoreControlProfiles"
description: " > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported."
localization_priority: Normal
---

# List secureScoreControlProfiles

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties and relationships of a [secureScoreControlProfile](../resources/securescorecontrolprofiles.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  SecurityEvents.Read.All, SecurityEvents.ReadWrite.All.   |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | SecurityEvents.Read.All, SecurityEvents.ReadWrite.All. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/secureScoreControlProfiles
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a **secureScoreControlProfiles** object in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "securescorecontrolprofiles_list"
}-->

```http
GET https://graph.microsoft.com/beta/security/secureScoreControlProfiles
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "isCollection": true,
  "@odata.type": "microsoft.graph.secureScoreControlProfile"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "actionType": "actionType.value",
            "title": "title.value",
            "azureTenantId": "azureTenantId.value",
            "referenceId": "referenceId.value",
            "controlName": "controlName.value",
            "maxScore": 12,
            "controlCategory": "controlCategory.value",
            "service": "service.value",
            "tier": "tier.value",
            "userImpact": "userImpact.value",
            "implementationCost": "implementationCost.value",
            "rank": "rank.value",
            "remediation": "remediation.value",
            "remediationImpact": "remediationImpact.value",
            "actionUrl": "actionUrl.value",
            "deprecated": "deprecated.value",
            "lastModifiedDateTime": "lastModifiedDateTime.value",            
            "comments":"comments.value",
            "upn": "upn.value",
            "tenantNotes": "tenantNotes.value",
            "threats": [
                "threats.value"
            ],            
            "id": "id.value",
            "controlStateUpdates": [
                {
                    "assignedTo": "assignedTo.value",
                    "comment": "comment.value",
                    "state": "state.value",
                    "updatedBy": "updatedBy.value",
                    "updatedDateTime": "updatedDateTime.value"
                }
            ],
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": null,
                "subProvider": null,
                "vendor": "Microsoft"
            }
         }
     ]
}
```
<!-- {
  "type": "#page.annotation",
  "description": "List secureScoreControlProfiles",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->