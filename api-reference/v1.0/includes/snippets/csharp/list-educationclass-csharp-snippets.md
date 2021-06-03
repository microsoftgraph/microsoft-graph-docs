---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var taughtClasses = await graphClient.Education.Classes["{educationClass-id}"].Members["{educationUser-id}"].TaughtClasses
	.Request()
	.GetAsync();

```