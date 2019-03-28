
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of ResponseStatus
var responseStatus = new ResponseStatus
{
	Response = "",
	Time = "2016-10-19T10:37:00Z",
};

//create instance of Event
var events = new Event
{
	OriginalStartTimeZone = "originalStartTimeZone-value",
	OriginalEndTimeZone = "originalEndTimeZone-value",
	ResponseStatus = responseStatus,
	Uid = "iCalUId-value",
	ReminderMinutesBeforeStart = 99,
	IsReminderOn = true,
};

await graphClient.Groups["{id}"].Events
	.Request()
	.AddAsync(events);

```