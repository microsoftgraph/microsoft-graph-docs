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
			AdditionalData = new Dictionary<string, object>()
			{
				{"@odata.type","microsoft.graph.alertFeedback"}
			}
		},
		Id = "String (identifier)",
		Status = new AlertStatus
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"@odata.type","microsoft.graph.alertStatus"}
			}
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