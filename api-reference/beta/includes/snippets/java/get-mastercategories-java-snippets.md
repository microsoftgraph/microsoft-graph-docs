---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookCategoryCollectionPage masterCategories = graphClient.me().outlook().masterCategories()
	.buildRequest()
	.get();

```