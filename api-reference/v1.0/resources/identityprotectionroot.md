---
title: "Identity Protection APIs"
description: "identityProtectionRoot resource type"
author: "cloudhandler"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# identityProtectionRoot resource type

Namespace: microsoft.graph

Identity Protection is a tool that allows organizations to discover, investigate, and remediate identity-based risks in their environment. You can use the following Microsoft Graph APIs to query risks detected by Identity Protection: 

* [riskDetection](riskdetection.md) - Query Microsoft Graph for a list of both user and sign-in linked risk detections and associated information about the detection. Risk detections in Azure AD Identity Protection include any identified suspicious actions related to user accounts in the directory.

* [riskyUsers](riskyuser.md) - Query Microsoft Graph for information about users that Identity Protection detected as risky. User risk represents the probability that a given identity or account is compromised. These risks are calculated offline using Microsoft’s internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

* [signIn](signin.md) - Query Microsoft Graph for information about Azure AD sign-ins with specific properties related to risk state, detail, and level. A sign-in risk represents the probability that a given authentication request isn’t authorized by the identity owner. These risks can be calculated in real-time or calculated offline using Microsoft’s internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

## What can I do with Identity Protection APIs in Microsoft Graph?

The following are popular requests for working with audit log data:

Operation | URL
:----------|:----
GET risky users | [GET https://graph.microsoft.com/v1.0/identityProtection/riskyUsers](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskyUsers&version=v1.0)
GET risk detections | [GET https://graph.microsoft.com/v1.0/identityProtection/riskDetections](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskDetections&version=v1.0)
GET a user's risk history | [GET https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/{riskyUserId}/history](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskyUsers/{riskyUserId}/history&version=v1.0)
CONFIRM a user as compromised | [POST https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/confirmCompromised](https://developer.microsoft.com/graph/graph-explorer?request=/identityProtection/riskyUsers/confirmCompromised&version=v1.0)
DISMISS a risky user | [POST https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/dismiss](https://developer.microsoft.com/graph/graph-explorer?request=/identityProtection/riskyUsers/dismiss&version=v1.0)

## What licenses do I need?

Azure AD Identity Protection is a premium feature. You need an Azure AD Premium P1 or P2 license to access the riskDetection API (note: P1 licenses receive limited risk information). The riskyUsers API is only available to Azure AD Premium P2 licenses only.

## See also

* [About Azure Active Directory Identity Protection](/azure/active-directory/identity-protection/overview-identity-protection)
* [Get started with Azure Active Directory identity protection and Microsoft Graph](/azure/active-directory/identity-protection/howto-identity-protection-graph-api)