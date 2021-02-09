---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISignInCollectionPage signIns = graphClient.auditLogs().signIns()
	.buildRequest()
	.get();

```