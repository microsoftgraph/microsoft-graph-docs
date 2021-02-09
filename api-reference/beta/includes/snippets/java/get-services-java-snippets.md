---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrintServiceCollectionPage services = graphClient.print().services()
	.buildRequest()
	.get();

```