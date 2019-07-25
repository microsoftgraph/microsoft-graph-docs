---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IGovernanceResourceCollectionPage resources = graphClient.privilegedAccess("azureResources").resources()
	.buildRequest()
	.get();

```