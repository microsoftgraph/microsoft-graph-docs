---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String metadata = "metadata-value";

String clientContext = "clientContext-value";

graphClient.app().calls("{id}")
	.updateMetadata(metadata,clientContext)
	.buildRequest()
	.post();

```