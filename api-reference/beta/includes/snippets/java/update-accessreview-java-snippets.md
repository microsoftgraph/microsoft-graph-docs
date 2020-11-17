---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReview accessReview = new AccessReview();
accessReview.displayName = "TestReview new name";

graphClient.accessReviews("006111db-0810-4494-a6df-904d368bd81b")
	.buildRequest()
	.patch(accessReview);

```