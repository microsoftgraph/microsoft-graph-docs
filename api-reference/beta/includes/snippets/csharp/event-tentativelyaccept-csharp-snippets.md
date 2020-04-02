---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var comment = "I may not be able to make this week. How about next week?";

var sendResponse = true;

var proposedNewTime = new TimeSlot
{
	Start = new DateTimeTimeZone
	{
		DateTime = "2019-12-02T18:00:00",
		TimeZone = "Pacific Standard Time"
	},
	End = new DateTimeTimeZone
	{
		DateTime = "2019-12-02T19:00:00",
		TimeZone = "Pacific Standard Time"
	}
};

await graphClient.Me.Events["{id}"]
	.TentativelyAccept(proposedNewTime,sendResponse,comment)
	.Request()
	.PostAsync();

```