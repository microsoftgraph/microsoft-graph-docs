---
title: "Deploy, test, and extend migrated apps"
description: "Describes how to migrate Azure Active Directory (Azure AD) apps to use the Microsoft Graph API (REST); this discusses step 3: deploy, test, and extend."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "azure-active-directory"
---

# Deploy, test, and extend

This is step 4 of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

1.  **Test throughly**

    Once you've updated your app, test it thoroughly to verify that it works as expected and that you haven't introduced any regressions.  

    Be sure to use multiple environments, data sets, and end-user personas, e.g. credentials with different roles, rights, and responsibilities. Go through the entire lifecycle, by having a new test user acquire the app for the first time, as well as an existing user (who already consented) trying to use the app again.

2.  **Deploy staged updates**

    Consider deploying your updates in stages.  A limited roll-out to a small set of friendly users can help identify glitches and other potentially-embarrassing issues.  This also gives you a chance to monitor initial reception and feedback.

    If the initial roll-out goes well, monitor progress as you deploy to larger audiences.

3.  **Explore new value**

    Now you've made the switch to Microsoft Graph, it's never been easier for you to unlock many more datasets and features that are now at your fingertips. 
    Microsoft Graph supports many new Azure AD datasets and features that are not available in Azure AD Graph, including: 

    - [Microsoft 365 group management](./office365-groups-concept-overview.md)
    - [External user invitations](/graph/api/resources/invitation?view=graph-rest-1.0)
    - The ability to [restore users and Microsoft 365 groups](/graph/api/resources/directory?view=graph-rest-1.0) after they've been deleted
    - [Webhook notifications on users and groups](./webhooks.md?toc=.%252fref%252ftoc.json&view=graph-rest-1.0)
    - Identity governance features such as:
      - [Privileged identity management](/graph/api/resources/privilegedidentitymanagement-root?view=graph-rest-beta) (PIM) to elevate users to privileged roles only when needed and for a limited time period
      - [Access reviews](/graph/api/resources/accessreviews-root?view=graph-rest-beta) for one-time or recurring access reviews for attestation of user's access rights
      - [Terms-of-use](/graph/api/resources/accessreviews-root?view=graph-rest-beta) to enable organizations to present information for legal or compliance requirements, like disclaimer notices
    - Security features such as:
      - [Identity risk events](/graph/api/resources/identityriskevent?view=graph-rest-1.0)
      - [Risky users](/graph/api/resources/riskyuser?view=graph-rest-1.0)
    - [Client libraries and samples](./index.yml) available on many more platforms and languages. The Microsoft Graph SDKs provide a discoverable interface to easily access your data while transparently handling token acquisition, retry handling due to errors and throttling, secure redirect handling and model serialization and deserialization.

    Microsoft Graph offers access to many more services than just Azure Active Directory. It's the [API gateway to Microsoft 365 services too](./index.yml).
    Check for new datasets and capabilities regularly.  

    - Take a look at [what you can do with Microsoft Graph](/graph/examples)
    - Explore the [Microsoft Graph blog](/graph/blogs) for the latest news about Microsoft Graph and some great learning series.
    - The [changelog](/greaph/changelog) summarizes service and document updates. Following these updates will help you track new APIs introduced to /beta (preview) and those promoted to v1.0 (GA).  These new APIs can provide new ways for you to add more value and new experiences to your apps.  

## See also

If you run into problems or need help during the migration process, you can:

- Review the [checklist](migrate-azure-ad-graph-planning-checklist.md) again
- Post questions to [StackOverflow](https://stackoverflow.com/questions/tagged/microsoft-graph)
- Review Microsoft Graph samples to contrast and compare with your existing application code:
  - **Apps that use the REST API**: explore [quick starts and samples](https://developer.microsoft.com/graph/get-started), choosing your platform of choice and run through the quick start or search for an appropriate sample
  - **App that use the .NET client library**: review [console-csharp-snippets-sample](https://github.com/microsoftgraph/console-csharp-snippets-sample) and/or [dotnetcore-console-sample](https://github.com/microsoftgraph/dotnetcore-console-sample)

## Next Steps

- Use [quick starts and samples](/graph/get-started) to come up to speed quickly.
- Leverage [client libraries and SDKs](https://developer.microsoft.com/graph/get-started) to develop custom applications 
- Explore [Microsoft Graph](./overview.md) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.