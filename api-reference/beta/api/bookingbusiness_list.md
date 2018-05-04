# List bookingBusinesses

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
 
Get a collection of [bookingbusiness](../resources/bookingbusiness.md) objects that has been created for the tenant. 

This operation returns only the **id** and **displayName** of each Bookings business in the collection. For performance considerations, other properties are _returned_ as null even if they have been set. You can get the other properties of a Bookings business by specifying its **id** in a [GET](bookingbusiness_get.md) operation.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  Bookings.Read.All, BookingsAppointment.ReadWrite.All, Bookings.ReadWrite.All, Bookings.Manage.All   |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Not supported.  | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /bookingBusinesses
```
## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [bookingBusiness](../resources/bookingbusiness.md) objects in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_bookingbusinesses"
}-->
```http
GET https://graph.microsoft.com/beta/bookingBusinesses
```
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingBusiness",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 526

{
    "@odata.context":"https://graph.microsoft.com/testbookings/$metadata#bookingBusinesses",
    "value":[
        {
            "id":"Contosolunchdelivery@M365B489948.onmicrosoft.com",
            "displayName":"Contoso lunch delivery",
            "businessType":null,
            "phone":null,
            "email":null,
            "webSiteUrl":null,
            "defaultCurrencyIso":null,
            "isPublished":null,
            "publicUrl":null,
            "address":null,
            "schedulingPolicy":null,
            "businessHours":[

            ]
        },
        {
            "id":"Fabrikam@M365B489948.onmicrosoft.com",
            "displayName":"Fabrikam",
            "businessType":null,
            "phone":null,
            "email":null,
            "webSiteUrl":null,
            "defaultCurrencyIso":null,
            "isPublished":null,
            "publicUrl":null,
            "address":null,
            "schedulingPolicy":null,
            "businessHours":[

            ]
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List bookingBusinesses",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->