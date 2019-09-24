---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationRubric = new EducationRubric
{
	DisplayName = "Example Credit Rubric after display name patch"
};

await graphClient.Education.Me.Rubrics["{id}"]
	.Request()
	.UpdateAsync(educationRubric);

```