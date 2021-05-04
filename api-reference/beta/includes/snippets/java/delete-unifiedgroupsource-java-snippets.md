---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.compliance().ediscovery().cases("{caseId}").custodians("{custodianId}").unifiedGroupSources("{unifiedGroupSourceId}")
	.buildRequest()
	.delete();

```