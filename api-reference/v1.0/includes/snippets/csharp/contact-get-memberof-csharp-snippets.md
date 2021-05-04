---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var memberOf = await graphClient.Contacts["{orgContact-id}"].MemberOf
	.Request()
	.GetAsync();

```