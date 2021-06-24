---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Users["{user-id}"].Profile.Notes["{personAnnotation-id}"]
	.Request()
	.DeleteAsync();

```