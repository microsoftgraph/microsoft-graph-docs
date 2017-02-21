# Delete deviceCompliancePolicyGroupAssignment

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Deletes a [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md).
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /deviceCompliancePolicyGroupAssignment/{deviceCompliancePolicyGroupAssignmentId}
DELETE /deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/groupAssignments/{deviceCompliancePolicyGroupAssignmentId}
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `204 No Content` response code.

## Example
### Request
Here is an example of the request.
```http
DELETE https://graph.microsoft.com/beta/deviceCompliancePolicyGroupAssignment/{deviceCompliancePolicyGroupAssignmentId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```



