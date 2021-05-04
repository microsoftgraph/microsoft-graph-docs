---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sessions = await graphClient.Communications.CallRecords["{callRecords.callRecord-id}"].Sessions
	.Request()
	.GetAsync();

```