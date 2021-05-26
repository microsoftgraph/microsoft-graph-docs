---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var place = new Room
{
	Nickname = "Conf Room",
	Building = "1",
	Label = "100",
	Capacity = 50,
	IsWheelChairAccessible = false
};

await graphClient.Places["{place-id}"]
	.Request()
	.UpdateAsync(place);

```