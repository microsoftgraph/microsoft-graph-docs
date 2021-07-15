---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

int int32 = graphClient.contacts("45b7d2e7-b882-4a80-ba97-10b7a63b8fa4").transitiveReports().count()
	.buildRequest()
	.get();

```