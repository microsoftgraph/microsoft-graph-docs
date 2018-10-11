# clonableTeamParts enum type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Describes which part of a [team](../resources/team.md) should be cloned. 

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
|apps|1|Copy the list of installed apps.|
|tabs|2|copies the tabs within channels.|
|settings|4|Copies all settings within the team, along with key group settings.|
|channels|8|copies the channel structure (but not the messages in the channel).|
|members|16|copies the members and owners of the team.|
