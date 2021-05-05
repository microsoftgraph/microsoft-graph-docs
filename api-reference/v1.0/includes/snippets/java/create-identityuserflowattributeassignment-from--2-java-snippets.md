---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityUserFlowAttributeAssignment identityUserFlowAttributeAssignment = new IdentityUserFlowAttributeAssignment();
identityUserFlowAttributeAssignment.isOptional = false;
identityUserFlowAttributeAssignment.requiresVerification = false;
identityUserFlowAttributeAssignment.userInputType = IdentityUserFlowAttributeInputType.TEXT_BOX;
identityUserFlowAttributeAssignment.displayName = "Shoe size";
LinkedList<UserAttributeValuesItem> userAttributeValuesList = new LinkedList<UserAttributeValuesItem>();
identityUserFlowAttributeAssignment.userAttributeValues = userAttributeValuesList;
IdentityUserFlowAttribute userAttribute = new IdentityUserFlowAttribute();
userAttribute.id = "extension_guid_shoeSize";
identityUserFlowAttributeAssignment.userAttribute = userAttribute;

graphClient.identity().b2xUserFlows("B2X_1_Partner").userAttributeAssignments()
	.buildRequest()
	.post(identityUserFlowAttributeAssignment);

```