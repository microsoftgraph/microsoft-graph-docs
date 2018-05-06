# mfaDetail resource type
Indicates MFA details for a specific sign-in. It includes the authentication method used for signing in as well as auth details (for example: Phone, SMS or voicemail) 



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|authDetail|String|Indicates the MFA auth detail for the corresponding Sign-in activity when the MFA Required is "Yes".|
|authMethod|String|Indicates the MFA Auth methods (SMS, Phone, Authenticator App are some of the value) for the corresponding sign-in activity when the MFA Required field is "Yes".|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.mfaDetail"
}-->

```json
{
  "authDetail": "String",
  "authMethod": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "mfaDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->