---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IProgramCollectionPage programs = graphClient.programs()
	.buildRequest()
	.get();

```