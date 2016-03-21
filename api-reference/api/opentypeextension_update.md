# Update extension

Update an open type data extension with the properties in the request body:

- If a property in the request body matches the name of an existing property in the extension, the data in the 
extension is updated.
- Otherwise that property and its data are added to the extension. 

The extension can be in a message, event, or contact in the signed-in user's mailbox on Office 365 or
Outlook.com. 


### Prerequisites

One of the following **scopes** is required to execute this API, depending on the resource you're
creating the extension in:

- _Mail.ReadWrite_
- _Calendars.ReadWrite_
- _Contacts.ReadWrite_
 
### HTTP request
<!-- { "blockType": "ignored" } -->

```http
PATCH /me/messages/<id>/extensions/<extensionId>
PATCH /users/<id>/messages/<id>/extensions/<extensionId>

PATCH /me/events/<id>/extensions/<extensionId>
PATCH /users/<id>/events/<id>/extensions/<extensionId>

PATCH /me/contacts/<id>/extensions/<extensionId>
PATCH /users/<id>/contacts/<id>/extensions/<extensionId>
```


### Parameters
|**Parameter**|**Type**|**Description**|
|:-----|:-----|:-----|
|_URL parameters_|
|id|string|A unique identifier for an instance of the corresponding collection. Required.|
|extensionId|string|This can be an extension name which is a unique text identifier for an extension, or a fully qualified name which concatenates the extension type and unique text identifier. The fully qualified name is returned in the `id` property when you create the extension. Required.|


### Request headers
| Name       | Value |
|:---------------|:----------|
| Authorization | Bearer %token%|
| Content-Type | application/json |

### Request body

Provide a JSON body of an [openTypeExtension](../resources/openTypeExtension.md) object, with the 
following required name-value pairs, and any custom data to change or add to that extension:

| Name       | Value |
|:---------------|:----------|
| @odata.type | Microsoft.Graph.OpenTypeExtension |
| extensionName | %unique_string% |


### Response

If successful, this method returns a `200 Ok` response code and the updated
[openTypeExtension](../resources/openTypeExtension.md) object.


### Example
##### Request

<a name="originalExample"></a>

Each of the following 2 examples updates an extension represented by the following JSON payload:

<!-- { "blockType": "ignored" } -->
```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Me/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions/$entity",
    "@odata.type": "#Microsoft.Graph.OpenTypeExtension",
    "@odata.id": "https://graph.microsoft.com/beta/users('ddfc984d-b826-40d7-b48b-57002df85e00@1717f226-49d1-4d0c-9d74-709fad6677b4')/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions
('Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')",
    "extensionName": "Com.Contoso.Referral",
    "id": "Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral",
    "companyName": "Wingtip Toys",
    "dealValue": 500050,
    "expirationDate": "2015-12-03T10:00:00Z"
}
```
 
The first example references the extension by its name:
<!-- { "blockType": "ignored" } -->
```http
PATCH https://graph.microsoft.com/beta/me/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions('Com.Contoso.Referral')
```

The second example references the extension by its fully qualified name:
<!-- { "blockType": "ignored" } -->
```http
PATCH https://graph.microsoft.com/beta/me/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions('Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')
```

You can use either example request and the following request body to update the [original extension](#originalExample) by:
- Changing `companyName` from `Wingtip Toys` to `Wingtip Toys (USA)`
- Changing `dealValue` from `500050` to `500100`
- Adding new data as the custom property `updated`

<!-- { "blockType": "ignored" } -->
```http
{
    "@odata.type": "Microsoft.Graph.OpenTypeExtension",
    "extensionName": "Com.Contoso.Referral",
    "companyName": "Wingtip Toys (USA)",
    "dealValue": "500100",
    "expirationDate": "2015-12-03T10:00:00.000Z",
    "updated": "2015-10-29T11:00:00.000Z"
} 
```

****



##### Response

Here is the response for either the first or second example request.

<!-- {  
  "blockType": "response",  
  "truncated": true,  
  "@odata.type": "microsoft.graph.opentypeextension"  
} --> 

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Me/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions/$entity",
    "@odata.type": "#Microsoft.Graph.OpenTypeExtension",
    "@odata.id": "https://graph.microsoft.com/beta/users('ddfc984d-b826-40d7-b48b-57002df85e00@1717f226-49d1-4d0c-9d74-709fad6677b4')/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions
('Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')",
    "id": "Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral",
    "extensionName": "Com.Contoso.Referral",
    "companyName": "Wingtip Toys (USA)",
    "dealValue": 500100,
    "expirationDate": "2015-12-03T10:00:00Z",
    "updated": "2015-10-29T11:00:00.000Z"
}
```



<!-- This page was manually created. -->
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update opentypeextension",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
} -->
