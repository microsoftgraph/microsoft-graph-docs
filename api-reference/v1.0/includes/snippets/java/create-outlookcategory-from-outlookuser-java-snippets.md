---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookCategory outlookCategory = new OutlookCategory();
outlookCategory.displayName = "Project expenses";
outlookCategory.color = CategoryColor.PRESET9;

graphClient.me().outlook().masterCategories()
	.buildRequest()
	.post(outlookCategory);

```