---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemPhone = new ItemPhone
{
	DisplayName = "Car Phone",
	Number = "+7 499 342 22 13"
};

await graphClient.Me.Profile.Phones
	.Request()
	.AddAsync(itemPhone);

```