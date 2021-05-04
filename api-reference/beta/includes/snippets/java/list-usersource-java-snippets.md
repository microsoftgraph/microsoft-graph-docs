---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserSourceCollectionPage userSources = graphClient.compliance().ediscovery().cases("c816dd6f-5af8-40c5-a760-331361e05c60").legalHolds("277107ff-fee3-41a0-a665-a9d7f6c4824f").userSources()
	.buildRequest()
	.get();

```