---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tasks = await graphClient.Print.TaskDefinitions["92d72a3d-cad7-4809-8924-43833282b079"].Tasks
	.Request()
	.GetAsync();

```