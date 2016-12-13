# Delta query for users

[Delta query](./delta_query_overview.md) enables applications to discover newly created, updated, or deleted entities without performing a full read of the target resource with every request. To discover changes to users, perform a request using the *delta* function. See [Using Delta Query](./delta_query_overview.md#using-delta-query) for details.

### Prerequisites

The same [permission scopes](../../authorization/permission_scopes.md) that are required to read a specific resource are also required to perform delta query on that resource.

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/delta
```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;token&gt;|
| Content-Type  | application/json |

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns `200, OK` response code and [user](./resources/user.md) collection object in the response body. The response will also include a nextLink URL or a deltaLink URL. 

- If a nextLink URL is returned, there are additional pages of data to be retrieved in the session. The application continues making requests using the nextLink URL until a deltaLink URL is included in the response.

- If a deltaLink URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the deltaLink URL to learn about changes to the resource.

See [Using Delta Query](./delta_query_overview.md#using-delta-query) for more details.

### Example
##### Request
<!-- {
  "blockType": "request",
  "name": "user_delta"
}-->
```http
GET https://graph.microsoft.com/beta/me/delta
```

##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 608

{
  "@odata.context":"https://graph.microsoft-ppe.com/stagingBeta/$metadata#users",
  "@odata.nextLink":"https://graph.microsoft-ppe.com/stagingBeta/users/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "accountEnabled": true,
      "assignedLicenses": [
        {
          "disabledPlans": [
            "disabledPlans-value"
          ],
          "skuId": "skuId-value"
        }
      ],
      "assignedPlans": [
        {
          "assignedDateTime": "datetime-value",
          "capabilityStatus": "capabilityStatus-value",
          "service": "service-value",
          "servicePlanId": "servicePlanId-value"
        }
      ],
      "businessPhones": [
        "businessPhones-value"
      ],
      "city": "city-value",
      "companyName": "companyName-value",
      "proxyAddresses": [
        "proxyAddresses-value"
      ],
      "userPrincipalName":"user@company.com"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->