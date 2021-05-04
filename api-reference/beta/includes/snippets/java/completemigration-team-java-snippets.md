---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.teams("57fb72d0-d811-46f4-8947-305e6072eaa5")
	.completeMigration()
	.buildRequest()
	.post();

```