---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookTask = new OutlookTask
{
	DueDateTime = new DateTimeTimeZone
	{
		DateTime = "2016-05-06T16:00:00",
		TimeZone = "Eastern Standard Time"
	}
};

await graphClient.Me.Outlook.Tasks["AAMkADA1MTHgwAAA="]
	.Request()
	.Header("Prefer","outlook.timezone=\"Eastern Standard Time\"")
	.UpdateAsync(outlookTask);

```