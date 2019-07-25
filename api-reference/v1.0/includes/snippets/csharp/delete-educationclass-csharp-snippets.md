---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.Classes["{class-id}"]
	.Request()
	.DeleteAsync();

```