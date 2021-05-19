---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CatalogEntryCollectionPage entries = graphClient.admin().windows().updates().catalog().entries()
	.buildRequest()
	.get();

```