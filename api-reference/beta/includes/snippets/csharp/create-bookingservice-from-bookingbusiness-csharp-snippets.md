---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingService = new BookingService
{
	DefaultDuration = "PT1H30M",
	DefaultLocation = new Location
	{
		Address = new PhysicalAddress
		{
			City = "Buffalo",
			CountryOrRegion = "USA",
			PostalCode = "98052",
			PostOfficeBox = null,
			State = "NY",
			Street = "4567 First Street",
			AdditionalData = new Dictionary<string, object>()
			{
				{"type@odata.type","#microsoft.graph.physicalAddressType"}
			},
			Type = null
		},
		Coordinates = null,
		DisplayName = "Contoso Lunch Delivery",
		LocationEmailAddress = null,
		AdditionalData = new Dictionary<string, object>()
		{
			{"uniqueIdType@odata.type","#microsoft.graph.locationUniqueIdType"},
			{"locationType@odata.type","#microsoft.graph.locationType"}
		},
		LocationType = null,
		LocationUri = null,
		UniqueId = null,
		UniqueIdType = null
	},
	DefaultPrice = 10,
	AdditionalData = new Dictionary<string, object>()
	{
		{"staffMemberIds@odata.type","#Collection(String)"},
		{"defaultReminders@odata.type","#Collection(microsoft.graph.bookingReminder)"},
		{"defaultPriceType@odata.type","#microsoft.graph.bookingPriceType"}
	},
	DefaultPriceType = BookingPriceType.FixedPrice,
	DefaultReminders = new List<BookingReminder>()
	{
		new BookingReminder
		{
			Message = "Please be reminded that this service is tomorrow.",
			Offset = "P1D",
			AdditionalData = new Dictionary<string, object>()
			{
				{"recipients@odata.type","#microsoft.graph.bookingReminderRecipients"}
			},
			Recipients = BookingReminderRecipients.AllAttendees
		}
	},
	Description = "Individual bento box lunch delivery",
	DisplayName = "Bento",
	IsHiddenFromCustomers = false,
	Notes = "Home-cooked special",
	PostBuffer = "PT10M",
	PreBuffer = "PT5M",
	SchedulingPolicy = new BookingSchedulingPolicy
	{
		AllowStaffSelection = true,
		MaximumAdvance = "P10D",
		MinimumLeadTime = "PT10H",
		SendConfirmationsToOwner = true,
		TimeSlotInterval = "PT1H"
	},
	StaffMemberIds = new List<String>()
	{
		"d90d1e8c-5cfe-48cf-a2d5-966267375b6a",
		"2f5f8794-0b29-45b5-b56a-2eb5ff7aa880"
	}
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Services
	.Request()
	.AddAsync(bookingService);

```