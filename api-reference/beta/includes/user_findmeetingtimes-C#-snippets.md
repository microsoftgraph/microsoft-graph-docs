
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of AttendeeBase
var emailAddress = new AttendeeBase
{
	Name = "Alex Wilbur",
	Address = "alexw@contoso.onmicrosoft.com",
};

var type = "required";

//create AttendeeBase list and populate it
var attendees = new List<AttendeeBase>();
attendees.Add(new AttendeeBase(type,emailAddress));

var displayName = "Conf room Hood";

var resolveAvailability = "false";

//create AttendeeBase list and populate it
var locations = new List<AttendeeBase>();
locations.Add(new AttendeeBase(resolveAvailability,displayName));

//create instance of AttendeeBase
var locationConstraint = new AttendeeBase
{
	IsRequired = "false",
	SuggestLocation = "false",
	Locations = locations,
};

//create instance of AttendeeBase
var end = new AttendeeBase
{
	DateTime = "2019-04-18T17:00:00",
	TimeZone = "Pacific Standard Time",
};

//create instance of AttendeeBase
var start = new AttendeeBase
{
	DateTime = "2019-04-16T09:00:00",
	TimeZone = "Pacific Standard Time",
};

//create AttendeeBase list and populate it
var timeslots = new List<AttendeeBase>();
timeslots.Add(new AttendeeBase(start,end));

//create instance of AttendeeBase
var timeConstraint = new AttendeeBase
{
	ActivityDomain = "work",
	Timeslots = timeslots,
};

var isOrganizerOptional = "false";

var meetingDuration = "PT1H";

var returnSuggestionReasons = "true";

var minimumAttendeePercentage = "100";

await graphClient.Me
	.findMeetingTimes(attendees,locationConstraint,timeConstraint,meetingDuration,maxCandidates,isOrganizerOptional,returnSuggestionReasons,minimumAttendeePercentage);
	.Request()
	.PostAsync()

```