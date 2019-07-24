---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Authorization", "Bearer <token>"));

SynchronizationJobRestartCriteria criteria = new SynchronizationJobRestartCriteria();
criteria.resetScope = SynchronizationJobRestartScope.WATERMARK;

graphClient.servicePrincipals("{id}").synchronization().jobs("{jobId}")
	.restart(criteria)
	.buildRequest( requestOptions )
	.post();

```