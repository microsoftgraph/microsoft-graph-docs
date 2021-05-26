---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var controls = await graphClient.Programs["{program-id}"].Controls
	.Request()
	.GetAsync();

```