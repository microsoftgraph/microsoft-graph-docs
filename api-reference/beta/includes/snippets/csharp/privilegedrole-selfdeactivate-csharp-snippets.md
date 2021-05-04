---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.PrivilegedRoles["{privilegedRole-id}"]
	.SelfDeactivate()
	.Request()
	.PostAsync();

```