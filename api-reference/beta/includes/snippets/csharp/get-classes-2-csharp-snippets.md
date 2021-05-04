---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var classes = await graphClient.Education.Schools["{educationSchool-id}"].Classes
	.Request()
	.GetAsync();

```