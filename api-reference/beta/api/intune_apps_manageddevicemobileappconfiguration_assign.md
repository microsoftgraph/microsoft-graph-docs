# assign action

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /iosMobileAppConfigurations/{iosMobileAppConfigurationsId}/assign
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply JSON representation of the parameters.
The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|---|---|---|
|appConfigurationGroupAssignments|[mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) collection|Not yet documented|



## Response
If successful, this action returns a `204 No Content` response code.

## Example
### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/iosMobileAppConfigurations/{iosMobileAppConfigurationsId}/assign

Content-type: application/json
Content-length: 289

{
  "appConfigurationGroupAssignments": [
    {
      "@odata.type": "#microsoft.intune_apps_graph.mdmAppConfigGroupAssignment",
      "appConfiguration": "App Configuration value",
      "targetGroupId": "Target Group Id value",
      "id": "347b9b52-9b52-347b-529b-7b34529b7b34"
    }
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```



