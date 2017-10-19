# requiredResourceAccess resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Specifies the set of OAuth 2.0 permission scopes and app roles under the specified resource that an application requires access to. The specified OAuth 2.0 permission scopes may be requested by client applications (through the **requiredResourceAccess** collection) when calling a resource application. The **requiredResourceAccess** property of the [application](application.md) entity is a collection of **ReqiredResourceAccess**.


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.requiredResourceAccess"
}-->

```json
{
  "resourceAccess": [{"@odata.type": "microsoft.graph.resourceAccess"}],
  "resourceAppId": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|resourceAccess|[ResourceAccess](resourceaccess.md) collection|The list of OAuth2.0 permission scopes and app roles that the application requires from the specified resource.|
|resourceAppId|String|The unique identifier for the resource that the application requires access to.  This should be equal to the **appId** declared on the target resource application.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "requiredResourceAccess resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
