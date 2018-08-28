# Use the Secure Score API with Microsoft Intelligent Security Graph

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. 

Microsoft 365 Secure Score is a new security analytics tool that applies a score to Microsoft 365 customers’ current Microsoft 365 security configuration. It helps organizations better understand their security posture and how to improve and reduce their risk in Microsoft 365. Secure Score helps customers balance their security and productivity needs with guidance to help them enable the right mix of the available security features and to model what their score would look like after adopting some of these features. Organizations can also compare their score with other organizations and see how their score has been trending over time.


## Why connect to Secure Score in the Intelligent Security Graph?

The Security API provides a unified gateway to connect to security solutions from Microsoft and partners. Queries are federated to all security providers in Microsoft Graph and responses are aggregated.

### Insights into your security posture

One place to understand your security posture and what features you have enabled.

### Guidance to increase your security level

Indicators clearly showing how you are doing against Microsoft asserted baseline and how you are progressing.

### Analyze Your Score

Manage your risk in a proactive way not reactive.

### Track Your Progress

Easily see your progress improve over time, with clarity on what caused the improvements.

<!-- LG: Add this content when this functionality is available. 
### Automate SecOps for greater efficiency (coming soon)
-->
<!-- 
Build and run investigation and remediation runbooks, automate security policy checks and rule enforcement, and orchestrate actions across security solutions.
-->


## Authorization

The Secure Score API provides access to some of your organization’s most sensitive information. To better understand the types of authorization and how to manage them, we provide additional details in our Microsoft TechCommuity forums at the link below. 

[Understanding authorization when calling the Microsoft Graph Security API](https://techcommunity.microsoft.com/t5/Using-Microsoft-Graph-Security/Authorization-and-Microsoft-Graph-Security-API/m-p/184376)

For more information about permissions, including delegated and application permissions, see [Permissions](../../../concepts/permissions_reference.md).

## Common use cases

The following are some of the most popular requests for working with the Secure Score API:

| **Use cases**   | **REST resources** | **Try it in Graph Explorer** |
|:---------------|:--------|:----------|
| Get secureScores | [Get secureScores](../api/get_secureScores.md) | [https://graph.microsoft.com/beta/security/secureScores](https://developer.microsoft.com/en-us/graph/graph-explorer?request=security/secureScores&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |
| Get secureScoreControlProfiles | [Get secureScoreControlProfiles](../api/get_secureScoresControlProfile.md) | https://graph.microsoft.com/beta/security/secureScoreControlProfiles |
| Update secureScoreControlProfiles | [Update secureScoreControlProfiles](../api/secureScoreControlProfiles_update.md) | https://graph.microsoft.com/beta/security/secureScoreControlProfiles |



## Next steps

The Secure Score API can open up new ways for you to engage with security solutions from Microsoft and partners. Follow these steps to get started:

* Drill down into [Secure Scores](../resources/secureScores.md)
* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer). Under **Sample Queries**, choose **show more samples** and set the Security category to **on**.

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/graph/examples#partners).
