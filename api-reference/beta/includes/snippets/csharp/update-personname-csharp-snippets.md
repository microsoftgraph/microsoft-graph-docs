---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personName = new PersonName
{
	Nickname = "Kesha"
};

await graphClient.Me.Profile.Names["{id}"]
	.Request()
	.UpdateAsync(personName);

```