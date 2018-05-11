# signIn resource type
This represent a resource that details the user or application sign-in activity in your tenant 



## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List signIn](../api/signin_list.md) | [signIn](signin.md) |Read properties and relationships of signIn objects.|
|[Get signIn](../api/signin_get.md) | [signIn](signin.md) |Read properties and relationships of signIn object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appDisplayName|String|Refers to the application name displayed in the Azure Portal.|
|appId|String|Refers to the Unique GUID representing Application Id in the Azure Active Directory.|
|clientAppUsed|String|Provides the legacy client used for sign-in activty.E.g. includes Browser, Exchange Active Sync,Modern clients, IMAP, MAPI, SMTP, POP.|
|conditionalAccessPolicies|[conditionalAccessPolicy](conditionalaccesspolicy.md) collection|Provides a list of conditional access policies that are triggered by the corresponding sign-in activity.|
|conditionalAccessStatus|string| Provides the status of the conditional access policy triggered. Possible values are: `success`, `failure`, `notApplied`, `unknownFutureValue`.|
|correlationId|String|Refers to the ID that's sent from the client when the sign-in is initiated. This is used for troubleshooting the corresponding sign-in activity when calling helpdesk or support.|
|createdDateTime|DateTimeOffset|Provides the date and time the sign-in was initiated. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|deviceDetail|[deviceDetail](devicedetail.md)|Provides the device information from where the sign-in occurred. It inclules information like deviceId, OS, browser. |
|id|String|Indicates unique ID representing the sign-in activity.|
|ipAddress|String|Provides the IP address of the client from where the sign-in occurred.|
|isRisky|Boolean|Indicates if the sign-in has risk signals associated with it.|
|location|[signInLocation](signinlocation.md)|Provides the city, state and 2 letter country code from where the sign-in occurred.|
|mfaDetail|[mfaDetail](mfadetail.md)|Provides the MFA related information like MFA Required, MFA Status for the corresponding sign-in.|
|riskLevel|string| Provides the risk level associated with the sign-in.Possible values are: `low`, `medium`, `high`.|
|status|[signInStatus](signinstatus.md)|Provides the sign-in status. Possible values include `Success` and `Failure`.|
|userDisplayName|String|Indicates the display Name of the User.|
|userId|String|Indicates the userId of the user.|
|userPrincipalName|String|Indicates the UPN of the user.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.signIn"
}-->

```json
{
  "appDisplayName": "String",
  "appId": "String",
  "clientAppUsed": "String",
  "conditionalAccessPolicies": [{"@odata.type": "microsoft.graph.conditionalAccessPolicy"}],
  "conditionalAccessStatus": "string",
  "correlationId": "String",
  "createdDateTime": "String (timestamp)",
  "deviceDetail": {"@odata.type": "microsoft.graph.deviceDetail"},
  "id": "String (identifier)",
  "ipAddress": "String",
  "isRisky": true,
  "location": {"@odata.type": "microsoft.graph.signInLocation"},
  "mfaDetail": {"@odata.type": "microsoft.graph.mfaDetail"},
  "riskLevel": "string",
  "status": {"@odata.type": "microsoft.graph.signInStatus"},
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "signIn resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->