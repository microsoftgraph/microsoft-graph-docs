---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserSource dataSource = new UserSource();
dataSource.email = "badguy@contoso.com";

graphClient.compliance().ediscovery().cases("{caseId}").sourceCollections("{sourceCollectionId}").additionalSources()
	.buildRequest()
	.post(dataSource);

```