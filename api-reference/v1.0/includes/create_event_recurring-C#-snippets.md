
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var type = "required";

//create instance of Attendee
var emailAddress = new Attendee
{
	Address = "AdeleV@contoso.onmicrosoft.com",
	Name = "Adele Vance",
};

//create Attendee list and populate it
var attendees = new List<Attendee>();
attendees.Add(new Attendee(emailAddress,type));

//create instance of Location
var location = new Location
{
	DisplayName = "Harry's Bar",
};

//create instance of RecurrenceRange
var range = new RecurrenceRange
{
	Type = "endDate",
	StartDate = "2017-09-04",
	EndDate = "2017-12-31",
};

//create DayOfWeek list and populate it
var daysOfWeek = new List<DayOfWeek>();

//create instance of RecurrencePattern
var pattern = new RecurrencePattern
{
	Type = "weekly",
	Interval = 1,
	DaysOfWeek = daysOfWeek,
};

//create instance of PatternedRecurrence
var recurrence = new PatternedRecurrence
{
	Pattern = pattern,
	Range = range,
};

//create instance of DateTimeTimeZone
var end = new DateTimeTimeZone
{
	DateTime = "2017-09-04T14:00:00",
	TimeZone = "Pacific Standard Time",
};

//create instance of DateTimeTimeZone
var start = new DateTimeTimeZone
{
	DateTime = "2017-09-04T12:00:00",
	TimeZone = "Pacific Standard Time",
};

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "HTML",
	Content = "Does noon time work for you?",
};

//create instance of Event
var events = new Event
{
	Subject = "Let's go for lunch",
	Body = body,
	Start = start,
	End = end,
	Recurrence = recurrence,
	Location = location,
	Attendees = attendees,
};

await graphClient.Me.Events
	.Request()
	.AddAsync(events);

```