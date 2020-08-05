---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var secureScoreControlProfile = new SecureScoreControlProfile
{
	VendorInformation = new SecurityVendorInformation
	{
		Provider = "SecureScore",
		ProviderVersion = null,
		SubProvider = null,
		Vendor = "Microsoft"
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"assignedTo", ""},
		{"comment", "control is reviewed"},
		{"state", "Reviewed"}
	}
};

await graphClient.Security.SecureScoreControlProfiles["NonOwnerAccess"]
	.Request()
	.UpdateAsync(secureScoreControlProfile);

```