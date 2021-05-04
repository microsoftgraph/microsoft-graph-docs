---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignment = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("7679d9a4-2323-44cd-b5c2-673ec88d8b12"),
	ResourceId = Guid.Parse("076e8b57-bac8-49d7-9396-e3449b685055"),
	AppRoleId = Guid.Parse("00000000-0000-0000-0000-000000000000")
};

await graphClient.Groups["{group-id}"].AppRoleAssignments
	.Request()
	.AddAsync(appRoleAssignment);

```