---
title: "Microsoft Bookings API overview (preview)"
description: "Microsoft Bookings provides online and mobile apps that make appointment scheduling simple and efficient for organization and their users and customers."
author: "arvindmicrosoft"
localization_priority: Priority
ms.prod: "bookings"
ms.custom: scenarios:getting-started
---

# Microsoft Bookings API overview (preview)

Microsoft Bookings provides online and mobile apps that make appointment scheduling simple and efficient for small businesses and their customers. Any organization that provides service on an appointment basis, such as large scale enterprise companies, auto repair shops, hair salons, and law firms, can benefit from having their bookings managed so as to free up time for the more important task to grow their business. Microsoft Bookings is available to enterprise organziations and businesses that have a Microsoft 365 Business Premium subscription.

## Why integrate with Microsoft Bookings using Microsoft Graph?

### Streamline appointment booking
A business operator may never miss a customer booking when away from the phone or the business is closed. Customers can [see the available services](/graph/api/bookingbusiness-list-services?view=graph-rest-beta) and [book appointments](/graph/api/bookingbusiness-post-appointments?view=graph-rest-beta) any time directly on the scheduling page, on the business web site or Facebook. 

Business operators can take bookings anywhere, on the web or a mobile app, in-person or on the phone. They can [reschedule](/graph/api/bookingappointment-update?view=graph-rest-beta), [cancel](/graph/api/bookingappointment-cancel?view=graph-rest-beta), or [re-assign](/graph/api/bookingappointment-update?view=graph-rest-beta) an existing booking to another available staff member. 

### Reduce no-shows and increase productivity of the staff
Business operators can specify [scheduling policies](/graph/api/resources/bookingschedulingpolicy?view=graph-rest-beta) that include minimum notice for bookings and cancellations, and customers can schedule or reschedule appointments themselves. Automated appointment confirmations and reminders decrease no-shows, and let the staff make better use of their production hours. 

### Manage customer information and relationships from anywhere
Completing an appointment automatically verifies if the customer is already on the [customer list](/graph/api/bookingbusiness-list-customers?view=graph-rest-beta), and [adds](/graph/api/bookingbusiness-post-customers?view=graph-rest-beta) the customer's name and email address to the list if necessary. This makes it convenient for business operators to stay in touch with their customers, and send periodic newsletters or other promotional material.

### Integrate with productivity and team collaboration services in Microsoft Graph
Using the same unified Microsoft Graph REST endpoint, you can access the Bookings API and [integrate with the best of Microsoft 365](overview-major-services.md) to support richer scenarios. For example, you can use [Excel](excel-concept-overview.md#generate-reports-and-analyze-results) to track and analyze business financial data, and generate professional reports, or use [SharePoint](sharepoint-concept-overview.md) or [Microsoft Teams](teams-concept-overview.md) to enhance team collaboration.

## API reference
Looking for the API reference for this service?

See [Microsoft Bookings API in Microsoft Graph beta](/graph/api/resources/booking-api-overview?view=graph-rest-beta).


## Next steps

Learn more about:

- [Microsoft Bookings](https://support.office.com/article/Publish-your-business-calendar-online-with-Microsoft-Bookings-47403d64-a067-4754-9ae9-00157244c27d) and other [Microsoft 365 business apps](https://support.office.com/article/manage-your-business-apps-in-the-business-center-47eca808-cf96-42ba-83e8-55daf18e49dc?ui=en-US&rs=en-US&ad=US).
- [Using the Bookings API](/graph/api/resources/booking-api-overview?view=graph-rest-beta) in Microsoft Graph.

