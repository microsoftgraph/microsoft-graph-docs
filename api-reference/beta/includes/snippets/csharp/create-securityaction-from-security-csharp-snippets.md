---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var securityAction = new SecurityAction
{
	Name = "BlockIp",
	ActionReason = "Test",
	Parameters = new List<KeyValuePair>()
	{
		new KeyValuePair
		{
			Name = "IP",
			Value = "1.2.3.4"
		}
	},
	VendorInformation = new SecurityVendorInformation
	{
		Provider = "Windows Defender ATP",
		Vendor = "Microsoft"
	}
};

await graphClient.Security.SecurityActions
	.Request()
	.AddAsync(securityAction);

```