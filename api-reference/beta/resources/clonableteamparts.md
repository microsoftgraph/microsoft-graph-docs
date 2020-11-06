---
title: "clonableTeamParts enum type"
description: "Describes which part of a team should be cloned. "
localization_priority: Normal
doc_type: enumPageType
ms.prod: ""
author: "nkramer"
---

# clonableTeamParts enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes which part of a [team](../resources/team.md) should be cloned.

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
|apps|1|Copy the list of installed apps.|
|tabs|2|copies the tabs within channels.|
|settings|4|Copies all settings within the team, along with key group settings.|
|channels|8|copies the channel structure (but not the messages in the channel).|
|members|16|copies the members and owners of the team.|


