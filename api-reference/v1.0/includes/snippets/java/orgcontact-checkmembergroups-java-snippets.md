---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> groupIdsList = new LinkedList<String>();
groupIdsList.add("groupId-value1");
groupIdsList.add("groupId-value2");

graphClient.contacts("{id}")
	.checkMemberGroups(DirectoryObjectCheckMemberGroupsParameterSet
		.newBuilder()
		.withGroupIds(groupIdsList)
		.build())
	.buildRequest()
	.post();

```