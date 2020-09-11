---
title: "Use the Azure AD identity protection APIs"
description: "You can use Microsoft Graph to query the Identity Protection APIs to receive information about risk detected by Azure AD Identity Protection."
author: "cloudhandler"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: conceptualPageType
---

# Use the Azure AD identity protection API

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Identity Protection is a tool that allows organizations to discover, investigate, and remediate identity-based risks in their environment. You can use the following Microsoft Graph APIs to query risks detected by Identity Protection: 

* [riskDetection](riskdetection.md) - Query Microsoft Graph for a list of both user and sign-in linked risk detections and associated information about the detection. Risk detections in Azure AD Identity Protection include any identified suspicious actions related to user accounts in the directory.

* [riskyUsers](riskyuser.md) - Query Microsoft Graph for information about users that Identity Protection detected as risky. User risk represents the probability that a given identity or account is compromised. These risks are calculated offline using Microsoft’s internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

* [signIn](signin.md) - Query Microsoft Graph for information about Azure AD sign-ins with specific properties related to risk state, detail, and level. A sign-in risk represents the probability that a given authentication request isn’t authorized by the identity owner. These risks can be calculated in real-time or calculated offline using Microsoft’s internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

* [identityRiskEvents](identityriskevent.md) - Query Microsoft Graph for a list of risk detections and associated information. This API is deprecated; we recommend that you use **riskDetections** instead.

>[!CAUTION]
>The **identityRiskEvents** API is deprecated and will stop returning data on January 10, 2020. For details, see [Deprecation of the IdentityRiskEvents API](https://developer.microsoft.com/office/blogs/deprecatation-of-the-identityriskevents-api/).

## See also

* [About Azure Active Directory Identity Protection](https://docs.microsoft.com/azure/active-directory/identity-protection/overview-identity-protection)
* [Get started with Azure Active Directory identity protection and Microsoft Graph](https://docs.microsoft.com/azure/active-directory/identity-protection/howto-identity-protection-graph-api)
