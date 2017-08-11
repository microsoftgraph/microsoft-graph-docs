# Create termsAndConditionsAcceptanceStatus

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsandconditionsacceptancestatus.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementServiceConfig.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/termsAndConditions/{termsAndConditionsId}/acceptanceStatuses/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a termsAndConditionsAcceptanceStatus object.
The following table shows the properties that are required when you create a termsAndConditionsAcceptanceStatus.

|Property|Type|Description|
|---|---|---|
|id|String|Unique identifier of the entity.|
|userDisplayName|String|Display name of the user whose acceptance the entity represents.|
|acceptedVersion|Int32|Most recent version number of the T&C accepted by the user.|
|acceptedDateTime|DateTimeOffset|DateTime when the terms were last accepted by the user.|

## Response

If successful, this method returns a `201 Created` response code and a [termsAndConditionsAcceptanceStatus](../resources/intune_companyterms_termsandconditionsacceptancestatus.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/termsAndConditions/{termsAndConditionsId}/acceptanceStatuses/
Content-type: application/json
Content-length: 211

{
  "@odata.type": "#microsoft.graph.termsAndConditionsAcceptanceStatus",
  "userDisplayName": "User Display Name value",
  "acceptedVersion": 15,
  "acceptedDateTime": "2016-12-31T23:57:43.6165506-08:00"
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 260

{
  "@odata.type": "#microsoft.graph.termsAndConditionsAcceptanceStatus",
  "id": "a045ce1a-ce1a-a045-1ace-45a01ace45a0",
  "userDisplayName": "User Display Name value",
  "acceptedVersion": 15,
  "acceptedDateTime": "2016-12-31T23:57:43.6165506-08:00"
}
```



