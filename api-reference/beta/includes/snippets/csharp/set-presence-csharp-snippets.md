---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sessionId = "22553876-f5ab-4529-bffb-cfe50aa89f87";

var availability = "Available";

var activity = "Available";

var expirationDuration = new Duration("PT1H");

await graphClient.Users["{user-id}"].Presence
	.SetPresence(sessionId,availability,activity,expirationDuration)
	.Request()
	.PostAsync();

```