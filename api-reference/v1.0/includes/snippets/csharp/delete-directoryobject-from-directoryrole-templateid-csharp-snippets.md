---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.DirectoryRoles["roleTemplateId={role-templateId}"].Members["{user-id}"].Reference
	.Request()
	.DeleteAsync();

```