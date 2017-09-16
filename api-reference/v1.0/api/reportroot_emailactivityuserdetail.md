# Get EmailActivityUserDetail report

Get an email activity user detail report.

> **Note:** For details about different report views and names, see [Office 365 Reports - Email Activity](https://support.office.com/client/Email-activity-1cbe2c00-ca65-4fb9-9663-1bbfa58ebe44).

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
GET /reports/EmailActivityUserDetail(period='D7')
GET /reports/EmailActivityUserDetail(date='2017-09-01')
```

## Optional query parameters

This method supports the `$top` and `$skipToken` [OData query parameters](../../../concepts/query_parameters.md) to customize the response.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

In the request URL, provide following query parameters with values.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
| period    | String | Specifies the aggregate type. The value must be one of the following: D7, D30, D90, or D180. D7 represents a report on the last 7 days. |
| date      | String | Specifies the day to a view of the users that performed an activity on that day. Must have a format of YYYY-MM-DD. Only available for the last 30 days. |

> **Note:** You need to set either period or date in the URL.

## Response

If successful, this method returns a `200 OK` response code and an **emailActivityUserDetail** object in the response body.

The **emailActivityUserDetail** object has the following properties.

| Property          | Type              |
| :---------------- | :---------------- |
| reportRefreshDate | Date              |
| userPrincipalName | String            |
| displayName       | String            |
| isDeleted         | Boolean           |
| deletedDate       | Date              |
| lastActivityDate  | Date              |
| sendCount         | Int64             |
| receiveCount      | Int64             |
| readCount         | Int64             |
| assignedProducts  | String collection |
| reportPeriod      | String            |

The default page size for this request is 2000 items.

## Example

The following example shows how to call this API.

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/v1.0/reports/EmailActivityUserDetail(period='D7')
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 623

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.emailActivityUserDetail)", 
  "value": [
    {
      "@odata.type": "#microsoft.graph.emailActivityUserDetail", 
      "reportRefreshDate": "2017-09-01", 
      "userPrincipalName": "userPrincipalName-value", 
      "displayName": "displayName-value", 
      "isDeleted": false, 
      "deletedDate": null, 
      "lastActivityDate": "2017-09-01", 
      "sendCount": 86, 
      "receiveCount": 3198, 
      "readCount": 388, 
      "assignedProducts": [
        "OFFICE 365 ENTERPRISE E5"
      ], 
      "reportPeriod": "7"
    }
  ]
}
```
