
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var displayName = "Lunch";

var code = "";

var endDateTime = 3/11/2019 3:30:00 PM;

var startDateTime = 3/11/2019 3:00:00 PM;

var isPaid = True;

//create ShiftActivity list and populate it
var activities = new List<ShiftActivity>();
activities.Add(new ShiftActivity(isPaid,startDateTime,endDateTime,code,displayName));

//create instance of ShiftItem
var draftShift = new ShiftItem
{
	DisplayName = "Day shift",
	Notes = "Please do inventory as part of your shift.",
	StartDateTime = "2019-03-11T15:00:00Z",
	EndDateTime = "2019-03-12T00:00:00Z",
	Theme = "blue",
	Activities = activities,
};

var displayName = "Lunch";

var code = "";

var endDateTime = 3/11/2019 3:15:00 PM;

var startDateTime = 3/11/2019 3:00:00 PM;

var isPaid = True;

//create ShiftActivity list and populate it
var activities = new List<ShiftActivity>();
activities.Add(new ShiftActivity(isPaid,startDateTime,endDateTime,code,displayName));

//create instance of ShiftItem
var sharedShift = new ShiftItem
{
	DisplayName = "Day shift",
	Notes = "Please do inventory as part of your shift.",
	StartDateTime = "2019-03-11T15:00:00Z",
	EndDateTime = "2019-03-12T00:00:00Z",
	Theme = "blue",
	Activities = activities,
};

//create instance of Shift
var shifts = new Shift
{
	Id = "SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8",
	UserId = "c5d0c76b-80c4-481c-be50-923cd8d680a1",
	SchedulingGroupId = "TAG_228940ed-ff84-4e25-b129-1b395cf78be0",
	SharedShift = sharedShift,
	DraftShift = draftShift,
};

await graphClient.Teams["{teamId}"].Schedule.Shifts
	.Request()
	.AddAsync(shifts);

```