---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TodoTask todoTask = new TodoTask();
todoTask.title = "A new task";
LinkedList<LinkedResource> linkedResourcesList = new LinkedList<LinkedResource>();
LinkedResource linkedResources = new LinkedResource();
linkedResources.webUrl = "http://microsoft.com";
linkedResources.applicationName = "Microsoft";
linkedResources.displayName = "Microsoft";
linkedResourcesList.add(linkedResources);
todoTask.linkedResources = linkedResourcesList;

graphClient.me().todo().lists("AQMkADAwATM0MDAAMS0yMDkyLWVjMzYtM").tasks()
	.buildRequest()
	.post(todoTask);

```