---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onenoteOperation = await graphClient.Me.Onenote.Operations["{onenoteOperation-id}"]
	.Request()
	.GetAsync();

```