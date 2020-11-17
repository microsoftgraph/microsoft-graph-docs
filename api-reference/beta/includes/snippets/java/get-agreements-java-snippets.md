---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAgreementCollectionPage agreements = graphClient.agreements()
	.buildRequest()
	.get();

```