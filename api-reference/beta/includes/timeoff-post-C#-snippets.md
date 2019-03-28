
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of TimeOffItem
var draftTimeOff = new TimeOffItem
{
	TimeOffReasonId = "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
	StartDateTime = "2019-03-11T07:00:00Z",
	EndDateTime = "2019-03-12T07:00:00Z",
	Theme = "pink",
};

//create instance of TimeOffItem
var sharedTimeOff = new TimeOffItem
{
	TimeOffReasonId = "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
	StartDateTime = "2019-03-11T07:00:00Z",
	EndDateTime = "2019-03-12T07:00:00Z",
	Theme = "white",
};

//create instance of TimeOff
var timesOff = new TimeOff
{
	UserId = "c5d0c76b-80c4-481c-be50-923cd8d680a1",
	SharedTimeOff = sharedTimeOff,
	DraftTimeOff = draftTimeOff,
};

await graphClient.Teams["{teamId}"].Schedule.TimesOff
	.Request()
	.AddAsync(timesOff);

```