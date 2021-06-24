---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var events = await graphClient.Groups["{group-id}"].Events
	.Request()
	.GetAsync();

```