---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignment = new AppRoleAssignment
{
	CreationTimestamp = "2016-10-19T10:37:00Z",
	PrincipalDisplayName = "principalDisplayName-value",
	PrincipalId = "principalId-value",
	PrincipalType = "principalType-value",
	ResourceDisplayName = "resourceDisplayName-value"
};

await graphClient.AppRoleAssignments["{id}"]
	.Request()
	.UpdateAsync(appRoleAssignment);

```