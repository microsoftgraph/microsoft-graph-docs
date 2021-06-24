---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extension = await graphClient.Groups["{group-id}"].Events["{event-id}"].Extensions["{extension-id}"]
	.Request()
	.GetAsync();

```