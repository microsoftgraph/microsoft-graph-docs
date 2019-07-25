---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.Classes["11021"].Assignments["19002"].Resources["22002"]
	.Request()
	.DeleteAsync();

```