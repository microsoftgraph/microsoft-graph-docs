---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamworkTag = new TeamworkTag
{
	DisplayName = "Finance"
};

await graphClient.Teams["{team-id}"].Tags["{teamworkTag-id}"]
	.Request()
	.UpdateAsync(teamworkTag);

```