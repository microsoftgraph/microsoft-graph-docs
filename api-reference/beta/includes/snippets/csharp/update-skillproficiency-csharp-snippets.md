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
	Proficiency = SkillProficiencyLevel.AdvancedProfessional
};

await graphClient.Me.Profile.Skills["{id}"]
	.Request()
	.UpdateAsync(skillProficiency);

```