---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var displayName = "Library Assist";

var description = "Self help community for library";

var mailNickname = "libassist";

var partsToClone = ClonableTeamParts.Apps | ClonableTeamParts.Tabs | ClonableTeamParts.Settings | ClonableTeamParts.Channels | ClonableTeamParts.Members;

var visibility = TeamVisibilityType.Public;

await graphClient.Teams["{team-id}"]
	.Clone(visibility,partsToClone,displayName,description,mailNickname,null)
	.Request()
	.PostAsync();

```