# Microsoft Bookings API overview

Microsoft Bookings provides online and mobile apps that make appointment scheduling simple and efficient for small businesses and their customers. Any small business that provides service on an appointment basis, such as auto repair shops, hair salons, and law firms, can benefit from having their bookings managed so as to free up time for the more important task to grow their business. Microsoft Bookings is available to businesses that have an Office 365 Business Premium subscription.

## Why integrate with Microsoft Bookings using Microsoft Graph?

### Streamline appointment booking
A business operator may never miss a customer booking when away from the phone or the business is closed. Customers can [see the available services](../api-reference/beta/api/bookingbusiness_list_services.md) and [book appontments](../api-reference/beta/api/bookingbusiness_post_appointments.md) any time directly on the scheduling page, on the business web site or Facebook. 

Business operators can take bookings anywhere, on the web or a mobile app, in-person or on the phone. They can [reschedule](../api-reference/beta//api/bookingappointment_update.md), [cancel](../api-reference/beta/api/bookingappointment_cancel.md), or [re-assign](../api-reference/beta/api/bookingappointment_update.md) an existing booking to another available staff member. 

### Reduce no-shows and increase productivity of the staff
Business operators can specify [scheduling policies](../api-reference/beta/resources/bookingschedulingpolicy.md) that include minimum notice for bookings and cancellations, and customers can schedule or reschedule appointments themselves. Automated appointment confirmations and reminders decrease no-shows, and let the staff make better use of their production hours. 

### Manage customer information and relationships from anywhere
Completing an appointment automatically verifies if the customer is already on the [customer list](../api-reference/beta/api/bookingbusiness_list_customers.md), and [adds](../api-reference/beta/api/bookingbusiness_post_customers.md) the customer's name and email address to the list if necessary. This makes it convenient for business operators to stay in touch with their customers, and send periodic newsletters or other promotional material.

<!-- 
Link to overview-major-services.md after new-conceptual content is merged
-->
### Integrate with productivity and team collaboration services in Microsoft Graph
Using the same unified Microsoft Graph REST endpoint, you can access the Bookings API and integrate with the best of Microsoft 365 to support richer scenarios. For example, you can use Excel to track and analyze business financial data, and generate professional reports, or use SharePoint or Microsoft Teams to enhance team collaboration.

## Next steps

Learn more about:

- [Microsoft Bookings](https://support.office.com/en-us/article/Publish-your-business-calendar-online-with-Microsoft-Bookings-47403d64-a067-4754-9ae9-00157244c27d) and other [Office 365 business apps](https://support.office.com/en-us/article/manage-your-business-apps-in-the-business-center-47eca808-cf96-42ba-83e8-55daf18e49dc?ui=en-US&rs=en-US&ad=US).
- [Using the Bookings API](../api-reference/beta/resources/booking-api-overview.md) in Microsoft Graph.

