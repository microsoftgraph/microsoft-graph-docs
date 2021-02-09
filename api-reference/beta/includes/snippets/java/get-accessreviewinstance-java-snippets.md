---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstance accessReviewInstance = graphClient.identityGovernance().accessReviews().definitions("60860cdd-fb4d-4054-91ba-444404f3baa6").instances("12490cdb-6a18-4c08-ba2c-44442f0a0138")
	.buildRequest()
	.get();

```