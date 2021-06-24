---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var program = new Program
{
	DisplayName = "testprogram3 new name"
};

await graphClient.Programs["{program-id}"]
	.Request()
	.UpdateAsync(program);

```