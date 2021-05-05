---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReview accessReview = new AccessReview();
accessReview.displayName = "TestReview";
accessReview.startDateTime = OffsetDateTimeSerializer.deserialize("2017-02-10T00:35:53.214Z");
accessReview.endDateTime = OffsetDateTimeSerializer.deserialize("2017-03-12T00:35:53.214Z");
Identity reviewedEntity = new Identity();
reviewedEntity.id = "99025615-a0b1-47ec-9117-35377b10998b";
accessReview.reviewedEntity = reviewedEntity;
accessReview.reviewerType = "delegated";
accessReview.businessFlowTemplateId = "6e4f3d20-c5c3-407f-9695-8460952bcc68";
accessReview.description = "Sample description";
LinkedList<AccessReviewReviewer> reviewersList = new LinkedList<AccessReviewReviewer>();
AccessReviewReviewer reviewers = new AccessReviewReviewer();
reviewers.id = "f260246a-09b1-4fd5-8d18-daed736071ec";
reviewersList.add(reviewers);
AccessReviewReviewer reviewers1 = new AccessReviewReviewer();
reviewers1.id = "5a4e184c-4ee5-4883-96e9-b371f8da88e3";
reviewersList.add(reviewers1);
AccessReviewReviewerCollectionResponse accessReviewReviewerCollectionResponse = new AccessReviewReviewerCollectionResponse();
accessReviewReviewerCollectionResponse.value = reviewersList;
AccessReviewReviewerCollectionPage accessReviewReviewerCollectionPage = new AccessReviewReviewerCollectionPage(accessReviewReviewerCollectionResponse, null);
accessReview.reviewers = accessReviewReviewerCollectionPage;
AccessReviewSettings settings = new AccessReviewSettings();
settings.mailNotificationsEnabled = true;
settings.remindersEnabled = true;
settings.justificationRequiredOnApproval = true;
settings.autoReviewEnabled = false;
settings.activityDurationInDays = 30;
settings.autoApplyReviewResultsEnabled = false;
settings.accessRecommendationsEnabled = false;
AccessReviewRecurrenceSettings recurrenceSettings = new AccessReviewRecurrenceSettings();
recurrenceSettings.recurrenceType = "onetime";
recurrenceSettings.recurrenceEndType = "endBy";
recurrenceSettings.durationInDays = 0;
recurrenceSettings.recurrenceCount = 0;
settings.recurrenceSettings = recurrenceSettings;
AutoReviewSettings autoReviewSettings = new AutoReviewSettings();
autoReviewSettings.notReviewedResult = "Deny";
settings.autoReviewSettings = autoReviewSettings;
accessReview.settings = settings;

graphClient.accessReviews()
	.buildRequest()
	.post(accessReview);

```