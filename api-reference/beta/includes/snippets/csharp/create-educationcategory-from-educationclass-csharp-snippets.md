---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationCategory = new EducationCategory
{
	DisplayName = "Quizzes"
};

await graphClient.Education.Classes["{educationClass-id}"].AssignmentCategories
	.Request()
	.AddAsync(educationCategory);

```