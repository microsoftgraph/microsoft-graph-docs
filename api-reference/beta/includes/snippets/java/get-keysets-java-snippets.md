---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ITrustFrameworkKeySetCollectionPage keySets = graphClient.trustFramework().keySets()
	.buildRequest()
	.get();

```