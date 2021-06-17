---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationMethodsPolicy = new AuthenticationMethodsPolicy
{
	RegistrationEnforcement = new RegistrationEnforcement
	{
		AuthenticationMethodsRegistrationCampaign = new AuthenticationMethodsRegistrationCampaign
		{
			SnoozeDurationInDays = 1,
			State = AdvancedConfigState.Enabled,
			ExcludeTargets = new List<ExcludeTarget>()
			{
			},
			IncludeTargets = new List<AuthenticationMethodsRegistrationCampaignIncludeTarget>()
			{
				new AuthenticationMethodsRegistrationCampaignIncludeTarget
				{
					Id = "3ee3a9de-0a86-4e12-a287-9769accf1ba2",
					TargetType = AuthenticationMethodTargetType.Group,
					TargetedAuthenticationMethod = "microsoftAuthenticator"
				}
			}
		}
	}
};

await graphClient.Policies.AuthenticationMethodsPolicy
	.Request()
	.UpdateAsync(authenticationMethodsPolicy);

```