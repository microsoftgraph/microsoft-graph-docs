# bookingBusiness resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
 
Represents a business in Microsoft Bookings. This is the top level object in the Microsoft Bookings API. It contains business information and related business objects such as appointments, customers, services, and staff members.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List bookingBusinesses](../api/bookingbusiness_list.md) | [bookingBusiness](bookingbusiness.md) collection |Get a collection of bookingbusiness objects in the tenant. |
|[Create bookingBusiness](../api/bookingbusiness_post_bookingbusinesses.md) | [bookingBusiness](bookingbusiness.md) | Create a new Microsoft Bookings business. |
|[Get bookingBusiness](../api/bookingbusiness_get.md) | [bookingBusiness](bookingbusiness.md) |Read properties and relationships of bookingBusiness object.|
|[Update](../api/bookingbusiness_update.md) | [bookingBusiness](bookingbusiness.md)	|Update properties in a **bookingBusiness** object. |
|[Delete](../api/bookingbusiness_delete.md) | None |Delete a **bookingBusiness** object. |
|[Create bookingAppointment](../api/bookingbusiness_post_appointments.md) |[bookingAppointment](bookingappointment.md)| Create a new bookingAppointment by posting to the appointments collection.|
|[List appointments](../api/bookingbusiness_list_appointments.md) |[bookingAppointment](bookingappointment.md) collection| Get a bookingAppointment object collection.|
|[Create bookingCustomer](../api/bookingbusiness_post_customers.md) |[bookingCustomer](bookingcustomer.md)| Create a new bookingCustomer by posting to the customers collection.|
|[List customers](../api/bookingbusiness_list_customers.md) |[bookingCustomer](bookingcustomer.md) collection| Get a bookingCustomer object collection.|
|[Create bookingService](../api/bookingbusiness_post_services.md) |[bookingService](bookingservice.md)| Create a new bookingService by posting to the services collection.|
|[List services](../api/bookingbusiness_list_services.md) |[bookingService](bookingservice.md) collection| Get a bookingService object collection.|
|[Create bookingStaffMember](../api/bookingbusiness_post_staffmembers.md) |[bookingStaffMember](bookingstaffmember.md)| Create a new bookingStaffMember by posting to the staffMembers collection.|
|[List staffMembers](../api/bookingbusiness_list_staffmembers.md) |[bookingStaffMember](bookingstaffmember.md) collection| Get a bookingStaffMember object collection.|
|[List calendarView](../api/bookingbusiness_list_calendarview.md)|[bookingAppointment](bookingappointment.md) collection|Get the collection of **bookingAppointment** objects that occurs in the specified date range.|
|[publish](../api/bookingbusiness_publish.md)|None|Make the scheduling page of this business available to external customers. Set the **isPublished** property to true, and **publicUrl** property to the URL of the scheduling page.|
|[unpublish](../api/bookingbusiness_unpublish.md)|None| Make the scheduling page of this business not available to external customers. Set the **isPublished** property to false, and **publicUrl** property to null.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|[physicalAddress](physicaladdress.md)|The street address of the business. The **address** property, together with **phone** and **webSiteUrl**, appear in the footer of a business scheduling page.|
|businessHours|[bookingWorkHours](bookingworkhours.md) collection|The hours of operation for the business.|
|businessType|String|The type of business.|
|defaultCurrencyIso|String|The code for the currency that the business operates in on Microsoft Bookings.|
|displayName|String|The name of the business, which interfaces with customers. This name appears at the top of the business scheduling page.|
|email|String|The email address for the business.|
|id|String|A unique programmatic identifier for the business. Read-only.|
|isPublished|Boolean|The scheduling page has been made available to external customers. Use the **publish** and **unpublish** actions to set this property. Read-only.|
|phone|String|The telephone number for the business. The **phone** property, together with **address** and **webSiteUrl**, appear in the footer of a business scheduling page.|
|publicUrl|String|The URL for the scheduling page, which is set after you [publish](../api/bookingbusiness_publish.md) or [unpublish](../api/bookingbusiness_unpublish.md) the page. Read-only.|
|schedulingPolicy|[bookingSchedulingPolicy](bookingschedulingpolicy.md)|Specifies how bookings can be created for this business.|
|webSiteUrl|String|The URL of the business web site. The **webSiteUrl** property, together with **address**, **phone**, appear in the footer of a business scheduling page.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|appointments|[bookingAppointment](bookingappointment.md) collection| All the appointments in this business. Read-only. Nullable.|
|customers|[bookingCustomer](bookingcustomer.md) collection| All the customers of this business. Read-only. Nullable.|
|services|[bookingService](bookingservice.md) collection| All the services offered by this business. Read-only. Nullable.|
|staffMembers|[bookingStaffMember](bookingstaffmember.md) collection| All the staff members that provide services in this business. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingBusiness"
}-->

```json
{
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "businessHours": [{"@odata.type": "microsoft.graph.bookingWorkHours"}],
  "businessType": "String",
  "defaultCurrencyIso": "String",
  "displayName": "String",
  "email": "String",
  "id": "String (identifier)",
  "isPublished": true,
  "phone": "String",
  "publicUrl": "String",
  "schedulingPolicy": {"@odata.type": "microsoft.graph.bookingSchedulingPolicy"},
  "webSiteUrl": "String"
}

```

## See also


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingBusiness resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->