# List deviceCompliancePolicyGroupAssignments

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

List properties and relationships of the [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) objects.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceCompliancePolicyGroupAssignment/
GET /deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/groupAssignments/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) objects in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceCompliancePolicyGroupAssignment/
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 218

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.deviceCompliancePolicyGroupAssignment",
      "id": "fe44007c-007c-fe44-7c00-44fe7c0044fe",
      "targetGroupId": "Target Group Id value"
    }
  ]
}
```



