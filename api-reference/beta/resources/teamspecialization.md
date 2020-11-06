---
title: "teamSpecialization enum type"
description: "Describes the special use case for a team."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: enumPageType
---

# teamSpecialization enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates whether the [team](../resources/team.md) is intended for a particular use case. Each [team](../resources/team.md) specialization has access to unique behaviors and experiences targeted to its use case. Default is 'none'.

## Members

| Member             | Value | Description                                                                |
| :----------------- | :---- | :------------------------------------------------------------------------- |
| none               | 0     | Default type for a team which gives the standard team experience.          |
| educationStandard  | 1     | Team created by an education user. All teams created by education user are of type Edu. |
| educationClass     | 2     | Team experience optimized for a class. This enables segmentation of features across O365. |
| educationProfessionalLearningCommunity | 3 | Team experience optimized for a PLC. Learn more about PLC [here](https://en.wikipedia.org/wiki/Professional_learning_community). |
| educationStaff     | 4     |  Team type for an optimized experience for staff in an organization, where a staff leader, like a principal, is the admin and teachers are members in a team that comes with a specialized notebook. For more details, see [OneNote staff notebook for education](https://www.onenote.com/staffnotebookedu). |
| unknownFutureValue | 7     | Sentinel value reserved as a placeholder for future expansion of the enum. |


