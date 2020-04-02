---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InferenceClassificationOverride inferenceClassificationOverride = new InferenceClassificationOverride();
inferenceClassificationOverride.classifyAs = InferenceClassificationType.FOCUSED;
EmailAddress senderEmailAddress = new EmailAddress();
senderEmailAddress.name = "Samantha Booth";
senderEmailAddress.address = "samanthab@adatum.onmicrosoft.com";
inferenceClassificationOverride.senderEmailAddress = senderEmailAddress;

graphClient.me().inferenceClassification().overrides()
	.buildRequest()
	.post(inferenceClassificationOverride);

```