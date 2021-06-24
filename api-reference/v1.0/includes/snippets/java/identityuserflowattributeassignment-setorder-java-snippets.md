---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AssignmentOrder newAssignmentOrder = new AssignmentOrder();
LinkedList<String> orderList = new LinkedList<String>();
orderList.add("City");
orderList.add("extension_GUID_ShoeSize");
newAssignmentOrder.order = orderList;

graphClient.identity().b2xUserFlows("{id}").userAttributeAssignments()
	.setOrder(IdentityUserFlowAttributeAssignmentSetOrderParameterSet
		.newBuilder()
		.withNewAssignmentOrder(newAssignmentOrder)
		.build())
	.buildRequest()
	.post();

```