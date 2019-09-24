---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationSchool = new EducationSchool
{
	DisplayName = "Fabrikam Arts High School",
	Description = "Magnate school for the arts. Los Angeles School District"
};

await graphClient.Education.Schools["{school-id}"]
	.Request()
	.UpdateAsync(educationSchool);

```