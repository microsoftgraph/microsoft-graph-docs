# Use the Microsoft Bookings API in Microsoft Graph

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
 
Microsoft Bookings lets small business owners manage customer bookings and information with minimal setup. A business owner can create one or more businesses, with each business offering a set of services. The owner can set up staff members, and specify the services that each staff member performs. A customer can book an appointment for a specific service in that business in an online or mobile app. Bookings ensures that the appointment time is kept up-to-date for the business, staff members, and customers involved.

Programmatically, a [bookingBusiness](bookingbusiness.md) in the Bookings API involves the following objects:
 
- One or more [bookingStaffMember](bookingstaffmember.md) objects
- One or more [bookingService](bookingservice.md) objects
- A set of [bookingAppointment](bookingappointment.md) instances
- A set of [bookingCustomer](bookingcustomer.md) objects

## Using the Bookings REST API

Walk through the following steps before booking customer appointments for a business the first time. Make sure you provide the appropriate [access tokens](../../../concepts/auth_overview.md) for the corresponding operations.

1. Make sure the business has an [Office 365 Business Premium](https://products.office.com/en-us/business/office-365-business-premium) subscription.
2. Create a new **bookingBusiness** by sending a POST operation to the entity set. At minimum, you should specify a name for the new business that customers will see:
<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/bookingBusinesses
Authorization: Bearer {access token}
Content-Type: application/json

{
    "displayName":"Contoso"
}
```
Use the **id** property of the new **bookingBusiness** returned in the POST response to continue to [customize](../api/bookingbusiness_update.md) business settings, and add staff members and services for the business.

3. Add individual staff members for the business:
<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/bookingBusinesses/{id}/staffMembers
Authorization: Bearer {access token}
Content-Type: application/json

{
    "displayName":"Dana Swope",
    "emailAddress": "danas@contoso.com",
    "role": "externalGuest"
}
```
4. Define each service offered by the business:
<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/bookingBusinesses/{id}/services
Authorization: Bearer {access token}
Content-Type: application/json

{
    "displayName":"Bento"
}
```
5. Publish the scheduling page for the business, to let customers and business operators start booking appointments:
<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/bookingBusinesses/{id}/publish
Authorization: Bearer {access token}
```

In general, to list all the booking businesses in the Office 365 tenant:
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/bookingBusinesses
Authorization: Bearer {access token}
```

## Common use cases 

The following table lists the common operations for a business in the Bookings API.

| Use cases		   | REST resources	| See also |
|:---------------|:--------|:----------|
| Create, get, update, or delete a business | [bookingBusiness](bookingbusiness.md) | [Methods of bookingBusiness](bookingbusiness.md#methods) |
| Update the scheduling policy | [bookingSchedulingPolicy](bookingschedulingpolicy.md) | [Update a bookingBusiness](../api/bookingbusiness_update.md) |
| Add, get, update, or delete staff members | [bookingStaffMember](bookingstaffmember.md) | [Methods of bookingStaffMember](bookingstaffmember.md#methods)  |
| Add, get, update, or delete services | [bookingService](bookingservice.md) | [Methods of bookingService](bookingservice.md#methods)  |
| Publish or unpublish the scheduling page | [bookingBusiness](bookingbusiness.md) | [publish](../api/bookingbusiness_publish.md) <br> [unpublish](../api/bookingbusiness_unpublish.md) |
| Create, get, update, delete, or cancel an appointment | [bookingAppointment](bookingappointment.md) | [Methods of bookingAppointment](bookingappointment.md#methods)  |
| Get appointments in a date range | [bookingBusiness](bookingbusiness.md) | [List Bookings calendarView](../api/bookingbusiness_list_calendarview.md) |
| Get currency | [bookingCurrency](bookingcurrency.md) | [Methods of bookingCurrency](bookingcurrency.md#methods) |


## See also

- Try the API in the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).
- See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/en-us/graph/graph/examples#partners).
- Learn how to choose [permissions](../../../concepts/permissions_reference.md) in Microsoft Graph.