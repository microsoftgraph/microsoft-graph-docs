---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstance accessReviewInstance = graphClient.identityGovernance().accessReviews().definitions("6af553ce-104d-4842-ab5f-67d7b556e9dd").instances("9ea56d3c-8746-4cdf-9ccc-c7fe1a267c24")
	.buildRequest()
	.get();

```