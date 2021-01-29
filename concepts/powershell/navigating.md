---
title: "Navigating the Microsoft Graph PowerShell SDK"
description: "The Microsoft Graph PowerShell SDK contains a large number of commands. Learn how to find the right command for what you want to achieve."
localization_priority: Normal
author: jasonjoh
---

# Navigating the Microsoft Graph PowerShell SDK

The Microsoft Graph API is huge, and it's growing all the time. Because of this, the number of commands in the Microsoft Graph PowerShell SDK is also very large. Finding the right command for what you want to achieve can be challenging, especially if you're not already familiar with Microsoft Graph. Let's look at some ways to help find a particular command.

## Command naming conventions

The commands in the SDK are generated directly from the [REST API](/graph/api/overview?view=graph-rest-1.0&preserve-view=true), so the names are influenced by the API. You don't have to understand the details of the API to use this SDK, but it helps to understand the naming convention.

PowerShell commands are named using a verb-noun pair, such as `Get-Command` or `Update-List`. Let's start with the verb.

### Command verbs

For basic REST operations, the verb is determined by the HTTP method used for the API.

| HTTP method | Command verb | Example |
|-------------|--------------|---|
| GET         | Get          | `Get-MgUser` [API reference](/graph/api/user-get?view=graph-rest-1.0&preserve-view=true) |
| POST        | New          | `New-MgUserMessage` [API reference](/graph/api/user-post-messages?view=graph-rest-1.0&preserve-view=true) |
| PUT         | New          | `New-MgTeam` [API reference](/graph/api/team-put-teams?view=graph-rest-1.0&preserve-view=true) |
| PATCH       | Update       | `Update-MgUserEvent` [API reference](/graph/api/event-update?view=graph-rest-1.0&preserve-view=true) |
| DELETE      | Remove       | `Remove-MgDriveItem` [API reference](/graph/api/driveitem-delete?view=graph-rest-1.0&preserve-view=true) |

For functions and actions, it's a little more complicated. APIs in Microsoft Graph that are implemented as OData functions or actions are typically named with at least a verb. The corresponding command's verb is based on the verb in the function or action name. However, command verbs in PowerShell have to conform to specific [naming rules](/powershell/scripting/developer/cmdlet/approved-verbs-for-windows-powershell-commands), so this can result in non-intuitive name-to-command mappings.

Let's look at some examples. The [getSchedule](/graph/api/calendar-getschedule?view=graph-rest-1.0&preserve-view=true) API uses `get`, and `Get` is an approved PowerShell verb, so it's command is `Get-MgUserCalendarSchedule`. The [cancel](/graph/api/event-cancel?view=graph-rest-beta&preserve-view=true) API on an event on the other hand, uses a non-approved verb `cancel`. The approved verb for cancelling or discontinuing somethign is `Stop`, so it's command is `Stop-MgUserEvent`. Finally, the [snoozeReminder](/graph/api/event-snoozereminder?view=graph-rest-1.0&preserve-view=true) API's verb, `snooze`, has no PowerShell-approved equivalent. For API's like that, the SDK uses the verb `Invoke`, so that API's command is `Invoke-MgSnoozeUserEventReminder`.

### Command nouns

By now you may have noticed that all nouns in the SDK's commands start with `Mg`. This prefix helps to avoid naming conflicts with other PowerShell modules. With that in mind, it should make sense that commands like `Get-MgUser` are used to get a user. And following PowerShell convention, even though the noun is singular, those same commands can return multiple results if no specific instance is requested.

But what about commands like `Get-MgUserMessage` or `Get-MgUserMailFolderMessage`? Both of these get a [message](/graph/api/resources/message?view=graph-rest-1.0&preserve-view=true) object, so why not `Get-MgMessage`? The answer comes from the [get message API](/graph/api/message-get?view=graph-rest-1.0&preserve-view=true).

Look at the HTTP requests for this API. Ignoring the requests with `/me` in the URL, there are two other ways to call this API.

```http
GET /users/{id | userPrincipalName}/messages/{id}
GET /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}
```

The paths match to the nouns. For the first form, you start with `users`, then `messages`, so the command is `Get-MgUserMessage`. In the second form, you start with `users`, then `mailFolders`, then messages, so the command is `Get-MgUserMailFolderMessage`.

Another way of looking at this is what owns or contains what. The user owns mail folders, and mail folders contain messages. Add the prefix and you get `Get-MgUserMailFolderMessage`.

### Listing parameters

After you've found the right command, you can examine all the available parameters by using the `Get-Help` command. For example, the following command lists all the available parameters for the `Get-MgUser` command.

```powershell
Get-Help Get-MgUser -Detailed
```

## Finding available commands

Sometimes just knowing the naming conventions isn't enough to guess the right command. In this case, you can use the `Get-Command` command to search the available commands in the SDK. For example, if you're looking for commands related to Microsoft Teams, you can run the following command.

```powershell
Get-Command -Module Microsoft.Graph* *team*
```
