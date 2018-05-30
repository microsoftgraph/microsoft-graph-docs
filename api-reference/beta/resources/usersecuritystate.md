# userSecurityState resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Contains stateful information about the user account.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|accountName|String|Account name of user account (without Active Directory domain or DNS domain) - (also called `mailNickName`).|
|domainName|String|NetBIOS/Active Directory domain of user account (that is, domain\account format).|
|logonDateTime|DateTimeOffset|Time at which the sign in occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|logonId|String|User sign-in ID.|
|logonIpAddress|String|IP Address the sign-in request originated from.|
|logonLocation|String|Location (by IP address mapping) associated with a user sign-in event by this user.|
|logonType|String|Method of user signin. Possible values are: `unknown`, `interactive`, `remoteInteractive`, `network`, `batch`, `service`.|
|onPremisesSecurityIdentifier|String|Active Directory (on-premises) Security Identifier (SID) of the user.|
|riskScore|String|Provider-generated/calculated risk score of the user account.|
|userAccountType|String|User account type (group membership), per Windows definition. Possible values are: `unknown`, `standard`, `power`, `administrator`.|
|userPrincipalName|String|User sign-in name - internet format: (user account name)@(user account DNS domain name).|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userSecurityState"
}-->

```json
{
  "accountName": "String",
  "domainName": "String",
  "logonDateTime": "String (timestamp)",
  "logonId": "String",
  "logonIpAddress": "String",
  "logonLocation": "String",
  "logonType": "String",
  "onPremisesSecurityIdentifier": "String",
  "riskScore": "String",
  "userAccountType": "String",
  "userPrincipalName": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userSecurityState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
