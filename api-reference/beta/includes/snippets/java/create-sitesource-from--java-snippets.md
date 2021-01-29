---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SiteSource siteSource = new SiteSource();
siteSource.additionalDataManager().put("site@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/sites/{siteId}"));

graphClient.compliance().ediscovery().cases("4c8f8f70-7785-4bd4-b296-c98376a2c5e1").custodians("2192ca408ea2410eba3bec8ae873be6b").siteSources()
	.buildRequest()
	.post(siteSource);

```