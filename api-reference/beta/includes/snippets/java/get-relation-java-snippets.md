---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RelationCollectionPage relations = graphClient.termStore().sets("{setId}").relations()
	.buildRequest()
	.get();

```