---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityProviderBase identityProviderBase = graphClient.identity().identityProviders("OIDC-V1-test-icm-4470de58-86c2-4a3f-a22c-63c9366cd000")
	.buildRequest()
	.get();

```