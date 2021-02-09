---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.External.Connections["contosohr"].Groups["31bea3d537902000"].Members["14m1b9c38qe647f6a"]
	.Request()
	.DeleteAsync();

```