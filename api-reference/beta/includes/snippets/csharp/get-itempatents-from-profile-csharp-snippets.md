---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var patents = await graphClient.Me.Profile.Patents
	.Request()
	.GetAsync();

```