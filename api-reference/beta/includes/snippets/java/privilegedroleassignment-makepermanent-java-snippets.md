---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String reason = "reason-value";

String ticketNumber = "ticketNumber-value";

String ticketSystem = "ticketSystem-value";

graphClient.privilegedRoleAssignments("{id}")
	.makePermanent(PrivilegedRoleAssignmentMakePermanentParameterSet
		.newBuilder()
		.withReason(reason)
		.withTicketNumber(ticketNumber)
		.withTicketSystem(ticketSystem)
		.build())
	.buildRequest()
	.post();

```