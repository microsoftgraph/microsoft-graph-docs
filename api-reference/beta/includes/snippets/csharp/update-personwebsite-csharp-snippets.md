---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personWebsite = new PersonWebsite
{
	Description = "Lyn Damer play in the Women's 1st Division (Toppserien) in Norway"
};

await graphClient.Me.Profile.Websites["{id}"]
	.Request()
	.UpdateAsync(personWebsite);

```