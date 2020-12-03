---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.additionalDataManager().put("members@odata.bind", new JsonPrimitive("[  \"https://graph.microsoft.com/v1.0/directoryObjects/{id}\",  \"https://graph.microsoft.com/v1.0/directoryObjects/{id}\",  \"https://graph.microsoft.com/v1.0/directoryObjects/{id}\"]"));

graphClient.groups("{group-id}")
	.buildRequest()
	.patch(group);

```