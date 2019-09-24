---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var alert = new Alert
{
	AssignedTo = "String",
	ClosedDateTime = DateTimeOffset.Parse("String (timestamp)"),
	Comments = new List<String>()
	{
		"String"
	},
	Feedback = AlertFeedback.Unknown,
	Status = AlertStatus.Unknown,
	Tags = new List<String>()
	{
		"String"
	},
	VendorInformation = new SecurityVendorInformation
	{
		Provider = "String",
		Vendor = "String"
	}
};

await graphClient.Security.Alerts["{alert_id}"]
	.Request()
	.Header("Prefer","return=representation")
	.UpdateAsync(alert);

```