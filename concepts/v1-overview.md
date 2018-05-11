# Microsoft Graph REST API v1.0 reference

Welcome to Microsoft Graph REST API reference for the v1.0 endpoint. 

API sets on the v1.0 endpoint (`https://graph.microsoft.com/v1.0`) are in general availability (GA) status, and have gone through a rigorous review-and-feedback process with customers to meet practical, production needs. Updates to APIs on this endpoint are additive in nature and do not break existing app scenarios. 

## Common use cases

The power of Microsoft Graph lies in easy navigation of entities and relationships across different services exposed on a single Microsoft Graph REST endpoint. 

A number of these services are designed to enable rich scenarios around a [user](../api-reference/v1.0/resources/user.md) and around a [group](../api-reference/v1.0/resources/group.md). 

The following are a few common user-centric use cases in v1.0:

1. [Get the profile](../api-reference/v1.0/api/user_get.md) and [photo](../api-reference/v1.0/resources/profilephoto.md) of a user, Lisa.
2. [Get the profile information about Lisa's manager](../api-reference/v1.0/api/user_list_manager.md) and [IDs of her direct reports](../api-reference/v1.0/api/user_list_directreports.md), all stored in Azure Active Directory.
3. [Access Lisa's files on OneDrive for Business](../api-reference/v1.0/api/driveitem_list_children.md), find the [identity](../api-reference/v1.0/resources/identityset.md) of the last person who modified a [file](../api-reference/v1.0/resources/driveitem.md) there, and navigate to that person's profile.
4. [Access Lisa's calendar](../api-reference/v1.0/api/calendar_get.md) on Exchange Online and [determine the best time for Lisa to meet with her team](../api-reference/v1.0/api/user_findmeetingtimes.md) in the next two weeks.
5. [Subscribe to](../api-reference/v1.0/api/subscription_post_subscriptions.md) and [track changes](../api-reference/v1.0/api/event_delta.md) in Lisa's calendar, tell Lisa when she is spending more than 80% of her time in meetings.
6. Set automatic replies when Lisa is away from the office. <!-- Deleted ../api-reference/v1.0/api/mailboxsettings_update.md link as file doesn't exist in repo. -->
7. [Get the people who are most relevant to Lisa](../api-reference/v1.0/api/person_get.md), based on communication, collaboration, and business relationships.
8. Get the latest sales projection from a [chart](../api-reference/v1.0/resources/chart.md) in an Excel file in Lisa's OneDrive for Business.
9. [Find the tasks assigned to Lisa in Planner](../api-reference/v1.0/api/planneruser_list_tasks.md).

The following are some example use cases involving an Office 365 group in v1.0:

1. Run a report on Office 365 groups in an organization and identify the group with the most [communication among group members](../api-reference/v1.0/api/reportroot_getoffice365groupsactivitycounts.md).
2. [Find the plans of this Office 365 group](../api-reference/v1.0/api/plannergroup_list_plans.md), and the [assignment of tasks](../api-reference/v1.0/resources/plannerassignments.md) in that plan.
3. [Start a new conversation](../api-reference/v1.0/api/group_post_conversations.md) in the Office 365 group to determine if members want to [create another group](../api-reference/v1.0/api/group_post_groups.md) to share the workload.
4. [Get the default notebook](../api-reference/v1.0/api/notebook_get.md) for the group and [create a page](../api-reference/v1.0/api/section_post_pages.md) to note the outcome of the investigation.

## Other API versions
There are currently 2 versions of Microsoft Graph REST APIs - v1.0 and beta.
If you're interested in new or enhanced APIs that are still in preview status, see [Microsoft Graph beta endpoint reference](../api-reference/beta/beta-overview.md). Be aware that APIs in preview status are subject to change, and may break existing scenarios without notice. Don't take a production dependency on APIs in the beta endpoint.

## Connect with us
Are there additional APIs or features you'd like to see in Microsoft Graph? Post new feature requests on [UserVoice](https://officespdev.uservoice.com/forums/224641-general/filters/new?category_id=101632). 

Have feedback for existing Microsoft Graph APIs? Connect with us on [Github](https://github.com/microsoftgraph/microsoft-graph-docs/issues). 

For questions or help with your code using Microsoft Graph, join us on [Stackoverflow](https://stackoverflow.com/questions/tagged/microsoftgraph).



