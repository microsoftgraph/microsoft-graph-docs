---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAgreementAcceptanceCollectionPage agreementAcceptances = graphClient.me().agreementAcceptances()
	.buildRequest()
	.get();

```