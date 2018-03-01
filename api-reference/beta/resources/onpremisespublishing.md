# onPremisesPublishing resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|customDomainCertificate|String|Details of the certificate associated with the applicaiton when a custom domain is in use. Null when using the default domain.|
|externalAuthenticationType|String|Details the pre-authentication setting for the application Possible values are: `passthru`, `aadPreAuthentication`.|
|externalUrl|String|The published external url for the application. For example https://intranet-contoso.msappproxy.net/  |
|internalUrl|String|The internal url of the application. For example http://intranet/ |
|isOnPremPublishingEnabled|Boolean|Indicates if the application is currently being published or not.|
|applicationServerTimeout|String|The duration the connector will wait for a response from the backend application before closing the connection. Possible values are `default`, `long`. Use `long` if your server takes more than 60-75 seconds to respond to requests. Also try `long` if you are unable to access the application and the error status is "Backend Timeout".|
|isTranslateHostHeaderEnabled|Boolean|Indicates if the application should translate urls in the reponse headers. This includes setting the correct site for cookies.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesPublishing"
}-->

```json
{
  "customDomainCertificate": "String",
  "externalAuthenticationType": "String",
  "externalUrl": "String",
  "internalUrl": "String",
  "isOnPremPublishingEnabled": true,
  "applicationServerTimeout": "String",
  "isTranslateHostHeaderEnabled": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesPublishing resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
