# updateTargetedSecurityGroups action
Return updateTargetSecurityGroups of the [targetedManagedAppProtection](../resources/intune_mam_targetedmanagedappprotection.md) objects.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /managedAppPolicies/<id>/updateTargetedSecurityGroups
POST /managedAppRegistrations/<id>/appliedPolicies/<id>/updateTargetedSecurityGroups
POST /managedAppRegistrations/<id>/intendedPolicies/<id>/updateTargetedSecurityGroups
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply JSON representation of the parameters.
The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|---|---|---|
|targetedSecurityGroups|[directoryObject](../resources/intune_mam_directoryobject.md) collection|Not yet documented|



### Response
If successful, this action returns a `204 No Content` response code.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/managedAppPolicies/<id>/updateTargetedSecurityGroups

Content-type: application/json
Content-length: 164

{
  "targetedSecurityGroups": [
    {
      "@odata.type": "#microsoft.graph.directoryObject",
      "id": "67d4444d-444d-67d4-4d44-d4674d44d467"
    }
  ]
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```
