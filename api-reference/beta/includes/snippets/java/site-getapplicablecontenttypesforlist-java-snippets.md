---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SiteGetApplicableContentTypesForListCollectionPage getApplicableContentTypesForList = graphClient.sites("{siteId}")
	.getApplicableContentTypesForList(SiteGetApplicableContentTypesForListParameterSet
		.newBuilder()
		.withListId("listId")
		.build())
	.buildRequest()
	.get();

```