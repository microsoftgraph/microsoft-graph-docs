# Update eBookVppGroupAssignment

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

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
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md) object.
The following table shows the properties that are required when you create a [eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md).

|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the eBook to. Inherited from [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md)|
|id|String|Key of the entity. Inherited from [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md)|
|installIntent|String|The install intent defined by the admin. Inherited from [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) Possible values are: `notApplicable`, `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|
|useDeviceLicensing|Boolean|Whether or not to use device licensing.|



## Response
If successful, this method returns a `200 OK` response code and an updated [eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/eBookGroupAssignments/{eBookGroupAssignmentsId}
Content-type: application/json
Content-length: 112

{
  "targetGroupId": "Target Group Id value",
  "installIntent": "available",
  "useDeviceLicensing": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 223

{
  "@odata.type": "#microsoft.graph.eBookVppGroupAssignment",
  "targetGroupId": "Target Group Id value",
  "id": "5f54e6bf-e6bf-5f54-bfe6-545fbfe6545f",
  "installIntent": "available",
  "useDeviceLicensing": true
}
```



