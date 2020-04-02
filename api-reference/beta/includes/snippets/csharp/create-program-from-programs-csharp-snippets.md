---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var program = new Program
{
	DisplayName = "testprogram3",
	Description = "test description"
};

await graphClient.Programs
	.Request()
	.AddAsync(program);

```