---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schedules = new List<String>()
{
	"adelev@contoso.onmicrosoft.com",
	"meganb@contoso.onmicrosoft.com"
};

var startTime = new DateTimeTimeZone
{
	DateTime = "2019-03-15T09:00:00",
	TimeZone = "Pacific Standard Time"
};

var endTime = new DateTimeTimeZone
{
	DateTime = "2019-03-15T18:00:00",
	TimeZone = "Pacific Standard Time"
};

var availabilityViewInterval = 60;

await graphClient.Me.Calendar
	.GetSchedule(schedules,endTime,startTime,availabilityViewInterval)
	.Request()
	.Header("Prefer","outlook.timezone=\"Pacific Standard Time\"")
	.PostAsync();

```