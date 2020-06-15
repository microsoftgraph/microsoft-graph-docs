---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = await graphClient.Groups["b320ee12-b1cd-4cca-b648-a437be61c5cd"]
	.Request()
	.Select("allowExternalSenders,autoSubscribeNewMembers,isSubscribedByMail,unseenCount")
	.GetAsync();

```