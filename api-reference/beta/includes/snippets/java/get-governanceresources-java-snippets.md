---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GovernanceResourceCollectionPage resources = graphClient.privilegedAccess("azureResources").resources()
	.buildRequest()
	.get();

```