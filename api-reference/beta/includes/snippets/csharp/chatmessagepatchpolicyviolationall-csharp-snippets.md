---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatMessage = new ChatMessage
{
	PolicyViolation = new ChatMessagePolicyViolation
	{
		PolicyTip = new ChatMessagePolicyViolationPolicyTip
		{
			GeneralText = "This item has been blocked by the administrator.",
			ComplianceUrl = "https://contoso.com/dlp-policy-page",
			MatchedConditionDescriptions = new List<String>()
			{
				"Credit Card Number"
			}
		},
		VerdictDetails = ChatMessagePolicyViolationVerdictDetailsTypes.AllowFalsePositiveOverride | ChatMessagePolicyViolationVerdictDetailsTypes.AllowOverrideWithoutJustification,
		DlpAction = ChatMessagePolicyViolationDlpActionTypes.BlockAccess
	}
};

await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages["{chatMessage-id}"]
	.Request()
	.UpdateAsync(chatMessage);

```