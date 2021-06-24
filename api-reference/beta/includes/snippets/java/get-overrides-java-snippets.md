---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InferenceClassificationOverrideCollectionPage overrides = graphClient.me().inferenceClassification().overrides()
	.buildRequest()
	.get();

```