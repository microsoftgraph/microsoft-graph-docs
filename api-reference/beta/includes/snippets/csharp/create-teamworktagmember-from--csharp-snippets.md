---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamworkTagMember = new TeamworkTagMember
{
	UserId = "97f62344-57dc-409c-88ad-c4af14158ff5"
};

await graphClient.Teams["{team-id}"].Tags["{teamworkTag-id}"].Members
	.Request()
	.AddAsync(teamworkTagMember);

```