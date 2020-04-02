---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/bookingBusinesses/Contosolunchdelivery@M365B489948.onmicrosoft.com/appointments"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphBookingAppointment *bookingAppointment = [[MSGraphBookingAppointment alloc] init];
[bookingAppointment setCustomerEmailAddress:@"jordanm@contoso.com"];
MSGraphLocation *customerLocation = [[MSGraphLocation alloc] init];
MSGraphPhysicalAddress *address = [[MSGraphPhysicalAddress alloc] init];
[address setCity:@"Buffalo"];
[address setCountryOrRegion:@"USA"];
[address setPostalCode:@"98052"];
[address setPostOfficeBox: null];
[address setState:@"NY"];
[address setStreet:@"123 First Avenue"];
[address setType: null];
[customerLocation setAddress:address];
[customerLocation setCoordinates: null];
[customerLocation setDisplayName:@"Customer"];
[customerLocation setLocationEmailAddress: null];
[customerLocation setLocationType: null];
[customerLocation setLocationUri: null];
[customerLocation setUniqueId: null];
[customerLocation setUniqueIdType: null];
[bookingAppointment setCustomerLocation:customerLocation];
[bookingAppointment setCustomerName:@"Jordan Miller"];
[bookingAppointment setCustomerNotes:@"Please be on time."];
[bookingAppointment setCustomerPhone:@"213-555-0199"];
MSGraphDateTimeTimeZone *end = [[MSGraphDateTimeTimeZone alloc] init];
[end setDateTime: "2018-05-01T12:30:00+00:00"];
[end setTimeZone:@"UTC"];
[bookingAppointment setEnd:end];
[bookingAppointment setInvoiceAmount: 10.0];
MSGraphDateTimeTimeZone *invoiceDate = [[MSGraphDateTimeTimeZone alloc] init];
[invoiceDate setDateTime: "2018-05-01T12:30:00+00:00"];
[invoiceDate setTimeZone:@"UTC"];
[bookingAppointment setInvoiceDate:invoiceDate];
[bookingAppointment setInvoiceId:@"1001"];
[bookingAppointment setInvoiceStatus: [MSGraphBookingInvoiceStatus open]];
[bookingAppointment setInvoiceUrl:@"theInvoiceUrl"];
[bookingAppointment setOptOutOfCustomerEmail: false];
[bookingAppointment setPostBuffer:@"PT10M"];
[bookingAppointment setPreBuffer:@"PT5M"];
[bookingAppointment setPrice: 10.0];
[bookingAppointment setPriceType: [MSGraphBookingPriceType fixedPrice]];
NSMutableArray *remindersList = [[NSMutableArray alloc] init];
MSGraphBookingReminder *reminders = [[MSGraphBookingReminder alloc] init];
[reminders setMessage:@"This service is tomorrow"];
[reminders setOffset:@"P1D"];
[reminders setRecipients: [MSGraphBookingReminderRecipients allAttendees]];
[remindersList addObject: reminders];
MSGraphBookingReminder *reminders = [[MSGraphBookingReminder alloc] init];
[reminders setMessage:@"Please be available to enjoy your lunch service."];
[reminders setOffset:@"PT1H"];
[reminders setRecipients: [MSGraphBookingReminderRecipients customer]];
[remindersList addObject: reminders];
MSGraphBookingReminder *reminders = [[MSGraphBookingReminder alloc] init];
[reminders setMessage:@"Please check traffic for next cater."];
[reminders setOffset:@"PT2H"];
[reminders setRecipients: [MSGraphBookingReminderRecipients staff]];
[remindersList addObject: reminders];
[bookingAppointment setReminders:remindersList];
[bookingAppointment setServiceId:@"57da6774-a087-4d69-b0e6-6fb82c339976"];
MSGraphLocation *serviceLocation = [[MSGraphLocation alloc] init];
MSGraphPhysicalAddress *address = [[MSGraphPhysicalAddress alloc] init];
[address setCity:@"Buffalo"];
[address setCountryOrRegion:@"USA"];
[address setPostalCode:@"98052"];
[address setPostOfficeBox: null];
[address setState:@"NY"];
[address setStreet:@"123 First Avenue"];
[address setType: null];
[serviceLocation setAddress:address];
[serviceLocation setCoordinates: null];
[serviceLocation setDisplayName:@"Customer location"];
[serviceLocation setLocationEmailAddress: null];
[serviceLocation setLocationType: null];
[serviceLocation setLocationUri: null];
[serviceLocation setUniqueId: null];
[serviceLocation setUniqueIdType: null];
[bookingAppointment setServiceLocation:serviceLocation];
[bookingAppointment setServiceName:@"Catered bento"];
[bookingAppointment setServiceNotes:@"Customer requires punctual service."];
MSGraphDateTimeTimeZone *start = [[MSGraphDateTimeTimeZone alloc] init];
[start setDateTime: "2018-05-01T12:00:00+00:00"];
[start setTimeZone:@"UTC"];
[bookingAppointment setStart:start];

NSError *error;
NSData *bookingAppointmentData = [bookingAppointment getSerializedDataWithError:&error];
[urlRequest setHTTPBody:bookingAppointmentData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```