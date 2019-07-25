---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.Classes["11014"].AssignmentCategories["19002"]
	.Request()
	.DeleteAsync();

```