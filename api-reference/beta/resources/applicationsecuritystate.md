# applicationSecurityState resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Contains stateful information about the application.

## Properties

| Property  | Type|Description|
|:---------------|:--------|:----------|
|deploymentPackageUrl|String|URI to deployment package and/or type of deployment package. (for example, appx, MSI, and so on).|
|name|String|Application name.|
|permissionsRequired|String|The level of permissions the application requires to function. Possible values are: `unknown`, `anonymous`, `guest`, `user`, `administrator`, `system`.|
|publisher|String|The application publisher name. This helps distinguish between applications with the same AppX name.|
|riskScore|String|Provider-generated/calculated risk score of the application.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.applicationSecurityState"
}-->

```json
{
  "deploymentPackageUrl": "String",
  "name": "String",
  "permissionsRequired": "String",
  "publisher": "String",
  "riskScore": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationSecurityState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->