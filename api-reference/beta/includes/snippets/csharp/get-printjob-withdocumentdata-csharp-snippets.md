---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printJob = await graphClient.Print.Printers["86b6d420-7e6b-4797-a05c-af4e56cd81bd"].Jobs["31216"]
	.Request()
	.Expand("documents")
	.GetAsync();

```