# Update eBookGroupAssignment

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /eBookGroupAssignments/{eBookGroupAssignmentsId}
PATCH /deviceAppManagement/managedEBooks/{managedEBookId}/groupAssignments/{eBookGroupAssignmentId}
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) object.
The following table shows the properties that are required when you create a [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md).

|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the eBook to.|
|id|String|Key of the entity.|
|installIntent|String|The install intent defined by the admin. Possible values are: `notApplicable`, `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|



## Response
If successful, this method returns a `200 OK` response code and an updated [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/eBookGroupAssignments/{eBookGroupAssignmentsId}
Content-type: application/json
Content-length: 81

{
  "targetGroupId": "Target Group Id value",
  "installIntent": "available"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 189

{
  "@odata.type": "#microsoft.graph.eBookGroupAssignment",
  "targetGroupId": "Target Group Id value",
  "id": "6cb57cb9-7cb9-6cb5-b97c-b56cb97cb56c",
  "installIntent": "available"
}
```



