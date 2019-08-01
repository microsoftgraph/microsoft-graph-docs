---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Drive.Bundles["{bundle-id}"].Children["{item-id}"]
	.Request()
	.DeleteAsync();

```