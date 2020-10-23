---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var longRunningOperation = await graphClient.Users["{id | userPrincipalName}"].Authentication.Operations["{id}"]
	.Request()
	.GetAsync();

```