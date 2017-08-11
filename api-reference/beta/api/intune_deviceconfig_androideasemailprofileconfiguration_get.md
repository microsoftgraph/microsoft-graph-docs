# Get androidEasEmailProfileConfiguration

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Read properties and relationships of the [androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androideasemailprofileconfiguration.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/groupAssignments/{deviceConfigurationGroupAssignmentId}/deviceConfiguration/
```

## Optional query parameters
This method supports the [OData Query Parameters](https://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.
## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [androidEasEmailProfileConfiguration](../resources/intune_deviceconfig_androideasemailprofileconfiguration.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/{deviceConfigurationId}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1006

{
  "value": {
    "@odata.type": "#microsoft.graph.androidEasEmailProfileConfiguration",
    "id": "ee5e5610-5610-ee5e-1056-5eee10565eee",
    "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
    "assignmentStatus": "Assignment Status value",
    "assignmentProgress": "Assignment Progress value",
    "assignmentErrorMessage": "Assignment Error Message value",
    "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
    "description": "Description value",
    "displayName": "Display Name value",
    "version": 7,
    "accountName": "Account Name value",
    "authenticationMethod": "certificate",
    "syncCalendar": true,
    "syncContacts": true,
    "syncTasks": true,
    "syncNotes": true,
    "durationOfEmailToSync": "oneDay",
    "emailAddressSource": "primarySmtpAddress",
    "emailSyncSchedule": "asMessagesArrive",
    "hostName": "Host Name value",
    "requireSmime": true,
    "requireSsl": true,
    "usernameSource": "userPrincipalName"
  }
}
```



