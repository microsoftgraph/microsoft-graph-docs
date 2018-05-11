# **List deleted items owned by a user**

Retrieves a list of recently deleted items owned by the specified user.  

Currently, delete items functionality is supported only for [group](../resources/group.md) resources owned by the user.

This is a service action, which means it does not support pagination.  The API returns up to 1,000 deleted objects owned by the user, sorted by ID.  Should the user own 1,000 or more deleted objects, the API returns nothing.

## Permissions

One of the following permissions is required to call this API. To learn
more, including how to choose permissions, see
[Permissions](https://developer.microsoft.com/en-us/graph/docs/concepts/permissions_reference).

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

| **Name**      | **Description**           |
| ------------- | ------------------------- |
| Authorization | Bearer {token}. Required. |

## Request body

```json
{
  "userId":"{id}",
  "type":"group"
}
```

## Response

Sucessful requests return `200 OK` response codes; the response object includes [directory (deleted items)](../resources/directory.md) properties.

## Example

##### Request

Here is an example of the request.

``` http
POST https://graph.microsoft.com/beta/directory/deletedItems/getUserOwnedObjects
Content-type: application/json
```

``` json
{
  "userId":"{id}",
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
              "id": "",
              "deletedDateTime": null,
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


