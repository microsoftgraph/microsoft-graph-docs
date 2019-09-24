---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeOff = await graphClient.Teams["{teamId}"].Schedule.TimesOff["{timeOffId}"]
	.Request()
	.GetAsync();

```