---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var shiftPreferences = await graphClient.Users["{user-id}"].Settings.ShiftPreferences
	.Request()
	.GetAsync();

```