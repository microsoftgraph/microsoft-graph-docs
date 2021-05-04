---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AgreementAcceptanceCollectionWithReferencesPage agreementAcceptances = graphClient.me().agreementAcceptances()
	.buildRequest()
	.get();

```