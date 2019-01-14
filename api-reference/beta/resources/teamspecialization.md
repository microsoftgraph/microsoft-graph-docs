---
title: "teamSpecialization enum type"
description: "Describes the special use case for a team."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# teamSpecialization enum type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Indicates whether the [team](../resources/team.md) is intended for a particular use case. Each [team](../resources/team.md) specialization has access to unique behaviors and experiences targeted to its use case. Default is 'none'.

## Members

| Member             | Value | Description                                                                |
| :----------------- | :---- | :------------------------------------------------------------------------- |
| none               | 0     | Default type for a team which gives the standard team experience.          |
| unknownFutureValue | 7     | Sentinel value reserved as a placeholder for future expansion of the enum. |
