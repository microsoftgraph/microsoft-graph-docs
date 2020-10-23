---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var skillProficiency = new SkillProficiency
{
	Categories = new List<String>()
	{
		"Professional"
	},
	AllowedAudiences = AllowedAudiences.Organization,
	DisplayName = "API Design",
	Proficiency = SkillProficiencyLevel.GeneralProfessional,
	CollaborationTags = new List<String>()
	{
		"ableToMentor"
	}
};

await graphClient.Me.Profile.Skills
	.Request()
	.AddAsync(skillProficiency);

```