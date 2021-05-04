---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var members = await graphClient.Education.Classes["{educationClass-id}"].Members
	.Request()
	.GetAsync();

```