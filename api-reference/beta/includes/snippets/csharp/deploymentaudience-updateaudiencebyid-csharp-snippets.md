---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var memberEntityType = "String";

var addMembers = new List<String>()
{
	"String"
};

var removeMembers = new List<String>()
{
	"String"
};

var addExclusions = new List<String>()
{
	"String"
};

var removeExclusions = new List<String>()
{
	"String"
};

await graphClient.Admin.Windows.Updates.Deployments["{windowsUpdates.deployment-id}"].Audience
	.UpdateAudienceById(memberEntityType,addMembers,removeMembers,addExclusions,removeExclusions)
	.Request()
	.PostAsync();

```