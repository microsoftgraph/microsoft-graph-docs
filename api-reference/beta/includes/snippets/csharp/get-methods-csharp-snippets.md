---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var methods = await graphClient.Me.Authentication.Methods
	.Request()
	.GetAsync();

```