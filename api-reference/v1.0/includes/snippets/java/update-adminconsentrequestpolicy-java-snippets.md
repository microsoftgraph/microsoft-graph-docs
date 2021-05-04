---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdminConsentRequestPolicy adminConsentRequestPolicy = new AdminConsentRequestPolicy();
adminConsentRequestPolicy.isEnabled = true;
adminConsentRequestPolicy.notifyReviewers = true;
adminConsentRequestPolicy.remindersEnabled = true;
adminConsentRequestPolicy.requestDurationInDays = 5;
LinkedList<AccessReviewReviewerScope> reviewersList = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope reviewers = new AccessReviewReviewerScope();
reviewers.query = "/users/b6879be8-fb87-4482-a72e-18445d2b5c54";
reviewers.queryType = "MicrosoftGraph";
reviewersList.add(reviewers);
AccessReviewReviewerScope reviewers1 = new AccessReviewReviewerScope();
reviewers1.query = "/users/b3427cc5-bf69-4dcd-95f7-ed1eb432f5e9";
reviewers1.queryType = "MicrosoftGraph";
reviewersList.add(reviewers1);
adminConsentRequestPolicy.reviewers = reviewersList;

graphClient.policies().adminConsentRequestPolicy()
	.buildRequest()
	.put(adminConsentRequestPolicy);

```