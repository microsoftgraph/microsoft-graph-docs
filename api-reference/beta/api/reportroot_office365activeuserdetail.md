# Office365ActiveUserDetail function

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get details about Office 365 active users.

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
GET /reports/Office365ActiveUserDetail(period='{period_value}')?$format=application/json
GET /reports/Office365ActiveUserDetail(date={date_value})?$format=application/json
```

## Request parameters

In the request URL, provide the chosen query parameter with a valid value.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
| period    | string | Specifies the aggregate type. The supported values for {period_value} are: D7, D30, D90, and D180. These values follow the format D*n* where *n* represents the number of days over which the report is aggregated. |
| date      | Date   | Specifies the date for which you would like to view the users who performed any activity. {date_value} must have a format of YYYY-MM-DD. Specifies a date that is within the last 30 days, as this report is only available for the last 30 days. |

> **Note:** You need to set either period or date in the URL.

This method supports the `$top` and `$skipToken` [OData query parameters](../../../concepts/query_parameters.md) to customize the response.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Response

If successful, this method returns a `200 OK` response code and an **office365ActiveUserDetail** object in the response body.

The **office365ActiveUserDetail** object has the following properties.

| Property                          | Type              |
| :-------------------------------- | :---------------- |
| reportRefreshDate                 | Date              |
| userPrincipalName                 | String            |
| displayName                       | String            |
| isDeleted                         | Boolean           |
| deletedDate                       | Date              |
| hasExchangeLicense                | Boolean           |
| hasOneDriveLicense                | Boolean           |
| hasSharePointLicense              | Boolean           |
| hasSkypeForBusinessLicense        | Boolean           |
| hasYammerLicense                  | Boolean           |
| hasTeamsLicense                   | Boolean           |
| exchangeLastActivityDate          | Date              |
| oneDriveLastActivityDate          | Date              |
| sharePointLastActivityDate        | Date              |
| skypeForBusinessLastActivityDate  | Date              |
| yammerLastActivityDate            | Date              |
| teamsLastActivityDate             | Date              |
| exchangeLicenseAssignDate         | Date              |
| oneDriveLicenseAssignDate         | Date              |
| sharePointLicenseAssignDate       | Date              |
| skypeForBusinessLicenseAssignDate | Date              |
| yammerLicenseAssignDate           | Date              |
| teamsLicenseAssignDate            | Date              |
| assignedProducts                  | String collection |

The default page size for this request is 2000 items.

## Example

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "reportroot_office365activeuserdetail"
}-->

```http
GET https://graph.microsoft.com/beta/reports/Office365ActiveUserDetail(period='D7')?$format=application/json
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.office365ActiveUserDetail"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 853

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.office365ActiveUserDetail)", 
  "value": [
    {
      "reportRefreshDate": "2017-09-01", 
      "userPrincipalName": "userprincipalname-value", 
      "displayName": "displayname-value", 
      "isDeleted": false, 
      "deletedDate": null, 
      "hasExchangeLicense": true, 
      "hasOneDriveLicense": false, 
      "hasSharePointLicense": false, 
      "hasSkypeForBusinessLicense": false, 
      "hasYammerLicense": false, 
      "hasTeamsLicense": false, 
      "exchangeLastActivityDate": "2017-08-30", 
      "oneDriveLastActivityDate": null, 
      "sharePointLastActivityDate": null, 
      "skypeForBusinessLastActivityDate": null, 
      "yammerLastActivityDate": null, 
      "teamsLastActivityDate": null, 
      "exchangeLicenseAssignDate": "2016-05-03", 
      "oneDriveLicenseAssignDate": null, 
      "sharePointLicenseAssignDate": null, 
      "skypeForBusinessLicenseAssignDate": null, 
      "yammerLicenseAssignDate": null, 
      "teamsLicenseAssignDate": null, 
      "assignedProducts": [
        "OFFICE 365 ENTERPRISE E5"
      ]
    }
  ]
}
```
