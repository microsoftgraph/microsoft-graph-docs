---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationAssignmentResource = new EducationAssignmentResource
{
	DistributeForStudentWork = false,
	Resource = new EducationLinkResource
	{
		DisplayName = "Bing",
		Link = "https://www.bing.com"
	}
};

await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Resources
	.Request()
	.AddAsync(educationAssignmentResource);

```