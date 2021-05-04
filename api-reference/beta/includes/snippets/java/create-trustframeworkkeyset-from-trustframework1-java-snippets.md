---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TrustFrameworkKeySet trustFrameworkKeySet = new TrustFrameworkKeySet();
trustFrameworkKeySet.id = "keyset1";

graphClient.trustFramework().keySets()
	.buildRequest()
	.post(trustFrameworkKeySet);

```