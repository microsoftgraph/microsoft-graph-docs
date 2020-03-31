---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemPhone = new ItemPhone
{
	DisplayName = "displayName-value",
	Type = PhoneType.Home,
	Number = "number-value"
};

await graphClient.Me.Profile.Phones["{id}"]
	.Request()
	.UpdateAsync(itemPhone);

```