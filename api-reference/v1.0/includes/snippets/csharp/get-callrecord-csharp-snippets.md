---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var callRecord = await graphClient.Communications.CallRecords["{callRecords.callRecord-id}"]
	.Request()
	.GetAsync();

```