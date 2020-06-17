---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Contacts
	.Delta()
	.Request()
	.Select("displayName,jobTitle,mail")
	.GetAsync();

```