---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var users = await graphClient.Users
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Filter("endswith(mail,'a@contoso.com')")
	.OrderBy("userPrincipalName")
	.GetAsync();

```