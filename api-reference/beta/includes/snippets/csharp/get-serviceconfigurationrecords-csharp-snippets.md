---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var serviceConfigurationRecords = await graphClient.Domains["contoso.com"].ServiceConfigurationRecords
	.Request()
	.GetAsync();

```