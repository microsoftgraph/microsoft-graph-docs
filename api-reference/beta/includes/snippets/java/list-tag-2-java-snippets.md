---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TagCollectionWithReferencesPage childTags = graphClient.compliance().ediscovery().cases("47746044-fd0b-4a30-acfc-5272b691ba5b").tags("e54b3f535b434a9a8743b84e34c00504").childTags()
	.buildRequest()
	.get();

```