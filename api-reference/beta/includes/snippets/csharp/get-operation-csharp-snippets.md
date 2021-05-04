---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var longRunningOperation = await graphClient.Users["{user-id}"].Authentication.Operations["{longRunningOperation-id}"]
	.Request()
	.GetAsync();

```