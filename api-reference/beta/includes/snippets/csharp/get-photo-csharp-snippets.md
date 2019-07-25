---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var profilePhoto = await graphClient.Users["{id|userPrincipalName}"].Photo
	.Request()
	.GetAsync();

```