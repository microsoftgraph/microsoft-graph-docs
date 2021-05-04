---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var namedLocation = new IpNamedLocation
{
	DisplayName = "Untrusted IP named location",
	IsTrusted = false,
	IpRanges = new List<IpRange>()
	{
		new IPv4CidrRange
		{
			CidrAddress = "12.34.221.11/22"
		},
		new IPv6CidrRange
		{
			CidrAddress = "2001:0:9d38:90d6:0:0:0:0/63"
		}
	}
};

await graphClient.Identity.ConditionalAccess.NamedLocations
	.Request()
	.AddAsync(namedLocation);

```