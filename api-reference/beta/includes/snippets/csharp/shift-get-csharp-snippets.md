---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var shiftPreferences = await graphClient.Users["871dbd5c-3a6a-4392-bfe1-042452793a50"].ShiftPreferences
	.Request()
	.GetAsync();

```