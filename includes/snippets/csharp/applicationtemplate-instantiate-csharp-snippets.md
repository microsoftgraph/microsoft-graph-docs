---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var displayName = "AWS Contoso";

await graphClient.ApplicationTemplates["8b1025e4-1dd2-430b-a150-2ef79cd700f5"]
	.Instantiate(displayName)
	.Request()
	.PostAsync();

```