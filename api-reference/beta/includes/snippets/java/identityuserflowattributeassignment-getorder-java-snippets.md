---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AssignmentOrder assignmentOrder = graphClient.identity().b2cUserFlows("{id}").userAttributeAssignments()
	.getOrder()
	.buildRequest()
	.get();

```