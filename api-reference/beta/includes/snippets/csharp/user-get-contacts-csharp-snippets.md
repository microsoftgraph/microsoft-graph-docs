---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contacts = await graphClient.Me.Contacts
	.Request()
	.Select("displayName,emailAddresses")
	.GetAsync();

```