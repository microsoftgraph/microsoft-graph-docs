---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directorySettingTemplates = await graphClient.DirectorySettingTemplates
	.Request()
	.GetAsync();

```