
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var displayName = "Home Office";

//create instance of OutlookGeoCoordinates
var coordinates = new OutlookGeoCoordinates
{
	Latitude = 47.672,
	Longitude = -102.103,
};

//create instance of PhysicalAddress
var address = new PhysicalAddress
{
	Street = "4567 Main St",
	City = "Redmond",
	State = "WA",
	CountryOrRegion = "US",
	PostalCode = "32008",
};

var displayNameVar = "Fourth Coffee";

var displayNameVarVar = "Conf Room 3";

//create Location list and populate it
var locations = new List<Location>();
locations.Add(new Location(displayNameVarVar));
locations.Add(new Location(displayNameVar,address,coordinates));
locations.Add(new Location(displayName));

//create instance of Location
var location = new Location
{
	DisplayName = "Conf Room 3; Fourth Coffee; Home Office",
	LocationType = "Default",
};

var type = "Required";

//create instance of Attendee
var emailAddress = new Attendee
{
	Address = "AlexW@contoso.onmicrosoft.com",
	Name = "Alex Wilber",
};

var typeVar = "Required";

//create instance of Attendee
var emailAddressVar = new Attendee
{
	Address = "DanaS@contoso.onmicrosoft.com",
	Name = "Dana Swope",
};

//create Attendee list and populate it
var attendees = new List<Attendee>();
attendees.Add(new Attendee(emailAddressVar,typeVar));
attendees.Add(new Attendee(emailAddress,type));

//create instance of DateTimeTimeZone
var end = new DateTimeTimeZone
{
	DateTime = "2017-08-30T12:00:00",
	TimeZone = "Pacific Standard Time",
};

//create instance of DateTimeTimeZone
var start = new DateTimeTimeZone
{
	DateTime = "2017-08-30T11:00:00",
	TimeZone = "Pacific Standard Time",
};

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "HTML",
	Content = "Let's kick-start this event planning!",
};

//create instance of Event
var events = new Event
{
	Subject = "Plan summer company picnic",
	Body = body,
	Start = start,
	End = end,
	Attendees = attendees,
	Location = location,
	Locations = locations,
};

await graphClient.Me.Events
	.Request()
	.AddAsync(events);

```