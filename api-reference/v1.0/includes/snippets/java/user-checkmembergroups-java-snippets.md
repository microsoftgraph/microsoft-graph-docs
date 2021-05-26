---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> groupIdsList = new LinkedList<String>();
groupIdsList.add("groupIds-value");

graphClient.me()
	.checkMemberGroups(DirectoryObjectCheckMemberGroupsParameterSet
		.newBuilder()
		.withGroupIds(groupIdsList)
		.build())
	.buildRequest()
	.post();

```