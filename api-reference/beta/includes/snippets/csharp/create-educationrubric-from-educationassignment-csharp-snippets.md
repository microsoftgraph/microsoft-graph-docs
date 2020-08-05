---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationRubric = new EducationRubric
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/v1.0/education/me/rubrics/{id}"}
	}
};

await graphClient.Education.Classes["{id}"].Assignments["{id}"].Rubric.Reference
	.Request()
	.PutAsync(educationRubric);

```