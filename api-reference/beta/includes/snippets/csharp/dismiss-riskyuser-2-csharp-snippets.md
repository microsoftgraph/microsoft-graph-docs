---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userIds = new List<String>()
{
	"04487ee0-f4f6-4e7f-8999-facc5a30e232"
};

await graphClient.IdentityProtection.RiskyUsers
	.Dismiss(userIds)
	.Request()
	.PostAsync();

```