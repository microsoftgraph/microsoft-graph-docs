---
title: "Working with groups in Microsoft Graph"
description: "Groups are collections of users and other principals who share access to resources in Microsoft services or in your app. Microsoft Graph provides APIs that you can use to create and manage different types of groups and group functionality according to your scenario. All group-related operations in Microsoft Graph require administrator consent."
author: "yyuank"
localization_priority: Priority
ms.prod: "groups"
doc_type: conceptualPageType
---

# Working with groups in Microsoft Graph

Groups are collections of [users](user.md) and other principals who share access to resources in Microsoft services or in your app. Microsoft Graph provides APIs that you can use to create and manage different types of groups and group functionality according to your scenario. All group-related operations in Microsoft Graph require administrator consent.

> **Note**: Groups can only be created through work or school accounts. Personal Microsoft accounts don't support groups.

| Type              | Use case | groupTypes | mailEnabled | securityEnabled | Created and managed via API |
|-------------------|----------|-----------|--------------|------------------|--------------------------------|
| [Microsoft 365 groups](#microsoft-365-groups) | Facilitating user collaboration with shared Microsoft online resources. | `["Unified"]` | `true` | `true` or `false` | Yes |
| [Security groups](#security-groups-and-mail-enabled-security-groups) | Controlling user access to in-app resources. | `[]` | `false` | `true` | Yes |
| [Mail-enabled security groups](#security-groups-and-mail-enabled-security-groups) | Controlling user access to in-app resources, with a shared group mailbox. | `[]` | `true` | `true` | No |
| Distribution groups | Distributing mail to the members of the group. It is recommended to use Microsoft 365 groups due to the richer set of resources it provides. | `[]` | `true` | `false` | No |

## Microsoft 365 groups
The power of Microsoft 365 groups is in its collaborative nature, perfect for people who work together on a project or a team. They are created with resources that members of the group share, including:

- Outlook conversations
- Outlook calendar
- SharePoint files
- OneNote notebook
- SharePoint team site
- Planner plans
- Intune device management

### Group in Outlook example

The following is a JSON representation of groups in Outlook.

```http

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups/$entity",
    "id": "4c5ee71b-e6a5-4343-9e2c-4244bc7e0938",
    "deletedDateTime": null,
    "classification": "MBI",
    "createdDateTime": "2016-08-23T14:46:56Z",
    "description": "This is a group in Outlook",
    "displayName": "OutlookGroup101",
    "groupTypes": [
        "Unified"
    ],
    "mail": "outlookgroup101@service.microsoft.com",
    "mailEnabled": true,
    "mailNickname": "outlookgroup101",
    "preferredLanguage": null,
    "proxyAddresses": [
        "smtp:outlookgroup101@microsoft.onmicrosoft.com",
        "SMTP:outlookgroup101@service.microsoft.com"
    ],
    "securityEnabled": false,
    "theme": null,
    "visibility": "Public"
}
```
To learn more about Microsoft 365 groups and the administrator experiences, see [Learn about Microsoft 365 groups](https://support.office.com/article/Learn-about-Office-365-groups-b565caa1-5c40-40ef-9915-60fdb2d97fa2).

## Security groups and mail-enabled security groups

Security groups are for controlling user access to resources. By checking whether a user is a member of a security group, your app can make authorization decisions when that user is trying to access some secure resources in your app. Security groups can have users and other security groups as members.

Mail-enabled security groups are used in the same way that security groups are, but with the added feature of a shared mailbox for the groups. Mail-enabled security groups can't be created through the API, but other group operations work.  Mail-enabled security groups are read only. Learn more in the [Manage mail-enabled security groups Exchange article](/Exchange/recipients/mail-enabled-security-groups).

### Security group example

The following is a JSON representation of a security group.

```http
{
    "@odata.type": "#microsoft.graph.group",
    "id": "f87faa71-57a8-4c14-91f0-517f54645106",
    "deletedDateTime": null,
    "classification": null,
    "createdDateTime": "2016-07-20T09:21:23Z",
    "description": "This group is a Security Group",
    "displayName": "SecurityGroup101",
    "groupTypes": [],
    "mail": null,
    "mailEnabled": false,
    "mailNickname": "",
    "preferredLanguage": null,
    "proxyAddresses": [],
    "securityEnabled": true
}
```
## Dynamic membership

All types of groups can have dynamic membership rules that automatically add or remove members from the group based on user properties. For example, a "Marketing employees" group would include every user with the department property set to "Marketing", so that new marketing employees are automatically added to the group and employees who leave the department are automatically removed from the group. This rule can be specified in a "membershipRule" field during group creation as `"membershipRule": 'user.department -eq "Marketing"'`. GroupTypes must also include `"DynamicMembership"`. The following request creates a new Microsoft 365 group for the marketing employees:

```http
POST https://graph.microsoft.com/beta/groups
{
    "description": "Marketing department folks",
    "displayName": "Marketing department",
    "groupTypes": [
        "Unified",
        "DynamicMembership"
    ],
    "mailEnabled": true,
    "mailNickname": "marketing",
    "securityEnabled": false,
    "membershipRule": "user.department -eq \"Marketing\"",
    "membershipRuleProcessingState": "on"
}
```

To learn more about formulating membershipRules, see [Create attribute-based rules for dynamic group membership in Azure Active Directory](/azure/active-directory/active-directory-groups-dynamic-membership-azure-portal).

> **Note**: Dynamic membership rules requires the tenant to have a license at tier [Azure Active Directory Premium P1](https://azure.microsoft.com/pricing/details/active-directory/) or greater.

## Other types of groups

Microsoft 365 groups in Yammer are used to facilitate user collaboration through Yammer posts. This type of group can be returned through a read request, but their posts can't be accessed through the API. When Yammer posts and conversation feeds are enabled on a group, default Microsoft 365 group conversations are disabled. To learn more, see [Yammer developer API docs](https://developer.yammer.com/docs).

## Group-based licensing

You can use group-based licensing to assign one or more product licenses to an Azure AD group. Azure AD ensures that the licenses are assigned to all members of the group. Any new members who join the group are assigned the appropriate licenses. When they leave the group, those licenses are removed. The feature can only be used with security groups and Microsoft 365 groups that have `securityEnabled=TRUE`. To learn more about group-based licensing, see [What is group-based licensing in Azure Active Directory?](/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).

## Common use cases

Using Microsoft Graph, you can perform the following common operations.

| **Use cases**  | **REST resources** | **See also** |
|:---------------|:--------|:----------|
| **Group object and methods** | | |
| Create new groups, get existing groups, update the properties on groups, and delete groups. Currently, only security groups and groups in Outlook can be created through the API. | [group](group.md) | [Create new groups](../api/group-post-groups.md) <br/> [List groups](../api/group-list.md) <br/> [Update groups](../api/group-update.md) <br/> [Delete groups](../api/group-delete.md) |
| **Group membership methods** | | |
| List the members of a group, and add or remove members. | [user](user.md) <br/> [group](group.md)| [List members](../api/group-list-members.md) <br/> [Add member](../api/group-post-members.md) <br/> [Remove member](../api/group-delete-members.md)|
| Determine whether a user is a member of a group, get all the groups the user is a member of. | [user](user.md) <br/> [group](group.md)| [Check member groups](../api/group-checkmembergroups.md) <br/> [Get member groups](../api/group-getmembergroups.md)|
| List the owners of a group, and add or remove owners. | [user](user.md) <br/> [group](group.md)| [List owners](../api/group-list-members.md) <br/> [Add member](../api/group-post-members.md) <br/> [Remove member](../api/group-delete-members.md)|

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.