---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ICertificateBasedAuthConfigurationCollectionWithReferencesPage certificateBasedAuthConfiguration = graphClient.organization("{id}").certificateBasedAuthConfiguration()
	.buildRequest()
	.get();

```