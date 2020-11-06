---
title: "Get started with the Microsoft Graph PowerShell SDK"
description: "Get started with the Microsoft Graph PowerShell SDK by using it perform some basic tasks."
localization_priority: Normal
author: jasonjoh
---

# Get started with the Microsoft Graph PowerShell SDK

In this guide you'll use the Microsoft Graph PowerShell SDK to perform some basic tasks. If you haven't already [installed the SDK](installation.md), please do so before following this guide.

## API version

By default, the SDK uses the [Microsoft Graph REST API v1.0](/graph/api/overview?view=graph-rest-1.0). You can change this by using the `Select-MgProfile` command.

```powershell
Select-MgProfile -Name "beta"
```

## Authentication

The PowerShell SDK supports two types of authentication: delegated access, and app-only access. In this guide, you will use delegated access to login as a user, grant consent to the SDK to act on your behalf, and call the Microsoft Graph.

For details on using app-only access for unattended scenarios, see [Use app-only authentication with the Microsoft Graph PowerShell SDK](app-only.md).

### Determine required permission scopes

Each API in the Microsoft Graph is protected by one or more permission scopes. The user logging in must consent to one of the required scopes for the APIs you plan to use. In this example, we'll use the following APIs.

- [List users](/graph/api/user-list?view=graph-rest-1.0) to find the user ID of the logged-in user
- [List joinedTeams](/graph/api/user-list-joinedteams?view=graph-rest-1.0) to get the Teams the user is a member of.
- [List channels](/graph/api/channel-list?view=graph-rest-1.0) to get the channels in a Team.
- [Send message](/graph/api/channel-post-messages?view=graph-rest-1.0) to send a message to a Team channel.

The `User.Read.All` permission scope will enable the first two calls, and the `Group.ReadWrite.All` scope will enable the rest. These permissions require an admin account.

### Sign in

Use the `Connect-MgGraph` command to sign in with the required scopes. You'll need to sign in with an admin account to consent to the required scopes.

```powershell
Connect-MgGraph -Scopes "User.Read.All","Group.ReadWrite.All"
```

The command prompts you to go to a web page to sign in using a device code. Once you've done that, the command indicates success with a `Welcome To Microsoft Graph!` message. You only need to do this once per session.

> [!TIP]
> You can add additional permissions by repeating the `Connect-MgGraph` command with the new permission scopes.

## Call Microsoft Graph

Now that you're signed in, you can start making calls to Microsoft Graph.

### Get the signed-in user

In this section you'll locate the signed-in user and get her user ID. You'll need that to use as a parameter to the other commands you'll use later. Start by running the following command.

```powershell
Get-MgUser
```

This outputs a listing of users in your Microsoft 365 organization.

```powershell
Id                                   DisplayName              Mail                                  UserPrincipalName
--                                   -----------              ----                                  -----------------
88d1ba68-8ff5-4de2-90ed-768c00abcfae Conf Room Adams          Adams@contoso.onmicrosoft.com         Adams@contoso.…
3103c7b9-cfe6-4cd3-a696-f88909b9a609 Adele Vance              AdeleV@contoso.OnMicrosoft.com        AdeleV@contoso…
da3a885e-2d97-41de-9347-5271ef321b58 MOD Administrator        admin@contoso.OnMicrosoft.com         admin@contoso.…
e0c6ee40-e105-476d-9597-acd061d21fcb Alex Wilber              AlexW@contoso.OnMicrosoft.com         AlexW@contoso.…
17c6bdee-8ed3-49af-a65e-71b64cca8382 Allan Deyoung            AllanD@contoso.OnMicrosoft.com        AllanD@contoso…
e5b78950-27cd-4f01-b083-eab4da97ca6a Conf Room Baker          Baker@contoso.onmicrosoft.com         Baker@contoso.…
40467725-1a58-495d-9e2f-5970c6306d8d Bianca Pisani                                                  BiancaP@contoso…
ce73bdb5-bf12-405e-ab85-40122fdd6eb7 Brian Johnson (TAILSPIN) BrianJ@contoso.onmicrosoft.com        BrianJ@contoso…
df1347a3-7ce7-4b4d-8aab-7c65b5c907b9 Cameron White                                                  CameronW@contoso…
```

You can use an [OData filter](../query-parameters.md#filter-parameter) to help locate the specific user you want. Run the following command, replacing `Megan Bowen` with the display name of the user you signed in with.

```powershell
$user = Get-MgUser -Filter "displayName eq 'Megan Bowen'"
```

Verify that worked by entering the following.

```powershell
$user.DisplayName
```

### List the user's joined Teams

Now use the user's ID as a parameter to the `Get-MgUserJoinedTeam` command.

```powershell
Get-MgUserJoinedTeam -UserId $user.Id
```

Just like the `Get-MgUser` command, this gives a list of Teams. Select one of the user's joined Teams and use its `DisplayName` to filter the list.

```powershell
$team = Get-MgUserJoinedTeam -UserId $user.Id -Filter "displayName eq 'Sales and Marketing'"
```

### List Team channels

Now use the Team's ID as a parameter to the `Get-MgTeamChannel` command, following a similar pattern of listing all channels, then filtering the list to get the specific channel you want.

```powershell
Get-MgTeamChannel -TeamId $team.Id
$channel = Get-MgTeamChannel -TeamId $team.Id -Filter "displayName eq 'General'"
```

### Send a message

Now that you have both the Team ID and the channel ID, you can post a message to the channel. Use the following command to send the message.

```powershell
New-MgTeamChannelMessage -TeamId $team.Id -ChannelId $channel.Id -Body @{ Content="Hello World" }
```

This command differs from the previous commands you used. Instead of just querying data, it's actually creating something. In Microsoft Graph, this translates to an HTTP `POST`, and it requires an object in the body of that post. In this case, the object is a [chatMessage](/graph/resources/chatmessage?view=graph-rest-1.0). Note that the `-Body` parameter to the command maps to the `body` property on `chatMessage`. Other properties are mapped in a similar way, so you can change the message you send. For example, to send an urgent message use the following command.

```powershell
New-MgTeamChannelMessage -TeamId $team.Id -ChannelId $channel.Id -Body @{ Content="Hello World" } -Importance "urgent"
```

## Next steps

- [Learn how to navigate the SDK](navigating.md)
- [Use app-only authentication with the Microsoft Graph PowerShell SDK](app-only.md)
