---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String key = "key-value";

graphClient.trustFramework().keySets("{id}")
	.uploadCertificate(key)
	.buildRequest()
	.post();

```