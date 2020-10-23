---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var program = new Program
{
	DisplayName = "testprogram3 new name"
};

await graphClient.Programs["7e59d237-2fb0-4e5d-b7bb-d4f9f9129213"]
	.Request()
	.UpdateAsync(program);

```