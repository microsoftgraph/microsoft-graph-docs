---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.compliance().ediscovery().cases("{ediscoveryCaseId}").custodians("{custodianId}").unifiedGroupSources("{unifiedGroupSourceId}")
	.buildRequest()
	.delete();

```