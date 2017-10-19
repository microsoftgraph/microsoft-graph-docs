# office365ActiveUserDetail resource type

## Properties

| Property          | Type   |
| :---------------- | :----- |
| reportRefreshDate | Date   |
| office365         | Int64  |
| exchange          | Int64  |
| oneDrive          | Int64  |
| sharePoint        | Int64  |
| skypeForBusiness  | Int64  |
| yammer            | Int64  |
| teams             | Int64  |
| reportDate        | Date   |
| reportPeriod      | String |

## JSON representation
Here is a JSON representation of the resource

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.office365ActiveUserDetail"
} -->

```http
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
```
