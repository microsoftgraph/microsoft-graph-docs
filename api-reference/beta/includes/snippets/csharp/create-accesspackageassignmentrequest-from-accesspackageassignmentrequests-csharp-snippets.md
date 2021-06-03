---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageAssignmentRequest = new AccessPackageAssignmentRequestObject
{
	RequestType = "UserAdd",
	AccessPackageAssignment = new AccessPackageAssignment
	{
		AccessPackageId = "a914b616-e04e-476b-aa37-91038f0b165b"
	},
	Justification = "Need access to New Hire access package"
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests
	.Request()
	.AddAsync(accessPackageAssignmentRequest);

```