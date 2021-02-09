---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String use = "use-value";

String k = "application-secret-to-be-uploaded";

Long nbf = 1508969811L;

Long exp = 1508973711L;

graphClient.trustFramework().keySets("{id}")
	.uploadSecret(use,k,nbf,exp)
	.buildRequest()
	.post();

```