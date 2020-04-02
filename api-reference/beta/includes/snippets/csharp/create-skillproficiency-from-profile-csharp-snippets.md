---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var skillProficiency = new SkillProficiency
{
	Categories = new List<String>()
	{
		"categories-value"
	},
	DisplayName = "displayName-value",
	Proficiency = SkillProficiencyLevel.Elementary,
	WebUrl = "webUrl-value"
};

await graphClient.Me.Profile.Skills
	.Request()
	.AddAsync(skillProficiency);

```