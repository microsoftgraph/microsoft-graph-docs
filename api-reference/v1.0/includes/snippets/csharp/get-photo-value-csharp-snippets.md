---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var Stream = await graphClient.Users["{id|userPrincipalName}"].Photo.Content
	.Request()
	.GetAsync();

```