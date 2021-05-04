---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.Schools["{educationSchool-id}"].Classes["{educationClass-id}"]
	.Request()
	.DeleteAsync();

```