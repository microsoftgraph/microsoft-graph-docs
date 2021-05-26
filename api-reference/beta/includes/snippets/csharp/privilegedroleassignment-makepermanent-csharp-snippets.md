---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reason = "reason-value";

var ticketNumber = "ticketNumber-value";

var ticketSystem = "ticketSystem-value";

await graphClient.PrivilegedRoleAssignments["{privilegedRoleAssignment-id}"]
	.MakePermanent(reason,ticketNumber,ticketSystem)
	.Request()
	.PostAsync();

```