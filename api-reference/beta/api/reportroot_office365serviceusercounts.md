# Get Office365ServiceUserCounts report

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> Note: You can go to [Office 365 Reports - Active Users](https://support.office.com/client/Active-Users-fc1cf1d0-cd84-43fd-adb7-a4c4dfa8112d) to check the meaning of different views and names.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Reports.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/Office365ServiceUserCounts(period='D7')
```

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body

In the request URL, provide following query parameters with values.
 Parameter   | Type|Description|
-------------|-----|-----------
period|String|Specify the aggregate type. The value must be one of the 'D7', 'D30', 'D90' and 'D180'. 'D7' represents the report of the last 7 days.

## Response

If successful, this method returns a `200 OK` response code and office365ServiceUserCounts object in the response body.

The **office365ServiceUserCounts** object has the following properties.
 Property       | Type
----------------|-----
reportRefreshDate|Date
exchangeActive|Int64
exchangeInactive|Int64
oneDriveActive|Int64
oneDriveInactive|Int64
sharePointActive|Int64
sharePointInactive|Int64
skypeForBusinessActive|Int64
skypeForBusinessInactive|Int64
yammerActive|Int64
yammerInactive|Int64
reportPeriod|String

## Example

Here is an example of how to call this API.

#### Request

Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/Office365ServiceUserCounts(period='D7')
```

#### Response

Here is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 433

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.office365ServiceUserCounts)", 
  "value": [
    {
      "reportRefreshDate": "2017-09-01", 
      "exchangeActive": 2000, 
      "exchangeInactive": 2000, 
      "oneDriveActive": 1800, 
      "oneDriveInactive": 2000, 
      "sharePointActive": 2000, 
      "sharePointInactive": 2000, 
      "skypeForBusinessActive": 2000, 
      "skypeForBusinessInactive": 2000, 
      "yammerActive": 400, 
      "yammerInactive": 2000, 
      "reportPeriod": "7"
    }
  ]
}
```