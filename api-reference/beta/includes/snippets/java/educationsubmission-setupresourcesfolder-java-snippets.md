---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().classes("11012").assignments("19002").submissions("20302")
	.setUpResourcesFolder()
	.buildRequest()
	.post();

```