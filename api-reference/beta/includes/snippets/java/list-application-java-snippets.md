---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IApplicationCollectionPage applications = graphClient.applications()
	.buildRequest()
	.get();

```