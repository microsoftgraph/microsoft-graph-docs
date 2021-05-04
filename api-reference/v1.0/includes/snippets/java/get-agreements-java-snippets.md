---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AgreementCollectionPage agreements = graphClient.identityGovernance().termsOfUse().agreements()
	.buildRequest()
	.get();

```