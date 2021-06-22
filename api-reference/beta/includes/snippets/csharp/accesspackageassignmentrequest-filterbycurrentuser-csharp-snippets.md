---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var filterByCurrentUser = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests
	.FilterByCurrentUser(AccessPackageAssignmentRequestFilterByCurrentUserOptions.Target)
	.Request()
	.GetAsync();

```