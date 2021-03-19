---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/v1.0/groups/{groupId}"));

graphClient.print().shares("{printerShareId}").allowedGroups().references()
	.buildRequest()
	.post(group);

```