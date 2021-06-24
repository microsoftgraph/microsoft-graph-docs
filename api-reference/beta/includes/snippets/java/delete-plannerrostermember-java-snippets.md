---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.planner().rosters("523a9d5a-f9d5-45c1-929f-b8525393515c").members("5ba84f7a-aa11-4a51-a298-9f2c7ec6bb38")
	.buildRequest()
	.delete();

```