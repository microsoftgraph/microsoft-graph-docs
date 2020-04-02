---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.description = "description-value";
group.displayName = "displayName-value";
LinkedList<String> groupTypesList = new LinkedList<String>();
groupTypesList.add("groupTypes-value");
group.groupTypes = groupTypesList;
group.mail = "mail-value";
group.mailEnabled = true;
group.mailNickname = "mailNickname-value";

graphClient.groups("{id}")
	.buildRequest()
	.patch(group);

```