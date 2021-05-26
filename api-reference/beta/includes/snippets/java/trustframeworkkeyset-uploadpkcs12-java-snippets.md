---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String key = "Base64-encoded-pfx-content";

String password = "password-value";

graphClient.trustFramework().keySets("{id}")
	.uploadPkcs12(TrustFrameworkKeySetUploadPkcs12ParameterSet
		.newBuilder()
		.withKey(key)
		.withPassword(password)
		.build())
	.buildRequest()
	.post();

```