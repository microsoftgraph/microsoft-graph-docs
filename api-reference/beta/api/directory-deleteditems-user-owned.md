---
title: "List deleted items owned by a user"
description: "Retrieves a list of recently deleted items owned by the specified user.  "
author: "keylimesoda"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# List deleted items owned by a user

Namespace: microsoft.graph

Retrieves a list of recently deleted items owned by the specified user.  

Currently, list deleted items functionality is supported only for [application](../resources/application.md) and [group](../resources/group.md) resources owned by the user.

This is a service action, which means it does not support pagination.  The API returns up to 1,000 deleted objects owned by the user, sorted by ID.

## Permissions

One of the following permissions is required to call this API. To learn
more, including how to choose permissions, see
[Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
| --- | --- |
| Delegated (work or school account) | Group.Read.All, Group.ReadWrite.All |
| Delegated (personal Microsoft account) |  Not supported. |
| Application | Group.Read.All, Group.ReadWrite.All  |

## HTTP request

``` http
POST /directory/deletedItems/getUserOwnedObjects
```

## Request headers

| Name          | Description               |
| ------------- | ------------------------- |
| Authorization | Bearer {token}. Required. |

## Request body

The request body requires the following parameters:

| Parameter    | Type |Description|
|:---------------|:--------|:----------|
|userId|String|ID of the owner.|
|type|String|Type of owned objects to return; `group` is currently the only supported value.|


## Response

Successful requests return `200 OK` response codes; the response object includes [directory (deleted items)](../resources/directory.md) properties.

## Example

##### Request

Here is an example of the request.

``` http
POST https://graph.microsoft.com/beta/directory/deletedItems/getUserOwnedObjects
Content-type: application/json

{
  "userId":"55ac777c-109e-4022-b58c-470c8fcb6892",
  "type":"group"
}
```

###### Response

Here is an example of the response. Note: This response object may be truncated for brevity. All supported properties are returned
from actual calls.

``` http
HTTP/1.1 200
Content-type: application/json
Content-length: 1249

{
"value": [
          {
              "@odata.type": "#microsoft.graph.group",
              "id": "bfa7033a-7367-4644-85f5-95aaf385cbd7",
              "deletedDateTime": "2018-04-01T12:39:16Z",
              "classification": null,
              "createdDateTime": "2017-03-22T12:39:16Z",
              "description": null,
              "displayName": "Test",
              "groupTypes": [
                  "Unified"
              ],
              "mail": "Test@contoso.com",
              "mailEnabled": true,
              "mailNickname": "Test",
              "membershipRule": null,
              "membershipRuleProcessingState": null,
              "preferredDataLocation": null,
              "preferredLanguage": null,
              "proxyAddresses": [
                  "SMTP:Test@contoso.com"
              ],
              "renewedDateTime": "2017-09-22T22:30:39Z",
              "securityEnabled": false,
              "theme": null,
              "visibility": "Public"
          } 
        ]
 }
```