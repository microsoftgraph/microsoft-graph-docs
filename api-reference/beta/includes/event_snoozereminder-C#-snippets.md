
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of DateTimeTimeZone
var newReminderTime = new DateTimeTimeZone
{
	DateTime = "2016-10-19T10:37:00Z",
	TimeZone = "timeZone-value",
};

await graphClient.Me.Events["{id}"]
	.snoozeReminder(newReminderTime);
	.Request()
	.PostAsync()

```