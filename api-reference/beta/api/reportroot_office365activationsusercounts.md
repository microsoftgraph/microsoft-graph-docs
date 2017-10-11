# Office365ActivationsUserCounts function

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get the count of users that are enabled and those that have activated the Office subscription on desktop or devices.

> **Note:** For details about different report views and names, see [Office 365 Reports - Microsoft Office activations](https://support.office.com/client/Office-activations-87c24ae2-82e0-4d1e-be01-c3bcc3f18c60).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :--------------------------------------- |
| Delegated (work or school account)     | Not supported.                           |
| Delegated (personal Microsoft account) | Not supported.                           |
| Application                            | Reports.Read.All                         |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/Office365ActivationsUserCounts?$format=application/json
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Response

If successful, this method returns a `200 OK` response code and an **office365ActivationsUserCounts** object in the response body.

The **office365ActivationsUserCounts** object has the following properties.

| Property          | Type   |
| :---------------- | :----- |
| reportRefreshDate | Date   |
| productType       | String |
| assigned          | Int64  |
| activated         | Int64  |

## Example

#### Request

The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "reportroot_office365activationsusercounts"
}-->

```http
GET https://graph.microsoft.com/beta/reports/Office365ActivationsUserCounts?$format=application/json
```

#### Response

The following example shows the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.office365ActivationsUserCounts"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 233

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.office365ActivationsUserCounts)", 
  "value": [
    {
      "reportRefreshDate": "2017-09-01", 
      "productType": "Office 365 ProPlus", 
      "assigned": 2679, 
      "activated": 1710
    }
  ]
}
```
