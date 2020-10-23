---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var newReminderTime = new DateTimeTimeZone
{
	DateTime = "dateTime-value",
	TimeZone = "timeZone-value"
};

await graphClient.Me.Events["{id}"]
	.SnoozeReminder(newReminderTime)
	.Request()
	.PostAsync();

```