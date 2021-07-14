---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().me().rubrics("ceb3863e-6912-4ea9-ac41-3c2bb7b6672d")
	.buildRequest()
	.delete();

```