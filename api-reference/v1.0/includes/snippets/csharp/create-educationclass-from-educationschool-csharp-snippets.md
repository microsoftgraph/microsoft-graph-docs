---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.Schools["{school-id}"].Users["{user-id}"]
	.Request()
	.DeleteAsync();

```