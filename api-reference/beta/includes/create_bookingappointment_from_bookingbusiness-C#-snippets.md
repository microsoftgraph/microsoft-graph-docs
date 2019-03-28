
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of DateTimeTimeZone
var start = new DateTimeTimeZone
{
	@odata.type = "#microsoft.graph.dateTimeTimeZone",
	DateTime = "2018-05-01T15:00:00+03:00",
	TimeZone = "UTC",
};

//create instance of PhysicalAddress
var address = new PhysicalAddress
{
	@odata.type = "#microsoft.graph.physicalAddress",
	City = "Buffalo",
	CountryOrRegion = "USA",
	PostalCode = "98052",
	PostOfficeBox = null,
	State = "NY",
	Street = "123 First Avenue",
	Type@odata.type = "#microsoft.graph.physicalAddressType",
	Type = null,
};

//create instance of Location
var serviceLocation = new Location
{
	@odata.type = "#microsoft.graph.location",
	Address = address,
	Coordinates = null,
	DisplayName = "Customer location",
	LocationEmailAddress = null,
	LocationType@odata.type = "#microsoft.graph.locationType",
	LocationType = null,
	LocationUri = null,
	UniqueId = null,
	UniqueIdType@odata.type = "#microsoft.graph.locationUniqueIdType",
	UniqueIdType = null,
};

var recipients = "staff";

var recipientsVar@odata.type = "#microsoft.graph.bookingReminderRecipients";

var offset = "PT2H";

var message = "Please check traffic for next cater.";

var @odata.type = "#microsoft.graph.bookingReminder";

var recipientsVar = "customer";

var recipientsVarVar@odata.typeVar = "#microsoft.graph.bookingReminderRecipients";

var offsetVar = "PT1H";

var messageVar = "Please be available to enjoy your lunch service.";

var @odata.typeVar = "#microsoft.graph.bookingReminder";

var recipientsVarVar = "allAttendees";

var recipientsVarVar@odata.typeVarVar = "#microsoft.graph.bookingReminderRecipients";

var offsetVarVar = "P1D";

var messageVarVar = "This service is tomorrow";

var @odata.typeVarVar = "#microsoft.graph.bookingReminder";

//create BookingReminder list and populate it
var reminders = new List<BookingReminder>();
reminders.Add(new BookingReminder(@odata.typeVarVar,messageVarVar,offsetVarVar,recipientsVarVar@odata.typeVarVar,recipientsVarVar));
reminders.Add(new BookingReminder(@odata.typeVar,messageVar,offsetVar,recipientsVar@odata.typeVar,recipientsVar));
reminders.Add(new BookingReminder(@odata.type,message,offset,recipients@odata.type,recipients));

//create instance of DateTimeTimeZone
var invoiceDate = new DateTimeTimeZone
{
	@odata.type = "#microsoft.graph.dateTimeTimeZone",
	DateTime = "2018-05-01T15:30:00+03:00",
	TimeZone = "UTC",
};

//create instance of DateTimeTimeZone
var end = new DateTimeTimeZone
{
	@odata.type = "#microsoft.graph.dateTimeTimeZone",
	DateTime = "2018-05-01T15:30:00+03:00",
	TimeZone = "UTC",
};

//create instance of PhysicalAddress
var address = new PhysicalAddress
{
	@odata.type = "#microsoft.graph.physicalAddress",
	City = "Buffalo",
	CountryOrRegion = "USA",
	PostalCode = "98052",
	PostOfficeBox = null,
	State = "NY",
	Street = "123 First Avenue",
	Type@odata.type = "#microsoft.graph.physicalAddressType",
	Type = null,
};

//create instance of Location
var customerLocation = new Location
{
	@odata.type = "#microsoft.graph.location",
	Address = address,
	Coordinates = null,
	DisplayName = "Customer",
	LocationEmailAddress = null,
	LocationType@odata.type = "#microsoft.graph.locationType",
	LocationType = null,
	LocationUri = null,
	UniqueId = null,
	UniqueIdType@odata.type = "#microsoft.graph.locationUniqueIdType",
	UniqueIdType = null,
};

//create instance of BookingAppointment
var appointments = new BookingAppointment
{
	@odata.type = "#microsoft.graph.bookingAppointment",
	CustomerEmailAddress = "jordanm@contoso.com",
	CustomerLocation = customerLocation,
	CustomerName = "Jordan Miller",
	CustomerNotes = "Please be on time.",
	CustomerPhone = "213-555-0199",
	End = end,
	InvoiceAmount = 10.0,
	InvoiceDate = invoiceDate,
	InvoiceId = "1001",
	InvoiceStatus@odata.type = "#microsoft.graph.bookingInvoiceStatus",
	InvoiceStatus = "open",
	InvoiceUrl = "theInvoiceUrl",
	OptOutOfCustomerEmail = false,
	PostBuffer = "PT10M",
	PreBuffer = "PT5M",
	Price = 10.0,
	PriceType@odata.type = "#microsoft.graph.bookingPriceType",
	PriceType = "fixedPrice",
	Reminders@odata.type = "#Collection(microsoft.graph.bookingReminder)",
	Reminders = reminders,
	ServiceId = "57da6774-a087-4d69-b0e6-6fb82c339976",
	ServiceLocation = serviceLocation,
	ServiceName = "Catered bento",
	ServiceNotes = "Customer requires punctual service.",
	Start = start,
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Appointments
	.Request()
	.AddAsync(appointments);

```