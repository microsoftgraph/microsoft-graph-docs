---
title: "Get group"
description: "Read the properties and relationships of a group object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get group
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [group](../resources/group.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /groups/{groupsId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [group](../resources/group.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_group"
}
-->
``` http
GET https://graph.microsoft.com/beta/groups/{groupsId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.group",
    "id": "c60d1845-1845-c60d-4518-0dc645180dc6",
    "deletedDateTime": "String (timestamp)",
    "assignedLabels": [
      {
        "@odata.type": "microsoft.graph.assignedLabel"
      }
    ],
    "assignedLicenses": [
      {
        "@odata.type": "microsoft.graph.assignedLicense"
      }
    ],
    "classification": "String",
    "createdByAppId": "String",
    "createdDateTime": "String (timestamp)",
    "description": "String",
    "displayName": "String",
    "expirationDateTime": "String (timestamp)",
    "groupTypes": [
      "String"
    ],
    "hasMembersWithLicenseErrors": "Boolean",
    "infoCatalogs": [
      "String"
    ],
    "isAssignableToRole": "Boolean",
    "licenseProcessingState": {
      "@odata.type": "microsoft.graph.licenseProcessingState"
    },
    "mail": "String",
    "mailEnabled": "Boolean",
    "mailNickname": "String",
    "mdmAppId": "String",
    "membershipRule": "String",
    "membershipRuleProcessingState": "String",
    "onPremisesDomainName": "String",
    "onPremisesLastSyncDateTime": "String (timestamp)",
    "onPremisesNetBiosName": "String",
    "onPremisesProvisioningErrors": [
      {
        "@odata.type": "microsoft.graph.onPremisesProvisioningError"
      }
    ],
    "onPremisesSamAccountName": "String",
    "onPremisesSecurityIdentifier": "String",
    "onPremisesSyncEnabled": "Boolean",
    "preferredDataLocation": "String",
    "preferredLanguage": "String",
    "proxyAddresses": [
      "String"
    ],
    "renewedDateTime": "String (timestamp)",
    "resourceBehaviorOptions": [
      "String"
    ],
    "resourceProvisioningOptions": [
      "String"
    ],
    "securityEnabled": "Boolean",
    "securityIdentifier": "String",
    "theme": "String",
    "visibility": "String",
    "accessType": "String",
    "allowExternalSenders": "Boolean",
    "autoSubscribeNewMembers": "Boolean",
    "isFavorite": "Boolean",
    "isSubscribedByMail": "Boolean",
    "unseenCount": "Integer",
    "unseenConversationsCount": "Integer",
    "unseenMessagesCount": "Integer",
    "hideFromOutlookClients": "Boolean",
    "hideFromAddressLists": "Boolean",
    "membershipRuleProcessingStatus": {
      "@odata.type": "microsoft.graph.membershipRuleProcessingStatus"
    },
    "isArchived": "Boolean"
  }
}
```

