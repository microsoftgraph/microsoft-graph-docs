---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var taughtClasses = await graphClient.Education.Users["{educationUser-id}"].TaughtClasses
	.Request()
	.GetAsync();

```