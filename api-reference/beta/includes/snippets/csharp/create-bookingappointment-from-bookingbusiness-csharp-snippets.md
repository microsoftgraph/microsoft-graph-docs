---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingAppointment = new BookingAppointment
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"reminders@odata.type","#Collection(microsoft.graph.bookingReminder)"},
		{"priceType@odata.type","#microsoft.graph.bookingPriceType"},
		{"invoiceStatus@odata.type","#microsoft.graph.bookingInvoiceStatus"},
		{"@odata.type","#microsoft.graph.bookingAppointment"}
	},
	CustomerEmailAddress = "jordanm@contoso.com",
	CustomerLocation = new Location
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"uniqueIdType@odata.type","#microsoft.graph.locationUniqueIdType"},
			{"locationType@odata.type","#microsoft.graph.locationType"},
			{"@odata.type","#microsoft.graph.location"}
		},
		Address = new PhysicalAddress
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"type@odata.type","#microsoft.graph.physicalAddressType"},
				{"@odata.type","#microsoft.graph.physicalAddress"}
			},
			City = "Buffalo",
			CountryOrRegion = "USA",
			PostalCode = "98052",
			PostOfficeBox = null,
			State = "NY",
			Street = "123 First Avenue",
			Type = null
		},
		Coordinates = null,
		DisplayName = "Customer",
		LocationEmailAddress = null,
		LocationType = null,
		LocationUri = null,
		UniqueId = null,
		UniqueIdType = null
	},
	CustomerName = "Jordan Miller",
	CustomerNotes = "Please be on time.",
	CustomerPhone = "213-555-0199",
	End = new DateTimeTimeZone
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"@odata.type","#microsoft.graph.dateTimeTimeZone"}
		},
		DateTime = "2018-05-01T12:30:00+00:00",
		TimeZone = "UTC"
	},
	InvoiceAmount = 10,
	InvoiceDate = new DateTimeTimeZone
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"@odata.type","#microsoft.graph.dateTimeTimeZone"}
		},
		DateTime = "2018-05-01T12:30:00+00:00",
		TimeZone = "UTC"
	},
	InvoiceId = "1001",
	InvoiceStatus = BookingInvoiceStatus.Open,
	InvoiceUrl = "theInvoiceUrl",
	OptOutOfCustomerEmail = false,
	PostBuffer = "PT10M",
	PreBuffer = "PT5M",
	Price = 10,
	PriceType = BookingPriceType.FixedPrice,
	Reminders = new List<BookingReminder>()
	{
		new BookingReminder
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"recipients@odata.type","#microsoft.graph.bookingReminderRecipients"},
				{"@odata.type","#microsoft.graph.bookingReminder"}
			},
			Message = "This service is tomorrow",
			Offset = "P1D",
			Recipients = BookingReminderRecipients.AllAttendees
		},
		new BookingReminder
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"recipients@odata.type","#microsoft.graph.bookingReminderRecipients"},
				{"@odata.type","#microsoft.graph.bookingReminder"}
			},
			Message = "Please be available to enjoy your lunch service.",
			Offset = "PT1H",
			Recipients = BookingReminderRecipients.Customer
		},
		new BookingReminder
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"recipients@odata.type","#microsoft.graph.bookingReminderRecipients"},
				{"@odata.type","#microsoft.graph.bookingReminder"}
			},
			Message = "Please check traffic for next cater.",
			Offset = "PT2H",
			Recipients = BookingReminderRecipients.Staff
		}
	},
	ServiceId = "57da6774-a087-4d69-b0e6-6fb82c339976",
	ServiceLocation = new Location
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"uniqueIdType@odata.type","#microsoft.graph.locationUniqueIdType"},
			{"locationType@odata.type","#microsoft.graph.locationType"},
			{"@odata.type","#microsoft.graph.location"}
		},
		Address = new PhysicalAddress
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"type@odata.type","#microsoft.graph.physicalAddressType"},
				{"@odata.type","#microsoft.graph.physicalAddress"}
			},
			City = "Buffalo",
			CountryOrRegion = "USA",
			PostalCode = "98052",
			PostOfficeBox = null,
			State = "NY",
			Street = "123 First Avenue",
			Type = null
		},
		Coordinates = null,
		DisplayName = "Customer location",
		LocationEmailAddress = null,
		LocationType = null,
		LocationUri = null,
		UniqueId = null,
		UniqueIdType = null
	},
	ServiceName = "Catered bento",
	ServiceNotes = "Customer requires punctual service.",
	Start = new DateTimeTimeZone
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"@odata.type","#microsoft.graph.dateTimeTimeZone"}
		},
		DateTime = "2018-05-01T12:00:00+00:00",
		TimeZone = "UTC"
	}
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Appointments
	.Request()
	.AddAsync(bookingAppointment);

```