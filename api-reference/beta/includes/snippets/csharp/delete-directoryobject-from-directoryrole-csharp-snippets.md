---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Directoryroles["{id}"].Members["{id}"].Reference
	.Request()
	.DeleteAsync();

```