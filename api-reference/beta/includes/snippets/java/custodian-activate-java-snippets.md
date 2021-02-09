---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.compliance().ediscovery().cases("2192ca408ea2410eba3bec8ae873be6b").custodians("45454331323337443946343043464239")
	.activate()
	.buildRequest()
	.post();

```