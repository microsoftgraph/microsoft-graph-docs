---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAccessReviewInstanceDecisionItemCollectionPage decisions = graphClient.identityGovernance().accessReviews().definitions("60860cdd-fb4d-4054-91ba-444404f3baa6").instances("14444cdb-6a18-4c08-ba2c-48c02f0a0138").decisions()
	.buildRequest()
	.skip(0)
	.top(100)
	.get();

```