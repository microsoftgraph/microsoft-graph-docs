---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BitlockerRecoveryKey bitlockerRecoveryKey = graphClient.informationProtection().bitlocker().recoveryKeys("b465e4e8-e4e8-b465-e8e4-65b4e8e465b4")
	.buildRequest()
	.select("key")
	.get();

```