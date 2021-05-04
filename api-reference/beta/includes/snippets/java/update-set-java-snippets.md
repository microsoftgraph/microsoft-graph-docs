---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Set set = new Set();
set.description = "mySet";

graphClient.termStore().sets("{setId}")
	.buildRequest()
	.patch(set);

```