---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DataPolicyOperation dataPolicyOperation = graphClient.dataPolicyOperations("{id}")
	.buildRequest()
	.get();

```