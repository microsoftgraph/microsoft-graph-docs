---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conditionalAccessPolicy = new ConditionalAccessPolicy
{
	DisplayName = "Demo app for documentation",
	State = ConditionalAccessPolicyState.Disabled,
	Conditions = new ConditionalAccessConditionSet
	{
		SignInRiskLevels = new List<RiskLevel>()
		{
			RiskLevel.High,
			RiskLevel.Medium
		},
		ClientAppTypes = new List<ConditionalAccessClientApp>()
		{
			ConditionalAccessClientApp.Modern,
			ConditionalAccessClientApp.EasSupported,
			ConditionalAccessClientApp.EasUnsupported,
			ConditionalAccessClientApp.Other
		},
		Applications = new ConditionalAccessApplications
		{
			IncludeApplications = new List<String>()
			{
				"All"
			},
			ExcludeApplications = new List<String>()
			{
				"499b84ac-1321-427f-aa17-267ca6975798",
				"00000007-0000-0000-c000-000000000000",
				"de8bc8b5-d9f9-48b1-a8ad-b748da725064",
				"00000012-0000-0000-c000-000000000000",
				"797f4846-ba00-4fd7-ba43-dac1f8f63013",
				"05a65629-4c1b-48c1-a78b-804c4abdd4af",
				"7df0a125-d3be-4c96-aa54-591f83ff541c"
			},
			IncludeUserActions = new List<String>()
			{
			}
		},
		Users = new ConditionalAccessUsers
		{
			IncludeUsers = new List<String>()
			{
				"a702a13d-a437-4a07-8a7e-8c052de62dfd"
			},
			ExcludeUsers = new List<String>()
			{
				"124c5b6a-ffa5-483a-9b88-04c3fce5574a",
				"GuestsOrExternalUsers"
			},
			IncludeGroups = new List<String>()
			{
			},
			ExcludeGroups = new List<String>()
			{
			},
			IncludeRoles = new List<String>()
			{
				"9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
				"cf1c38e5-3621-4004-a7cb-879624dced7c",
				"c4e39bd9-1100-46d3-8c65-fb160da0071f"
			},
			ExcludeRoles = new List<String>()
			{
				"b0f54661-2d74-4c50-afa3-1ec803f12efe"
			}
		},
		Platforms = new ConditionalAccessPlatforms
		{
			IncludePlatforms = new List<ConditionalAccessDevicePlatform>()
			{
				ConditionalAccessDevicePlatform.All
			},
			ExcludePlatforms = new List<ConditionalAccessDevicePlatform>()
			{
				ConditionalAccessDevicePlatform.IOS,
				ConditionalAccessDevicePlatform.WindowsPhone
			}
		},
		Locations = new ConditionalAccessLocations
		{
			IncludeLocations = new List<String>()
			{
				"AllTrusted"
			},
			ExcludeLocations = new List<String>()
			{
				"00000000-0000-0000-0000-000000000000",
				"d2136c9c-b049-47ae-b9cf-316e04ef7198"
			}
		},
		DeviceStates = new ConditionalAccessDeviceStates
		{
			IncludeStates = new List<String>()
			{
				"All"
			},
			ExcludeStates = new List<String>()
			{
				"Compliant"
			}
		}
	},
	GrantControls = new ConditionalAccessGrantControls
	{
		Operator = "OR",
		BuiltInControls = new List<ConditionalAccessGrantControl>()
		{
			ConditionalAccessGrantControl.Mfa,
			ConditionalAccessGrantControl.CompliantDevice,
			ConditionalAccessGrantControl.DomainJoinedDevice,
			ConditionalAccessGrantControl.ApprovedApplication,
			ConditionalAccessGrantControl.CompliantApplication
		},
		CustomAuthenticationFactors = new List<String>()
		{
		},
		TermsOfUse = new List<String>()
		{
			"ce580154-086a-40fd-91df-8a60abac81a0",
			"7f29d675-caff-43e1-8a53-1b8516ed2075"
		}
	},
	SessionControls = new ConditionalAccessSessionControls
	{
		ApplicationEnforcedRestrictions = null,
		PersistentBrowser = null,
		CloudAppSecurity = new CloudAppSecuritySessionControl
		{
			CloudAppSecurityType = CloudAppSecuritySessionControlType.BlockDownloads,
			IsEnabled = true
		},
		SignInFrequency = new SignInFrequencySessionControl
		{
			Value = 4,
			Type = SigninFrequencyType.Hours,
			IsEnabled = true
		}
	}
};

await graphClient.ConditionalAccess.Policies
	.Request()
	.AddAsync(conditionalAccessPolicy);

```