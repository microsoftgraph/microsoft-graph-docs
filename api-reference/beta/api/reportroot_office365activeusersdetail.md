# Get Office365ActiveUsersDetail report

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
GET /reports/Office365ActiveUsersDetail(period='D7')
GET /reports/Office365ActiveUsersDetail(date='2017-09-01')
```

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body

In the request URL, provide following query parameters with values.
| Parameter   | Type|Description|
|:---------------|:--------|:----------|
|period|String|Specify the aggregate type. The value must be one of the 'D7', 'D30', 'D90' and 'D180'. 'D7' represents the report of the last 7 days.|
|date|String|Specifies the day to a view of the users that performed an activity on that day. Must have a format of YYYY-MM-DD. Only available for the last 30 days.|

> Note: You need to set either period or date in the URL.

## Response

If successful, this method returns a `200 OK` response code and office365ActiveUsersDetail object in the response body.

The **office365ActiveUsersDetail** object has the following properties.
| Property	   | Type	|
|:---------------|:--------|
|reportRefreshDate|Date|
|userPrincipalName|String|
|displayName|String|
|isDeleted|Boolean|
|deletedDate|Date|
|hasExchangeLicense|Boolean|
|hasOneDriveLicense|Boolean|
|hasSharePointLicense|Boolean|
|hasSkypeForBusinessLicense|Boolean|
|hasYammerLicense|Boolean|
|exchangeLastActivityDate|Date|
|oneDriveLastActivityDate|Date|
|sharePointLastActivityDate|Date|
|skypeForBusinessLastActivityDate|Date|
|yammerLastActivityDate|Date|
|exchangeLicenseAssignDate|Date|
|oneDriveLicenseAssignDate|Date|
|sharePointLicenseAssignDate|Date|
|skypeForBusinessLicenseAssignDate|Date|
|yammerLicenseAssignDate|Date|
|assignedProducts|String collection|

## Example

Here is an example of how to call this API.

#### Request

Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/Office365ActiveUsersDetail(period='D7')
```

#### Response

Here is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 510

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.office365ActiveUsersDetail)", 
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
      "exchangeLastActivityDate": "2017-08-30", 
      "oneDriveLastActivityDate": null, 
      "sharePointLastActivityDate": null, 
      "skypeForBusinessLastActivityDate": null, 
      "yammerLastActivityDate": null, 
      "exchangeLicenseAssignDate": "2016-05-03", 
      "oneDriveLicenseAssignDate": null, 
      "sharePointLicenseAssignDate": null, 
      "skypeForBusinessLicenseAssignDate": null, 
      "yammerLicenseAssignDate": null, 
      "assignedProducts": [
        "OFFICE 365 ENTERPRISE E5"
      ]
    }
  ]
}
```