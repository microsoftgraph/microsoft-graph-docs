---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintTaskDefinition printTaskDefinition = new PrintTaskDefinition();
printTaskDefinition.displayName = "Test TaskDefinitionName";
AppIdentity createdBy = new AppIdentity();
createdBy.displayName = "Requesting App Display Name";
printTaskDefinition.createdBy = createdBy;

graphClient.print().taskDefinitions("fab143fd-ee61-4358-8558-2c7dee953982")
	.buildRequest()
	.patch(printTaskDefinition);

```