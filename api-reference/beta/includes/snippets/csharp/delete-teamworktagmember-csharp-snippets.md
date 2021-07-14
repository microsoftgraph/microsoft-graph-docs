---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Teams["{team-id}"].Tags["{teamworkTag-id}"].Members["{teamworkTagMember-id}"]
	.Request()
	.DeleteAsync();

```