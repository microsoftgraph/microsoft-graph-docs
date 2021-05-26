---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleSchedules = await graphClient.RoleManagement.Directory
	.RoleSchedules("a3bb8764-cb92-4276-9d2a-ca1e895e55ea","a3bb8764-cb92-4276-9d2a-ca1e895e55ea","a3bb8764-cb92-4276-9d2a-ca1e895e55ea","a3bb8764-cb92-4276-9d2a-ca1e895e55ea")
	.Request()
	.GetAsync();

```