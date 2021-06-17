---
title: "Configure the scope of your access review using the Microsoft Graph API"
description: "Learn how to use the access reviews API in Microsoft Graph to review access to Azure AD resources."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: conceptualPageType
---

# Configure the scope of your access review using the Microsoft Graph API

The Azure AD [access reviews API](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true) allows you to programmatically review the access that users, service principals, or groups have to your Azure AD resources.

> [!NOTE]
> The [access reviews API](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true) is available in only the Microsoft Graph beta endpoint. Do not use it in production apps, as it is subject to change without notice.

The resources to review are configured in the **scope** property of the access reviews [accessReviewScheduleDefinition](/graph/api/resources/accessreviewscheduledefinition?view=graph-rest-beta&preserve-view=true) resource. This property is of the type [accessReviewScope](/graph/api/resources/accessreviewscope?view=graph-rest-beta&preserve-view=true), an abstract type inherited by the following resources that can be used to configure resources or groups of resources that access will be reviewed against.

|Resource|Description|Example scenarios|
|:---    |:---       |:---             |
|[accessReviewQueryScope](/graph/api/resources/accessreviewqueryscope?view=graph-rest-beta&preserve-view=true)|Best applicable when reviewing the full set or subset of principals who have access to a resource or group of related resources.|<ul><li>Membership of users assigned to a group.</li><li>Guest user access to one group.</li><li>Guest user access to all Microsoft 365 groups in a tenant.</li><li>Service principals assigned to privileged roles.</li><li>User and service principal access to Entitlement Management access packages.</li></ul>|
|[accessReviewInactiveUsersQueryScope](/graph/api/resources/accessreviewinactiveusersqueryscope?view=graph-rest-beta&preserve-view=true)|Inherited from accessReviewQueryScope. Used when only inactive users are reviewed. Their inactive status is specified by the **inactiveDuration** property. |<ul><li>Group membership of only inactive users.</li><ul>|
|[principalResourceMembershipsScope](/graph/api/resources/principalResourceMembershipsScope?view=graph-rest-beta&preserve-view=true)|Best applicable to review principals' access to resources where you configure unique pools of principals and resources.|<ul><li>Reviewing access of 3 specific principals across 1 Microsoft 365 group *and* 1 privileged Azure AD role.</li><ul>|

In this article, you will use these types of accessReviewScope to configure a wide range of Azure AD resources as the scope of your access review. This can help you to automate proactive review and keep control over access to resources in your organization.  

## Use accessReviewQueryScope to configure scope

To configure the scope by using the **accessReviewQueryScope** type, set the values of its **query**, **queryRoot**, and **queryType** properties. For descriptions of these properties, see [accessReviewQueryScope](/graph/api/resources/accessreviewqueryscope?view=graph-rest-beta&preserve-view=true) resource type.

### Example 1: Review all users assigned to a group

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/groups/{group id}/transitiveMembers",
    "queryType": "MicrosoftGraph"
}
```
To review *only inactive users* assigned to the group:

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
    "inactiveDuration": "P30D",
    "query": "/groups/{group id}/transitiveMembers",
    "queryType": "MicrosoftGraph"
}
````

### Example 2: Review guest users assigned to a group

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/groups/{group id}/transitiveMembers/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",    
    "queryType": "MicrosoftGraph"
}
```

### Example 3: Review guest users assigned to all Microsoft 365 groups

```http
"instanceEnumerationScope": {
    "query": "/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true ",
    "queryType": "MicrosoftGraph"
},
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
    "queryType": "MicrosoftGraph"
}
```

Because this review is applied on all Microsoft 365 groups, configure the **instanceEnumerationScope** to specify the Microsoft 365 groups to review.

### Example 4: Review access of all inactive guest users to all groups

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
    "query": "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
    "queryType": "MicrosoftGraph",
    "inactiveDuration": "P30D"
}
```

Because this review is applied on inactive users, use the **accessReviewInactiveUsersQueryScope** resource and specify the **@odata.type** type property with the value `#microsoft.graph.accessReviewInactiveUsersQueryScope`.

### Example 5: Review of all inactive guest users assigned to all teams

```http
"instanceEnumerationScope": {
    "query": "/groups?$filter=(groupTypes/any(c:c+eq+'Unified') and resourceProvisioningOptions/Any(x:x eq 'Team')')",
    "queryType": "MicrosoftGraph"
},
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
    "query": "./members/microsoft.graph.user/?$filter=(userType eq 'Guest')",
    "queryType": "MicrosoftGraph",
    "inactiveDuration": "P30D"
}
```

Because this review is applied on all teams, configure the **instanceEnumerationScope** property to specify all teams.

### Example 6: Review of Entitlement Management access package assignment

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/identityGovernance/entitlementManagement/accessPackageAssignments?$filter=(accessPackageId eq '{package id}' and assignmentPolicyId eq '{id}')",
    "queryType": "MicrosoftGraph"
}
```

### Example 7: Review of service principals assigned to privileged roles 

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/beta/roleManagement/directory/roleAssignmentScheduleInstances?$expand=principal&$filter=(isof(principal,'microsoft.graph.servicePrincipal') and roleDefinitionId eq '{role ID}')",
    "queryType": "MicrosoftGraph"
}
```

## Use principalResourceMembershipsScope to configure scope

The **principalResourceMembershipsScope** exposes the **principalScopes** and **resourceScopes** properties to support more tailored configuration options for the scope of the **accessReviewScheduleDefinition**. This includes reviewing access for multiple principals or groups of principals to multiple resources.

### Example 1: Review access of all inactive guest users to an application

```http
"scope": {
    "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
    "principalScopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
            "query": "/users?$filter=(userType eq 'Guest')",
            "queryType": "MicrosoftGraph",
            "inactiveDuration": "P30D"
        }
    ],
    "resourceScopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/servicePrincipals/{serviceprincipal id}",
            "queryType": "MicrosoftGraph"
        }
    ]
}
```

In this example, the principals are all inactive guest users with the period of their inactivity calculated as 30 days from the start date of the access review instance.

### Example 2: Review access of all guest users to a directory role

```http
"scope": {
    "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
    "principalScopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/users?$filter=(userType eq 'Guest')",
            "queryType": "MicrosoftGraph"
        }
    ],
    "resourceScopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/roleManagement/directory/roleDefinitions/{role id}",
            "queryType": "MicrosoftGraph"
        }
    ]
}
```

## See also

+ [Assign reviewers to your access review definition](/graph/accessreviews-reviewers-concept)