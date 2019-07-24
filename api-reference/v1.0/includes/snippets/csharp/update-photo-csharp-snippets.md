---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var profilePhoto = new ProfilePhoto
{
	Height = 99,
	Width = 99,
	Id = "id-value"
};

await graphClient.Users["{id|userPrincipalName}"].Photo
	.Request()
	.UpdateAsync(profilePhoto);

```