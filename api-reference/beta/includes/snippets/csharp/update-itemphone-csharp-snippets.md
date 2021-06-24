---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemPhone = new ItemPhone
{
	Type = PhoneType.Other
};

await graphClient.Users["{user-id}"].Profile.Phones["{itemPhone-id}"]
	.Request()
	.UpdateAsync(itemPhone);

```