---
title: "Azure AD access reviews - group memberships"
description: "You can use Azure AD access reviews to configure one-time or recurring access reviews for attestation of user's access rights. This documentation serves the 2nd version of the APIs."
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "microsoft-identity-platform"
doc_type: conceptualPageType
---

# Azure AD access reviews (Group memberships)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!NOTE]
>This documentation applies to access reviews of Microsoft 365 groups. For access reviews for all other resource types, see [Access reviews (all resources)](accessreviews-root.md).
>
>Currently, this API only supports access reviews of group memberships.

You can use [Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-access-reviews-overview) to configure one-time or recurring access reviews for attestation of user's access rights.

Typical customer scenarios for access reviews of group memberships and application access are:

- Customers can review and certify guest user access by using access reviews of their access to applications and memberships of groups. Reviewers can use the insights that are provided to efficiently decide whether guests should have continued access.

- Customers can review and certify employee access to applications and group memberships with access reviews.

- Customers can collect access review controls into programs that are relevant for your organization to track reviews for compliance or risk-sensitive applications.

There is also a related capability for customers to review and certify the role assignments of administrative users who are assigned to Azure AD roles such as Global Administrator or Azure subscription roles.  This capability is included in [Azure AD Privileged Identity Management](privilegedidentitymanagement-root.md).

Note that the access reviews feature, including the API, is included in Azure AD Premium P2.  The tenant where an access review is being created must have a valid purchased or trial Azure AD Premium P2 or EMS E5 subscription.


## Methods

The following table lists the methods that you can use to interact with access review-related resources.

| Method		   | Return type	|Description|
|:---------------|:--------|:----------|
|[List accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-list.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) collection | Lists every `accessReviewScheduleDefinition`. Does not include associated `accessReviewInstance` instances in listings. |
|[Get accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-get.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | Get an `accessReviewScheduleDefinition` with a specified id. |
|[Create accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-create.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | Create a new `accessReviewScheduleDefinition`. |
|[Delete accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-delete.md) | None. | Delete an `accessReviewScheduleDefinition` with a specified ID. |
|[Update accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-update.md) | None. | Update properties of an `accessReviewScheduleDefinition` with a specified ID. |
|[List accessReviewInstance](../api/accessreviewinstance-list.md) | [accessReviewInstance](accessreviewinstance.md) collection | Lists every `accessReviewInstance` for a specific `accessReviewScheduleDefinition`. Does not include associated `accessReviewInstanceDecisionItem`s in listings. |
|[Get accessReviewInstance](../api/accessreviewinstance-get.md) | [accessReviewInstance](accessreviewinstance.md) | Returns `accessReviewInstance` for an `accessReviewScheduleDefinition`. Does not include associated `accessReviewInstanceDecisionItem`s in object. |
|[List accessReviewInstances pending approval](../api/accessreviewinstance-pendingaccessreviewinstances.md) | [accessReviewInstance](accessreviewinstance.md) collection. | Get all `accessReviewInstance` assigned to the calling user. |
|[Send accessReviewInstance reminder](../api/accessreviewinstance-sendreminder.md) | None. | Send a reminder to the reviewers of an `accessReviewInstance`. |
|[Stop accessReviewInstance](../api/accessreviewinstance-stop.md) | None. | Manually stop an `accessReviewInstance`. |
|[Accept recommendations](../api/accessreviewinstance-acceptrecommendations.md) | None. | Allows the calling user to accept the decision recommendation for each NotReviewed `accessReviewInstanceDecisionItem` that they are the reviewer on for a specific `accessReviewInstance`. |
|[Apply decisions](../api/accessreviewinstance-applydecisions.md) | None. | Manually apply decision on an `accessReviewInstance`. |
|[List accessReviewInstanceDecisionItems](../api/accessreviewinstancedecisionitem-list.md) | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection | Lists every `accessReviewInstanceDecisionItem` for a specific `accessReviewInstance`. |
|[List accessReviewInstanceDecisionItems pending approval](../api/accessreviewinstancedecisionitem-listpendingapproval.md) | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection. | Get all `accessReviewInstanceDecisionItems` assigned to the calling user, for a specific `accessReviewInstance`. |
|[Update accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-update.md) | None. | For any `accessReviewInstanceDecisionItems` that the calling user is assigned a reviewer on, calling user can record a decision by patching the decision object. |

## Role and application permission authorization checks

The following directory roles are required for a calling user to manage access reviews. Note that only access reviews on groups are supported currently through Microsoft Graph APIs.

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | AccessReview.Read.All or AccessReview.ReadWrite.All | Global Administrator, Global Reader, Security Administrator, Security Reader or User Administrator |
| Create, Update or Delete | AccessReview.ReadWrite.All | Global Administrator or User Administrator |

In addition, a user who is an assigned reviewer of an access review can manage their decisions, without needing to be in a directory role.

## See also

- [How an administrator can manage user access with Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-user-access-with-access-reviews)
- [How an administrator can manage guest access with Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-guest-access-with-access-reviews)


<!--
{
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


