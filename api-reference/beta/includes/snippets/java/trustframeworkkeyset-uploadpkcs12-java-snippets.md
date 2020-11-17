---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String key = "Base64-encoded-pfx-content";

String password = "password-value";

graphClient.trustFramework().keySets("{id}")
	.uploadPkcs12(key,password)
	.buildRequest()
	.post();

```