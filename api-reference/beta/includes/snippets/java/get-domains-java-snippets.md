---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDomainCollectionPage domains = graphClient.domains()
	.buildRequest()
	.get();

```