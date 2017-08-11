# Create notificationMessageTemplate

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) by posting to the notificationMessageTemplates collection.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementServiceConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/notificationMessageTemplates/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a notificationMessageTemplate object.
The following table shows the properties that are required when you create a notificationMessageTemplate.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Display name for the Notification Message Template.|
|defaultLocale|String|The default locale to fallback onto when the requested locale is not available.|
|brandingOptions|String|The Message Template Branding Options. Branding is defined in the Intune Admin Console. Possible values are: `none`, `includeCompanyLogo`, `includeCompanyName`, `includeContactInformation`.|

## Response

If successful, this method returns a `201 Created` response code and a [notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/notificationMessageTemplates/
Content-type: application/json
Content-length: 261

{
  "@odata.type": "#microsoft.graph.notificationMessageTemplate",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "displayName": "Display Name value",
  "defaultLocale": "Default Locale value",
  "brandingOptions": "includeCompanyLogo"
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 310

{
  "@odata.type": "#microsoft.graph.notificationMessageTemplate",
  "id": "e1db399b-399b-e1db-9b39-dbe19b39dbe1",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "displayName": "Display Name value",
  "defaultLocale": "Default Locale value",
  "brandingOptions": "includeCompanyLogo"
}
```



