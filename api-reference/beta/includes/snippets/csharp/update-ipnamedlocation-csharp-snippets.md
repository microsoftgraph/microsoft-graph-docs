---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var namedLocation = new IpNamedLocation
{
	DisplayName = "Untrusted named location with only IPv4 address",
	IsTrusted = false,
	IpRanges = new List<IpRange>()
	{
		new IPv4CidrRange
		{
			CidrAddress = "6.5.4.3/18"
		}
	}
};

await graphClient.Identity.ConditionalAccess.NamedLocations["0854951d-5fc0-4eb1-b392-9b2c9d7949c2"]
	.Request()
	.UpdateAsync(namedLocation);

```