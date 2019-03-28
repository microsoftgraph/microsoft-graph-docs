
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of DateTimeTimeZone
var newReminderTime = new DateTimeTimeZone
{
	DateTime = "dateTime-value",
	TimeZone = "timeZone-value",
};

await graphClient.Me.Events["{id}"]
	.snoozeReminder(newReminderTime);
	.Request()
	.PostAsync()

```