---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationContextClassReferenceCollectionPage authenticationContextClassReferences = graphClient.identity().conditionalAccess().authenticationContextClassReferences()
	.buildRequest()
	.get();

```