---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var value = new List<Alert>()
{
	new Alert
	{
		AssignedTo = "String",
		ClosedDateTime = DateTimeOffset.Parse("String (timestamp)"),
		Comments = new List<String>()
		{
			"String"
		},
		Feedback = new AlertFeedback
		{
		},
		Id = "String (identifier)",
		Status = new AlertStatus
		{
		},
		Tags = new List<String>()
		{
			"String"
		},
		VendorInformation = new SecurityVendorInformation
		{
			Provider = "String",
			Vendor = "String"
		}
	}
};

await graphClient.Security.Alerts
	.UpdateAlerts(value)
	.Request()
	.PostAsync();

```