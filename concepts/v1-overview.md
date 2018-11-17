# Microsoft Graph REST API v1.0 reference

Welcome to Microsoft Graph REST API reference for the v1.0 endpoint.

API sets on the v1.0 endpoint (`https://graph.microsoft.com/v1.0`) are in general availability (GA) status, and have gone through a rigorous review-and-feedback process with customers to meet practical, production needs. Updates to APIs on this endpoint are additive in nature and do not break existing app scenarios.

## Common use cases

The power of Microsoft Graph lies in easy navigation of entities and relationships across different services exposed on a single Microsoft Graph REST endpoint.

A number of these services are designed to enable rich scenarios around a [user](/graph/api/resources/user?view=graph-rest-1.0) and around a [group](/graph/api/resources/group?view=graph-rest-1.0).

### User-centric use cases in v1.0

1. [Get the profile](/graph/api/user_get?view=graph-rest-1.0) and [photo](/graph/api/resources/profilephoto?view=graph-rest-1.0) of a user, Lisa.
2. [Get the profile information about Lisa's manager](/graph/api/user_list_manager?view=graph-rest-1.0) and [IDs of her direct reports](/graph/api/user_list_directreports?view=graph-rest-1.0), all stored in Azure Active Directory.
3. [Access Lisa's files on OneDrive for Business](/graph/api/driveitem_list_children?view=graph-rest-1.0), find the [identity](/graph/api/resources/identityset?view=graph-rest-1.0) of the last person who modified a [file](/graph/api/resources/driveitem?view=graph-rest-1.0) there, and navigate to that person's profile.
4. [Access Lisa's calendar](/graph/api/calendar_get?view=graph-rest-1.0) on Exchange Online and [determine the best time for Lisa to meet with her team](/graph/api/user_findmeetingtimes?view=graph-rest-1.0) in the next two weeks.
5. [Subscribe to](/graph/api/subscription_post_subscriptions?view=graph-rest-1.0) and [track changes](/graph/api/event_delta?view=graph-rest-1.0) in Lisa's calendar, tell Lisa when she is spending more than 80% of her time in meetings.
6. [Set automatic replies](/graph/api/user_update_mailboxsettings?view=graph-rest-1.0#example) when Lisa is away from the office.
7. [Get the people who are most relevant to Lisa](/graph/api/user_list_people?view=graph-rest-1.0), based on communication, collaboration, and business relationships.
8. Get the latest sales projection from a [chart](/graph/api/resources/chart?view=graph-rest-1.0) in an Excel file in Lisa's OneDrive for Business.
9. [Find the tasks assigned to Lisa in Planner](/graph/api/planneruser_list_tasks?view=graph-rest-1.0).

### Office 365 group use cases in v1.0

1. Run a report on Office 365 groups in an organization and identify the group with the most [communication among group members](/graph/api/reportroot_getoffice365groupsactivitycounts?view=graph-rest-1.0).
2. [Find the plans of this Office 365 group](/graph/api/plannergroup_list_plans?view=graph-rest-1.0), and the [assignment of tasks](/graph/api/resources/plannerassignments?view=graph-rest-1.0) in that plan.
3. [Start a new conversation](/graph/api/group_post_conversations?view=graph-rest-1.0) in the Office 365 group to determine if members want to [create another group](/graph/api/group_post_groups?view=graph-rest-1.0) to share the workload.
4. [Get the default notebook](/graph/api/notebook_get?view=graph-rest-1.0) for the group and [create a page](/graph/api/section_post_pages?view=graph-rest-1.0) to note the outcome of the investigation.

## Other API versions

There are currently 2 versions of Microsoft Graph REST APIs - v1.0 and beta.
If you're interested in new or enhanced APIs that are still in preview status, see [Microsoft Graph beta endpoint reference](../api-reference/beta/beta-overview.md). Be aware that APIs in preview status are subject to change, and may break existing scenarios without notice. Don't take a production dependency on APIs in the beta endpoint.

Find more information about [versioning and support](versioning_and_support.md).

## Connect with us

Are there additional APIs or features you'd like to see in Microsoft Graph? Post new feature requests on [UserVoice](https://officespdev.uservoice.com/forums/224641-general/filters/new?category_id=101632).

Have feedback for existing Microsoft Graph APIs? Connect with us on [Github](https://github.com/microsoftgraph/microsoft-graph-docs/issues).

For questions or help with your code using Microsoft Graph, join us on [Stack Overflow](https://stackoverflow.com/questions/tagged/microsoftgraph).
