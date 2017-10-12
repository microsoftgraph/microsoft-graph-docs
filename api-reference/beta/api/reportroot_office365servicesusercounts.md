# reportRoot: Office365ServicesUserCounts function

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get the count of users by activity type and service.

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
GET /reports/Office365ServicesUserCounts(period='{period_value}')
```

## Request parameters

In the request URL, provide the following query parameter with a valid value.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
| period    | string | Specifies the aggregate type. The supported values for {period_value} are: D7, D30, D90, and D180. These values follow the format D*n* where *n* represents the number of days over which the report is aggregated. Required. |

This method supports the `$format` [OData query parameters](../../../concepts/query_parameters.md) to customize the response. `$format` must be set application/json value.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Response

If successful, this method returns a `200 OK` response code and an **office365ServicesUserCounts** object in the response body.

The **office365ServicesUserCounts** object has the following properties.

| Property                 | Type   |
| :----------------------- | :----- |
| reportRefreshDate        | Date   |
| exchangeActive           | Int64  |
| exchangeInactive         | Int64  |
| oneDriveActive           | Int64  |
| oneDriveInactive         | Int64  |
| sharePointActive         | Int64  |
| sharePointInactive       | Int64  |
| skypeForBusinessActive   | Int64  |
| skypeForBusinessInactive | Int64  |
| yammerActive             | Int64  |
| yammerInactive           | Int64  |
| teamsActive              | Int64  |
| teamsInactive            | Int64  |
| reportPeriod             | String |

## Example

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "reportroot_office365servicesusercounts"
}-->

```http
GET https://graph.microsoft.com/beta/reports/Office365ServicesUserCounts(period='D7')?$format=application/json
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.office365ServicesUserCounts"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 458

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.office365ServicesUserCounts)", 
  "value": [
    {
      "reportRefreshDate": "2017-09-01", 
      "exchangeActive": 2591, 
      "exchangeInactive": 1426, 
      "oneDriveActive": 1800, 
      "oneDriveInactive": 2451, 
      "sharePointActive": 2286, 
      "sharePointInactive": 1815, 
      "skypeForBusinessActive": 2463, 
      "skypeForBusinessInactive": 1947, 
      "yammerActive": 473, 
      "yammerInactive": 2526, 
      "teamsActive": 846, 
      "teamsInactive": 1960, 
      "reportPeriod": "7"
    }
  ]
}
```
