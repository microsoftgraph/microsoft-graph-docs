---
title: "Azure AD access reviews"
description: "Use Azure AD access reviews to configure one-time or recurring access reviews for attestation of user's access rights to Azure AD resources."
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Azure AD access reviews

Namespace: microsoft.graph


Use [Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-access-reviews-overview) to configure one-time or recurring access reviews for attestation of user's access rights to Azure AD resources.

Typical customer scenarios for access reviews of group memberships and application and Azure AD role access are:

- Customers can review and certify guest user access to applications, Azure AD roles, and memberships of groups. Reviewers can use the insights that are provided to efficiently decide whether guests should have continued access.

- Customers can review and certify employee access to applications, Azure AD roles, and group memberships with access reviews.

The access reviews feature, including the API, is available only with a valid purchase or trial license of Azure AD Premium P2 or EMS E5 subscription.


## Methods

The following table lists the methods that you can use to interact with access review-related resources.

| Method		   | Return type	|Description|
|:---------------|:--------|:----------|
|[List accessReviewScheduleDefinitions](../api/accessreviewscheduledefinition-list.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Get a list of the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) objects and their properties.|
|[Create accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-post.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Create a new [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[Get accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-get.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Read the properties and relationships of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[Update accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-update.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Update the properties of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[Delete accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-delete.md)|None|Deletes an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[accessReviewScheduleDefinition: filterByCurrentUser](../api/accessreviewscheduledefinition-filterbycurrentuser.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Returns all definitions where the calling user is the reviewer of any instances.|
|[List accessReviewInstances](../api/accessreviewinstance-list.md)|[accessReviewInstance](../resources/accessreviewinstance.md) collection|Get a list of the [accessReviewInstance](../resources/accessreviewinstance.md) objects and their properties.|
|[Get accessReviewInstance](../api/accessreviewinstance-get.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Read the properties and relationships of an [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[accessReviewInstance: stop](../api/accessreviewinstance-stop.md)|None|Manually stop an accessReviewInstance.|
|[accessReviewInstance: sendReminder](../api/accessreviewinstance-sendreminder.md)|None|Send a reminder to the reviewers of an accessReviewInstance.|
|[accessReviewInstance: resetDecisions](../api/accessreviewinstance-resetdecisions.md)|None|Resets all decision items on an instance to `notReviewed`|
|[accessReviewInstance: applyDecisions](../api/accessreviewinstance-applydecisions.md)|None|Manually apply decision on an accessReviewInstance.|
|[accessReviewInstance: acceptRecommendations](../api/accessreviewinstance-acceptrecommendations.md)|None| Allows the calling user to accept the decision recommendation for each NotReviewed accessReviewInstanceDecisionItem that they are the reviewer on for a specific accessReviewInstance.|
|[accessReviewInstance: batchRecordDecisions](../api/accessreviewinstance-batchrecorddecisions.md)|None|Review batches of principals or resources in one call.|
|[accessReviewInstance: filterByCurrentUser](../api/accessreviewinstance-filterbycurrentuser.md)|[accessReviewInstance](../resources/accessreviewinstance.md) collection|Returns all instance objects on a definition for which the calling user is the reviewer.|
|[List accessReviewInstanceDecisionItems](../api/accessreviewinstancedecisionitem-list.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Get a list of the [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects and their properties.|
|[Get accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-get.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md)|Read the properties and relationships of an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object.|
|[Update accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-update.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md)|Update the properties of an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object.|
|[accessReviewInstanceDecisionItem: filterByCurrentUser](../api/accessreviewinstancedecisionitem-filterbycurrentuser.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Returns the decision items for which the calling user is the reviewer of.|


## Role and application permission authorization checks

The following directory roles are required for a calling user to manage access reviews. 

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | AccessReview.Read.All or AccessReview.ReadWrite.All | Global Administrator, Global Reader, Security Administrator, Security Reader or User Administrator |
| Create, Update or Delete | AccessReview.ReadWrite.All | Global Administrator or User Administrator |

In addition, a user who is an assigned reviewer of an access review can manage their decisions, without needing to be in a directory role.

## See also

- [How an administrator can manage user access with Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-user-access-with-access-reviews)
- [How an administrator can manage guest access with Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-guest-access-with-access-reviews)
