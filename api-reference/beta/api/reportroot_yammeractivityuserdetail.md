# YammerActivityUserDetail function

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get user detail about Yammer activity.

> **Note:** For details about different report views and names, see [Office 365 Reports - Yammer Activity](https://support.office.com/client/Yammer-activity-c7c9f938-5b8e-4d52-b1a2-c7c32cb2312a).

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
GET /reports/YammerActivityUserDetail(period='{period_value}')?$format=application/json
GET /reports/YammerActivityUserDetail(date={date_value})?$format=application/json
```

## Request parameters

In the request URL, provide the following query parameters with values.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
| period    | string | Specifies the aggregate type. The supported values for {period_value} are: D7, D30, D90 and D180. These values follow the format D*n* where *n* represents the number of days over which the report is aggregated. |
| date      | Date   | Specifies the day to a view of the users that performed an activity on that day. {date_value} must have a format of YYYY-MM-DD. Specifies a date that is within the last 30 days, as the this report is only available for the last 30 days. |

> **Note:** You need to set either period or date in the URL.

This method supports the `$top` and `$skipToken` [OData query parameters](../../../concepts/query_parameters.md) to customize the response.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Response

If successful, this method returns a `200 OK` response code and an **yammerActivityUserDetail** object in the response body.

The **yammerActivityUserDetail** object has the following properties.

| Property          | Type              |
| :---------------- | :---------------- |
| reportRefreshDate | Date              |
| userPrincipalName | String            |
| displayName       | String            |
| userState         | String            |
| stateChangeDate   | Date              |
| lastActivityDate  | Date              |
| postedCount       | Int64             |
| readCount         | Int64             |
| likedCount        | Int64             |
| assignedProducts  | String collection |
| reportPeriod      | String            |

The default page size for this request is 2000 items.

## Example

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/YammerActivityUserDetail(period='D7')?$format=application/json
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 434

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.yammerActivityUserDetail)", 
  "value": [
    {
      "reportRefreshDate": "2017-09-01", 
      "userPrincipalName": "userPrincipalName-value", 
      "displayName": "displayName-value", 
      "userState": "active", 
      "stateChangeDate": "2015-08-26", 
      "lastActivityDate": "2017-09-01", 
      "postedCount": 2, 
      "readCount": 5, 
      "likedCount": 0, 
      "assignedProducts": [
        "OFFICE 365 ENTERPRISE E5"
      ], 
      "reportPeriod": "7"
    }
  ]
}
```
