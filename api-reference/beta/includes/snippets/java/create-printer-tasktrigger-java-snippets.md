---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintTaskTrigger printTaskTrigger = new PrintTaskTrigger();
printTaskTrigger.event = PrintEvent.JOB_STARTED;
printTaskTrigger.additionalDataManager().put("definition@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/print/taskDefinitions/3203656e-6069-4e10-8147-d25290b00a3c"));

graphClient.print().printers("ae63f617-4856-4b45-8ea9-69dfbeea230e").taskTriggers()
	.buildRequest()
	.post(printTaskTrigger);

```