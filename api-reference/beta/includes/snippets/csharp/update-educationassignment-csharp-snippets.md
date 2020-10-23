---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationAssignment = new EducationAssignment
{
	DisplayName = "Week 1 reading assignment",
	Instructions = new EducationItemBody
	{
		ContentType = BodyType.Text,
		Content = "Read chapters 1 through 3"
	},
	DueDateTime = DateTimeOffset.Parse("2014-02-01T00:00:00Z")
};

await graphClient.Education.Classes["11021"].Assignments["19002"]
	.Request()
	.UpdateAsync(educationAssignment);

```