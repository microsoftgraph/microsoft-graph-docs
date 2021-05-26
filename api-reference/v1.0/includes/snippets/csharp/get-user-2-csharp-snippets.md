---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = await graphClient.Users["{user-id}"]
	.Request()
	.Select("displayName,givenName,postalCode")
	.GetAsync();

```