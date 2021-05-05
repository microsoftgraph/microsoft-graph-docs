---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personAnnualEvent = new PersonAnnualEvent
{
	Type = PersonAnnualEventType.Birthday,
	Date = new Date(1980,1,8)
};

await graphClient.Me.Profile.Anniversaries
	.Request()
	.AddAsync(personAnnualEvent);

```