---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SitePage sitePage = graphClient.sites("{site-id}").pages("{page-id}")
	.buildRequest()
	.get();

```