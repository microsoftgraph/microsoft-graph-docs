---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String key = "key-value";

graphClient.trustFramework().keySets("{id}")
	.uploadCertificate(TrustFrameworkKeySetUploadCertificateParameterSet
		.newBuilder()
		.withKey(key)
		.build())
	.buildRequest()
	.post();

```