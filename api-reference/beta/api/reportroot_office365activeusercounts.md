# Get Office365ActiveUserCounts report

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get an Office 365 active user counts report.

> **Note:** For details about different report views and names, see [Office 365 Reports - Active Users](https://support.office.com/client/Active-Users-fc1cf1d0-cd84-43fd-adb7-a4c4dfa8112d).

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
GET /reports/Office365ActiveUserCounts(period='D7')
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

In the request URL, provide following query parameters with values.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
| period    | String | Specifies the aggregate type. The value must be one of the following: D7, D30, D90, or D180. D7 represents a report on the last 7 days. |

## Response

If successful, this method returns a `200 OK` response code and an **office365ActiveUserCounts** object in the response body.

The **office365ActiveUserCounts** object has the following properties.

| Property          | Type   |
| :---------------- | :----- |
| reportRefreshDate | Date   |
| office365         | Int64  |
| exchange          | Int64  |
| oneDrive          | Int64  |
| sharePoint        | Int64  |
| skypeForBusiness  | Int64  |
| yammer            | Int64  |
| reportDate        | Date   |
| reportPeriod      | String |

## Example

The following example shows how to call this API.

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/Office365ActiveUserCounts(period='D7')
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 410

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.office365ActiveUserCounts)", 
  "value": [
    {
      "@odata.type": "#microsoft.graph.office365ActiveUserCounts", 
      "reportRefreshDate": "2017-09-01", 
      "office365": 1718, 
      "exchange": 1429, 
      "oneDrive": 350, 
      "sharePoint": 795, 
      "skypeForBusiness": 251, 
      "yammer": 47, 
      "reportDate": "2017-08-29", 
      "reportPeriod": "7"
    }
  ]
}
```
