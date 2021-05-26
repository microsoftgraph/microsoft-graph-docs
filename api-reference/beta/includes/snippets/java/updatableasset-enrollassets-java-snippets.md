---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UpdateCategory updateCategory = UpdateCategory.FEATURE;

LinkedList<UpdatableAsset> assetsList = new LinkedList<UpdatableAsset>();
AzureADDevice assets = new AzureADDevice();
assets.id = "String (identifier)";

assetsList.add(assets);
UpdatableAssetCollectionResponse updatableAssetCollectionResponse = new UpdatableAssetCollectionResponse();
updatableAssetCollectionResponse.value = assetsList;
UpdatableAssetCollectionPage updatableAssetCollectionPage = new UpdatableAssetCollectionPage(updatableAssetCollectionResponse, null);

graphClient.admin().windows().updates().updatableAssets()
	.enrollAssets(UpdatableAssetEnrollAssetsParameterSet
		.newBuilder()
		.withUpdateCategory(updateCategory)
		.withAssets(assetsList)
		.build())
	.buildRequest()
	.post();

```