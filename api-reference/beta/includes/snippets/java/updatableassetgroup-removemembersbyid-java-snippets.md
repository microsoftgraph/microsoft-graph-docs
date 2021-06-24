---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> idsList = new LinkedList<String>();
idsList.add("String");
idsList.add("String");
idsList.add("String");

String memberEntityType = "#microsoft.graph.windowsUpdates.azureADDevice";

graphClient.admin().windows().updates().updatableAssets("{updatableAssetGroupId}")
	.removeMembersById(UpdatableAssetRemoveMembersByIdParameterSet
		.newBuilder()
		.withIds(idsList)
		.withMemberEntityType(memberEntityType)
		.build())
	.buildRequest()
	.post();

```