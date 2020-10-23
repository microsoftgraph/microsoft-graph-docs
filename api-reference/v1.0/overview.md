---
title: "Microsoft Graph REST API v1.0 reference"
description: "Welcome to Microsoft Graph REST API reference for the v1.0 endpoint."
localization_priority: Priority
author: "angelgolfer-ms"
ms.prod: "non-product-specific"
doc_type: conceptualPageType
---

# Microsoft Graph REST API v1.0 reference

Welcome to Microsoft Graph REST API reference for the v1.0 endpoint.

API sets on the v1.0 endpoint (`https://graph.microsoft.com/v1.0`) are in general availability (GA) status, and have gone through a rigorous review-and-feedback process with customers to meet practical, production needs. Updates to APIs on this endpoint are additive in nature and do not break existing app scenarios.

## Common use cases

The power of Microsoft Graph lies in easy navigation of entities and relationships across different services exposed on a single Microsoft Graph REST endpoint.

A number of these services are designed to enable rich scenarios around a [user](./resources/user.md) and around a [group](./resources/group.md).

### User-centric use cases in v1.0

1. [Get the profile](./api/user-get.md) and [photo](./resources/profilephoto.md) of a user, Lisa.
2. [Get the profile information about Lisa's manager](./api/user-list-manager.md) and [IDs of her direct reports](./api/user-list-directreports.md), all stored in Azure Active Directory.
3. [Access Lisa's files on OneDrive for Business](./api/driveitem-list-children.md), find the [identity](./resources/identityset.md) of the last person who modified a [file](./resources/driveitem.md) there, and navigate to that person's profile.
4. [Access Lisa's calendar](./api/calendar-get.md) on Exchange Online and [determine the best time for Lisa to meet with her team](./api/user-findmeetingtimes.md) in the next two weeks.
5. [Subscribe to](./api/subscription-post-subscriptions.md) and [track changes](./api/event-delta.md) in Lisa's calendar, tell Lisa when she is spending more than 80% of her time in meetings.
6. [Set automatic replies](./api/user-update-mailboxsettings.md#example-1) when Lisa is away from the office.
7. [Get the people who are most relevant to Lisa](./api/user-list-people.md), based on communication, collaboration, and business relationships.
8. Get the latest sales projection from a [chart](./resources/chart.md) in an Excel file in Lisa's OneDrive for Business.
9. [Find the tasks assigned to Lisa in Planner](./api/planneruser-list-tasks.md).

### Microsoft 365 group use cases in v1.0

1. Run a report on Microsoft 365 groups in an organization and identify the group with the most [communication among group members](./api/reportroot-getoffice365groupsactivitycounts.md).
2. [Find the plans of this Microsoft 365 group](./api/plannergroup-list-plans.md), and the [assignment of tasks](./resources/plannerassignments.md) in that plan.
3. [Start a new conversation](./api/group-post-conversations.md) in the Microsoft 365 group to determine if members want to [create another group](./api/group-post-groups.md) to share the workload.
4. [Get the default notebook](./api/notebook-get.md) for the group and [create a page](./api/section-post-pages.md) to note the outcome of the investigation.

## Other API versions

There are currently 2 versions of Microsoft Graph REST APIs - v1.0 and beta.
If you're interested in new or enhanced APIs that are still in preview status, see [Microsoft Graph beta endpoint reference](/graph/api/overview?toc=./ref/toc.json&view=graph-rest-beta). Be aware that APIs in preview status are subject to change, and may break existing scenarios without notice. Don't take a production dependency on APIs in the beta endpoint.

Find more information about [versioning and support](/graph/versioning-and-support).

## Call the v1.0 endpoint

Microsoft Graph API requests to the v1.0 endpoint use the following pattern:

```http
https://graph.microsoft.com/v1.0/{resource}?[query_parameters]
```

For details, see [Use the Microsoft Graph API](/graph/use-the-api).

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) in the v1.0 endpoint.

## Connect with us

Are there additional APIs or features you'd like to see in Microsoft Graph? Post new feature requests on [UserVoice](https://officespdev.uservoice.com/forums/224641-general/filters/new?category_id=101632).

Have feedback for existing Microsoft Graph APIs? Connect with us on [Github](https://github.com/microsoftgraph/microsoft-graph-docs/issues).
