---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String use = "sig";

String kty = "RSA";

Long nbf = 1508969811L;

Long exp = 1508969811L;

graphClient.trustFramework().keySets("{id}")
	.generateKey(TrustFrameworkKeySetGenerateKeyParameterSet
		.newBuilder()
		.withUse(use)
		.withKty(kty)
		.withNbf(nbf)
		.withExp(exp)
		.build())
	.buildRequest()
	.post();

```