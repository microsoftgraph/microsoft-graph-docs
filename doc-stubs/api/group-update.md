---
title: "Update group"
description: "Update the properties of a group object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update group
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [group](../resources/group.md) object.

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
PATCH /groups/{groupsId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [group](../resources/group.md) object.

The following table shows the properties that are required when you update the [group](../resources/group.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|assignedLabels|[assignedLabel](../resources/assignedlabel.md) collection|**TODO: Add Description**|
|assignedLicenses|[assignedLicense](../resources/assignedlicense.md) collection|**TODO: Add Description**|
|classification|String|**TODO: Add Description**|
|createdByAppId|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|expirationDateTime|DateTimeOffset|**TODO: Add Description**|
|groupTypes|String collection|**TODO: Add Description**|
|hasMembersWithLicenseErrors|Boolean|**TODO: Add Description**|
|infoCatalogs|String collection|**TODO: Add Description**|
|isAssignableToRole|Boolean|**TODO: Add Description**|
|licenseProcessingState|[licenseProcessingState](../resources/licenseprocessingstate.md)|**TODO: Add Description**|
|mail|String|**TODO: Add Description**|
|mailEnabled|Boolean|**TODO: Add Description**|
|mailNickname|String|**TODO: Add Description**|
|mdmAppId|String|**TODO: Add Description**|
|membershipRule|String|**TODO: Add Description**|
|membershipRuleProcessingState|String|**TODO: Add Description**|
|onPremisesDomainName|String|**TODO: Add Description**|
|onPremisesLastSyncDateTime|DateTimeOffset|**TODO: Add Description**|
|onPremisesNetBiosName|String|**TODO: Add Description**|
|onPremisesProvisioningErrors|[onPremisesProvisioningError](../resources/onpremisesprovisioningerror.md) collection|**TODO: Add Description**|
|onPremisesSamAccountName|String|**TODO: Add Description**|
|onPremisesSecurityIdentifier|String|**TODO: Add Description**|
|onPremisesSyncEnabled|Boolean|**TODO: Add Description**|
|preferredDataLocation|String|**TODO: Add Description**|
|preferredLanguage|String|**TODO: Add Description**|
|proxyAddresses|String collection|**TODO: Add Description**|
|renewedDateTime|DateTimeOffset|**TODO: Add Description**|
|resourceBehaviorOptions|String collection|**TODO: Add Description**|
|resourceProvisioningOptions|String collection|**TODO: Add Description**|
|securityEnabled|Boolean|**TODO: Add Description**|
|securityIdentifier|String|**TODO: Add Description**|
|theme|String|**TODO: Add Description**|
|visibility|String|**TODO: Add Description**|
|accessType|groupAccessType|**TODO: Add Description**. Possible values are: `none`, `private`, `secret`, `public`.|
|allowExternalSenders|Boolean|**TODO: Add Description**|
|autoSubscribeNewMembers|Boolean|**TODO: Add Description**|
|isFavorite|Boolean|**TODO: Add Description**|
|isSubscribedByMail|Boolean|**TODO: Add Description**|
|unseenCount|Int32|**TODO: Add Description**|
|unseenConversationsCount|Int32|**TODO: Add Description**|
|unseenMessagesCount|Int32|**TODO: Add Description**|
|hideFromOutlookClients|Boolean|**TODO: Add Description**|
|hideFromAddressLists|Boolean|**TODO: Add Description**|
|membershipRuleProcessingStatus|[membershipRuleProcessingStatus](../resources/membershipruleprocessingstatus.md)|**TODO: Add Description**|
|isArchived|Boolean|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [group](../resources/group.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_group"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/groups/{groupsId}
Content-Type: application/json
Content-length: 2156

{
  "@odata.type": "#microsoft.graph.group",
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
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```

