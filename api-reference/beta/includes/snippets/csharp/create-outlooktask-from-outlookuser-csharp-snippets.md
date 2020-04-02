---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookTask = new OutlookTask
{
	Subject = "Shop for children's weekend",
	StartDateTime = new DateTimeTimeZone
	{
		DateTime = "2016-05-03T09:00:00",
		TimeZone = "Eastern Standard Time"
	},
	DueDateTime = new DateTimeTimeZone
	{
		DateTime = "2016-05-05T16:00:00",
		TimeZone = "Eastern Standard Time"
	}
};

await graphClient.Me.Outlook.Tasks
	.Request()
	.Header("Prefer","outlook.timezone=\"Pacific Standard Time\"")
	.AddAsync(outlookTask);

```