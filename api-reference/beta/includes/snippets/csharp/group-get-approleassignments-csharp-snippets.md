---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignments = await graphClient.Groups["{group-id}"].AppRoleAssignments
	.Request()
	.GetAsync();

```