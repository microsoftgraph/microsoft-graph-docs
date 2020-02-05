---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = await graphClient.Me.Calendar.Events["AAMkADJXJGu0AABf02qwAAA="]
	.Request()
	.GetAsync();

```