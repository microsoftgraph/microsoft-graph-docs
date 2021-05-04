---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var owners = await graphClient.Applications["{application-id}"].Owners
	.Request()
	.GetAsync();

```