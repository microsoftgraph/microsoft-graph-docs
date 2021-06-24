---
title: "Overview of access reviews API"
description: "The access reviews API allows you to programmatically review access to your Azure AD resources."
author: "FaithOmbongi"
localization_priority: Normal
ms.prod: "governance"
---

# Overview of the access reviews API

The [access reviews API](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true) in Microsoft Graph allows you to programmatically review access to Azure AD resources. This includes:
+ Creating, reading, updating, and deleting access reviews, access review settings, and schedules.
+ Investigating past access reviews and the decisions taken by reviewers, including the steps Azure AD took automatically.

## Scope of use

The access reviews APIs support both delegated and application contexts. In a user (delegated) context, an application calls the access reviews API on behalf of a user. Typical scenarios include:
+ An administrator using a script to create, read, or update an access review.
+ A resource owner using an app or a script to create an access review for a resource they own.
+ An administrator automatically collecting all decisions for one or more access reviews.
  
To authorize your app in a user (delegated) context, see [get access on behalf of a user](/graph/auth-v2-user).

In an application context, an application calls the access reviews API without a signed-in user present. A typical scenario is a scheduled background script regularly collecting decisions for all access reviews. To authorize your app in this context, see [get access without a user](/graph/auth-v2-service).

## Building blocks of an access review

Access reviews are structured logically and are comprised of these building blocks:
+ **Access reviews schedule definitions** -  The logical blueprint that contains the settings of an access review and its instances. The settings include the resources against which access is reviewed, and the reviewers who attest to access to these resources.
+ **Access review instance** - Represents a single review activity against which reviewers make decisions. An access review definition may have multiple instances as is the case in recurring reviews. One-off reviews have exactly one instance.
+ **Decision items recorded for a review** - Represents a decision a reviewer made on an instance, including the time stamp and justification for the decision. Each review instance has as many decisions as the number of users under review. If there are no decisions taken, that is, reviewers haven’t responded to the review, there will be no decision objects for the instance.

## Next steps

Try out the following tutorials to manage access reviews:

+ [Use access reviews API for groups to review access to your security groups](tutorial-accessreviews-securitygroup.md)
+ [Use access reviews API for groups to review access to all your Microsoft 365 groups with guest users](tutorial-accessreviews-M365group.md)

## See also

+ [Planning Azure Active Directory Access Reviews deployment](/azure/active-directory/governance/deploy-access-reviews)
+ [Create an access review of groups & applications](/azure/active-directory/governance/create-access-review)
+ [Get access on behalf of a user](/graph/auth-v2-user)
+ [Get access without a user](/graph/auth-v2-service)
