---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookCategory outlookCategory = new OutlookCategory();
outlookCategory.color = CategoryColor.PRESET15;

graphClient.me().outlook().masterCategories("bac262b7-485d-4739-b436-e31467d64fac")
	.buildRequest()
	.patch(outlookCategory);

```