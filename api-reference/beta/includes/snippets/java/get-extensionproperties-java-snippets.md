---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IExtensionPropertyCollectionPage extensionProperties = graphClient.applications("{id}").extensionProperties()
	.buildRequest()
	.get();

```