---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Authorization", "Bearer <token>"));

SynchronizationTemplate synchronizationTemplate = new SynchronizationTemplate();
synchronizationTemplate.id = "Slack";
synchronizationTemplate.applicationId = UUID.fromString("{id}");
synchronizationTemplate.factoryTag = "CustomSCIM";

graphClient.applications("{id}").synchronization().templates("{templateId}")
	.buildRequest( requestOptions )
	.put(synchronizationTemplate);

```