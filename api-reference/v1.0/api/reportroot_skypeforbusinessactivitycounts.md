# Get SkypeForBusinessActivityCounts report

Get a Skype for Business activity counts report.

> **Note:** For details about different report views and names, see [Office 365 Reports - Skype for Business activity](https://support.office.com/client/Skype-for-Business-Online-activity-8cbe2eb2-1194-4fd7-b1ee-9f9287c82424).

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
GET /reports/SkypeForBusinessActivityCounts(period='D7')
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

If successful, this method returns a `200 OK` response code and an **skypeForBusinessActivityCounts** object in the response body.

The **skypeForBusinessActivityCounts** object has the following properties.

| Property          | Type   |
| :---------------- | :----- |
| peerToPeer        | Int64  |
| organized         | Int64  |
| participated      | Int64  |
| reportRefreshDate | Date   |
| reportDate        | Date   |
| reportPeriod      | String |

## Example

The following example shows how to call this API.

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/v1.0/reports/SkypeForBusinessActivityCounts(period='D7')
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 352

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.skypeForBusinessActivityCounts)", 
  "value": [
    {
      "@odata.type": "#microsoft.graph.skypeForBusinessActivityCounts", 
      "peerToPeer": 3436, 
      "organized": 58, 
      "participated": 209, 
      "reportRefreshDate": "2017-09-01", 
      "reportDate": "2017-09-01", 
      "reportPeriod": "7"
    }
  ]
}
```
