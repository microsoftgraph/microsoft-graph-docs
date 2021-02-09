---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDriveSearchCollectionPage search = graphClient.me().drive()
	.search("Contoso Project")
	.buildRequest()
	.get();

```