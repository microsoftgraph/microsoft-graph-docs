---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SynchronizationTemplate synchronizationTemplate = new SynchronizationTemplate();
synchronizationTemplate.id = "SCIM-Test1";
synchronizationTemplate.applicationId = "{id}";
synchronizationTemplate.factoryTag = "CustomSCIM";

graphClient.applications("{id}").synchronization().templates()
	.buildRequest()
	.post(synchronizationTemplate);

```