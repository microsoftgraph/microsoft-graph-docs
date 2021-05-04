---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var temporaryAccessPassMethods = await graphClient.Me.Authentication.TemporaryAccessPassMethods
	.Request()
	.GetAsync();

```