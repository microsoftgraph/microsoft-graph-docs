---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOutlookCategoryCollectionPage masterCategories = graphClient.me().outlook().masterCategories()
	.buildRequest()
	.get();

```