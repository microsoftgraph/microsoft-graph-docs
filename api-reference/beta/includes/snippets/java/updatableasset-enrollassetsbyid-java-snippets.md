---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UpdateCategory updateCategory = UpdateCategory.FEATURE;

String memberEntityType = "#microsoft.graph.windowsUpdates.azureADDevice";

LinkedList<String> idsList = new LinkedList<String>();
idsList.add("String");
idsList.add("String");
idsList.add("String");

graphClient.admin().windows().updates().updatableAssets()
	.enrollAssetsById(UpdatableAssetEnrollAssetsByIdParameterSet
		.newBuilder()
		.withUpdateCategory(updateCategory)
		.withMemberEntityType(memberEntityType)
		.withIds(idsList)
		.build())
	.buildRequest()
	.post();

```