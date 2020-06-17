---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationMethod = await graphClient.Me.Authentication.Methods["{id}"]
	.Request()
	.GetAsync();

```