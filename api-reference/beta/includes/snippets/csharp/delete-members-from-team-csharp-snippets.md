---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Teams["{teamsId}"].Members["{membership-id}"]
	.Request()
	.DeleteAsync();

```