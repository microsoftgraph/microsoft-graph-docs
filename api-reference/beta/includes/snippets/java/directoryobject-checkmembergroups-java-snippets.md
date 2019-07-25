---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> groupIdsList = new LinkedList<String>();
groupIdsList.add("fee2c45b-915a-4a64-b130-f4eb9e75525e");
groupIdsList.add("4fe90ae7-065a-478b-9400-e0a0e1cbd540");

graphClient.me()
	.checkMemberGroups(groupIdsList)
	.buildRequest()
	.post();

```