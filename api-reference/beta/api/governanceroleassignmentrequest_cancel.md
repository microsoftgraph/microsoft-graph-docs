# Cancel governanceRoleAssignmentRequest

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Cancel a [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureResources  |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | PrivilegedAccess.ReadWrite.AzureResources |

## Optional query parameters
This method does **not** support [OData Query Parameters](../../../concepts/query_parameters.md).

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /privilegedAccess/azureResources/roleAssignmentRequests/{id}/cancel
```

## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|
| Content-type  | application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns `204 NoContent` response code. It does not return anything in the response body. 

## Error codes
This API follows the standard of HTTP codes. Besides, the custom error codes are shown below.
|Error code     | Error message              | Details |
|:--------------------| :---------------------|:--------------------|
| 400 BadRequest | RoleAssignmentRequestNotFound | The governanceRoleAssignmentRequest does not exist in system.
| 400 BadRequest | RequestCannotBeCancelled    | Only requests in status of `Granted`, `PendingApproval`, `PendingApprovalProvisioning` and `PendingAdminDecision` can be cancelled.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "cancel_governanceroleassignmentrequest"
}-->
```http
POST https://graph.microsoft.com/beta/privilegedAccess/azureResources/roleAssignmentRequests/7c53453e-d5a4-41e0-8eb1-32d5ec8bfdee/cancel
```

##### Response
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.None"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Cancel governanceRoleAssignmentRequest",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->