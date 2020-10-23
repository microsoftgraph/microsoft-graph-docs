---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Todo.Lists["AAMkADA1MTHgwAAA="].Tasks["721a35e2-35e2-721a-e235-1a72e2351a72"]
	.Request()
	.DeleteAsync();

```