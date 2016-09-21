# Get organization

Retrieve the properties and relationships of currently authenticated organization.
## Prerequisites
One of the following **scopes** is required to execute this API:

*User.Read*; *Directory.Read.All*; *Directory.AccessAsUser*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /organization

```
## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [organization](../resources/organization.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_organization"
}-->
```http
GET https://graph.microsoft.com/v1.0/organization
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organization"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#organization",
    "value": [
        {
            "id": "a5ef1f16-b6a9-4c81-bf2a-5dbad9b63221",
            "assignedPlans": [
                {
                    "assignedDateTime": "2016-02-02T01:15:04Z",
                    "capabilityStatus": "Enabled",
                    "service": "YammerEnterprise",
                    "servicePlanId": "7547a3fe-08ee-4ccb-b430-5077c5041653"
                },
                {
                    "assignedDateTime": "2016-01-21T03:13:44Z",
                    "capabilityStatus": "Enabled",
                    "service": "MicrosoftOffice",
                    "servicePlanId": "43de0ff5-c92c-492b-9116-175376d08c38"
                }
            ],
            "businessPhones": [],
            "city": null,
            "country": null,
            "countryLetterCode": "US",
            "displayName": "Contoso",
            "marketingNotificationEmails": [
                "jamiedoe@contoso.com"
            ],
            "onPremisesLastSyncDateTime": "2016-09-21T22:52:53Z",
            "onPremisesSyncEnabled": true,
            "postalCode": null,
            "preferredLanguage": "en",
            "provisionedPlans": [
                {
                    "capabilityStatus": "Enabled",
                    "provisioningStatus": "Success",
                    "service": "YammerEnterprise"
                },
                {
                    "capabilityStatus": "Enabled",
                    "provisioningStatus": "Success",
                    "service": "MicrosoftOffice"
                }
            ],
            "securityComplianceNotificationMails": [],
            "securityComplianceNotificationPhones": [],
            "state": null,
            "street": null,
            "technicalNotificationMails": [
                "jamiedoe@live.com"
            ],
            "verifiedDomains": [
                {
                    "capabilities": "Email, OfficeCommunicationsOnline, OrgIdAuthentication, Yammer, Intune",
                    "isDefault": true,
                    "isInitial": false,
                    "name": "contoso.com",
                    "type": "Managed"
                },
                {
                    "capabilities": "Email, OfficeCommunicationsOnline",
                    "isDefault": false,
                    "isInitial": true,
                    "name": "contoso.onmicrosoft.com",
                    "type": "Managed"
                }
            ]
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get organization",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
