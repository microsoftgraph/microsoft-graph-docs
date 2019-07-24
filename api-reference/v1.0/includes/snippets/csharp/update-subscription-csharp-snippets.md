---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subscription = new Subscription
{
	ExpirationDateTime = "2016-11-22T18:23:45.9356913Z"
};

await graphClient.Subscriptions["{id}"]
	.Request()
	.UpdateAsync(subscription);

```