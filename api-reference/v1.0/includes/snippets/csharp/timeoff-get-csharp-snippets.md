---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeOff = await graphClient.Teams["{team-id}"].Schedule.TimesOff["{timeOff-id}"]
	.Request()
	.GetAsync();

```