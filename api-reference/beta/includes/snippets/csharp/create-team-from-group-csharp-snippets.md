---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var team = new Team
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"group@odata.bind","https://graph.microsoft.com/v1.0/groups('groupId')"},
		{"template@odata.bind","https://graph.microsoft.com/beta/teamsTemplates('standard')"}
	}
};

await graphClient.Teams
	.Request()
	.AddAsync(team);

```