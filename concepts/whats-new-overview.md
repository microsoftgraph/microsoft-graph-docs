---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

See highlights of what's new in Microsoft Graph, and how you can [share your ideas](#want-to-stay-in-the-loop). For a complete list of API updates, see the [December](changelog.md#december-2019) and [November](changelog.md#november-2019) sections of the API changelog. 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## February 2020: New and generally available

### Calendar
Walk through an example of [creating an event in a shared or delegated calendar](outlook-create-event-in-shared-delegated-calendar.md), and the actions and properties available to the delegate, invitees, and calendar owner during this process.

### Security
To improve security when subscribing to [change notifications of user data](webhooks.md), [enforce Transport Layer Security (TLS) 1.2](https://docs.microsoft.com/configmgr/core/plan-design/security/enable-tls-1-2) or higher on clients and site servers used in the notification process. The new requirement is rolled out in stages starting February 15 2020. By May 15, 2020, all notification endpoints must meet the new TLS requirement. [Find out the stages of the rollout](https://developer.microsoft.com/graph/blogs/microsoft-graph-subscriptions-deprecating-tls-1-0-and-1-1/) and if necessary, use the new **latestSupportedTlsVersion** property as a temporary workaround to avoid subscription failures, before completing the TLS upgrade.

## February 2020: New in preview

### Calendar
See [tasks supported by preview APIs that manage calendar sharing and delegation](outlook-share-or-delegate-calendar.md).


## January 2020: New and generally available

### Security
As part of customer alert management, use the [update alert](/graph/api/alert-update?view=graph-rest-1.0) method and update the **comments** field as either `Closed in IPC` or `Closed in MCAS`.

### Teamwork
Use the **primaryChannel** navigation property of a [team](/graph/api/resources/team?view=graph-rest-1.0) to access its default channel, **General**.

### Users
Use the **identities** property to access one or more identities that a [user](/graph/api/resources/user?view=graph-rest-1.0) can use to sign in to an Azure AD user account. The identities can be provided by Microsoft, organizations, or social identity providers such as Facebook, Google, or Microsoft. This property allows the user to sign in to the user account with any of these identities.

## January 2020: New in preview

### Devices and apps
Intune [January](changelog.md#january-2020) updates.

<!--
### Identity and access
Access specific types of [policies for an organization](/graph/api/resources/policy-overview?view=graph-rest-beta) using the `/policies` URL segment and specifying the policy type. For example, an organization can enforce a policy to automatically sign a user out from a web session after a period of inactivity; see CRUD operations for instances of [activityBasedTimeoutPolicy](/graph/api/resources/activitybasedtimeoutpolicy?view=graph-rest-beta). This is a [breaking change](https://developer.microsoft.com/identity/blogs/breaking-changes-policy-api-microsoft-graph-beta/) to make it easier to discover all policies, by grouping all typed policies under the `/policies` segment. Access other typed policies in a similar approach: [claimsMappingPolicy](/graph/api/resources/claimsmappingpolicy?view=graph-rest-beta), [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy?view=graph-rest-beta), and [tokenLifetimePolicy](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-beta).
-->


## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
    Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

    1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

    2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Office 365 developer program](https://developer.microsoft.com/office/dev-program), get a free Office 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).

