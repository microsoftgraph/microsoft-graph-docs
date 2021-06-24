---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printerShare = await graphClient.Print.Shares["{printerShare-id}"]
	.Request()
	.Select("id,displayName,capabilities")
	.GetAsync();

```