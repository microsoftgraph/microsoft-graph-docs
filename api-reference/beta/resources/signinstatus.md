# signInStatus resource type
Provides the sign-in status (Success or Failure) of the sign-in



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|additionalDetails|String|Provides additional details on the sign-in activity|
|errorCode|Int32|Provides the 5-6digit error code that's generated during a sign-in failure. Check out the [list of error codes and messages](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-reporting-activity-sign-ins-errors).|
|failureReason|String|Provides the error message or the reason for failure for the corresponding sign-in activity. Check out the [list of error codes and messages](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-reporting-activity-sign-ins-errors).|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.signInStatus"
}-->

```json
{
  "additionalDetails": "String",
  "errorCode": 1024,
  "failureReason": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "signInStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->