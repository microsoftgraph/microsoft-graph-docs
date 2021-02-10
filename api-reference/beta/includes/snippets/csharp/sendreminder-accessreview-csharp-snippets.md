---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.IdentityGovernance.AccessReviews.Definitions["04e5c3b2-9db2-40d3-a204-128f4956ae8e"].Instances["70463350-742e-4909-bfa5-bc23447bd002"]
	.SendReminder()
	.Request()
	.PostAsync();

```