
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create String list and populate it
var staffMemberIds = new List<String>();

//create instance of BookingSchedulingPolicy
var schedulingPolicy = new BookingSchedulingPolicy
{
	@odata.type = "#microsoft.graph.bookingSchedulingPolicy",
	AllowStaffSelection = true,
	MaximumAdvance = "P10D",
	MinimumLeadTime = "PT10H",
	SendConfirmationsToOwner = true,
	TimeSlotInterval = "PT1H",
};

var recipients = "allAttendees";

var recipients@odata.type = "#microsoft.graph.bookingReminderRecipients";

var offset = "P1D";

var message = "Please be reminded that this service is tomorrow.";

var @odata.type = "#microsoft.graph.bookingReminder";

//create BookingReminder list and populate it
var defaultReminders = new List<BookingReminder>();
defaultReminders.Add(new BookingReminder(@odata.type,message,offset,recipients@odata.type,recipients));

//create instance of PhysicalAddress
var address = new PhysicalAddress
{
	@odata.type = "#microsoft.graph.physicalAddress",
	City = "Buffalo",
	CountryOrRegion = "USA",
	PostalCode = "98052",
	PostOfficeBox = null,
	State = "NY",
	Street = "4567 First Street",
	Type@odata.type = "#microsoft.graph.physicalAddressType",
	Type = null,
};

//create instance of Location
var defaultLocation = new Location
{
	@odata.type = "#microsoft.graph.location",
	Address = address,
	Coordinates = null,
	DisplayName = "Contoso Lunch Delivery",
	LocationEmailAddress = null,
	LocationType@odata.type = "#microsoft.graph.locationType",
	LocationType = null,
	LocationUri = null,
	UniqueId = null,
	UniqueIdType@odata.type = "#microsoft.graph.locationUniqueIdType",
	UniqueIdType = null,
};

//create instance of BookingService
var services = new BookingService
{
	@odata.type = "#microsoft.graph.bookingService",
	DefaultDuration = "PT1H30M",
	DefaultLocation = defaultLocation,
	DefaultPrice = 10.0,
	DefaultPriceType@odata.type = "#microsoft.graph.bookingPriceType",
	DefaultPriceType = "fixedPrice",
	DefaultReminders@odata.type = "#Collection(microsoft.graph.bookingReminder)",
	DefaultReminders = defaultReminders,
	Description = "Individual bento box lunch delivery",
	DisplayName = "Bento",
	IsHiddenFromCustomers = false,
	Notes = "Home-cooked special",
	PostBuffer = "PT10M",
	PreBuffer = "PT5M",
	SchedulingPolicy = schedulingPolicy,
	StaffMemberIds@odata.type = "#Collection(String)",
	StaffMemberIds = staffMemberIds,
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Services
	.Request()
	.AddAsync(services);

```