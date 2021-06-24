---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy
{
	Id = "b2eba9a1-b357-42ee-83a8-336522ed6cbf",
	AccessPackageId = "4c02f928-7752-49aa-8fc8-e286d973a965",
	DisplayName = "All Users",
	Description = "All users can request for access to the directory.",
	CanExtend = false,
	DurationInDays = 365,
	ExpirationDateTime = null,
	RequestorSettings = new RequestorSettings
	{
		ScopeType = "AllExistingConnectedOrganizationSubjects",
		AcceptRequests = true,
		AllowedRequestors = new List<UserSet>()
		{
		}
	},
	RequestApprovalSettings = new ApprovalSettings
	{
		IsApprovalRequired = true,
		IsApprovalRequiredForExtension = false,
		IsRequestorJustificationRequired = true,
		ApprovalMode = "SingleStage",
		ApprovalStages = new List<ApprovalStage>()
		{
			new ApprovalStage
			{
				ApprovalStageTimeOutInDays = 14,
				IsApproverJustificationRequired = true,
				IsEscalationEnabled = true,
				EscalationTimeInMinutes = 11520,
				PrimaryApprovers = new List<UserSet>()
				{
					new GroupMembers
					{
						IsBackup = true,
						Id = "d2dcb9a1-a445-42ee-83a8-476522ed6cbf",
						Description = "group for users from connected organizations which have no external sponsor"
					},
					new ExternalSponsors
					{
						IsBackup = false
					}
				}
			}
		}
	},
	AccessReviewSettings = new AssignmentReviewSettings
	{
		IsEnabled = false
	},
	Questions = new List<AccessPackageQuestion>()
	{
		new AccessPackageMultipleChoiceQuestion
		{
			IsRequired = false,
			Text = new AccessPackageLocalizedContent
			{
				DefaultText = "what state are you from?",
				LocalizedTexts = new List<AccessPackageLocalizedText>()
				{
					new AccessPackageLocalizedText
					{
						Text = "¿De qué estado eres?",
						LanguageCode = "es"
					}
				}
			},
			Choices = new List<AccessPackageAnswerChoice>()
			{
				new AccessPackageAnswerChoice
				{
					ActualValue = "AZ",
					DisplayValue = new AccessPackageLocalizedContent
					{
						LocalizedTexts = new List<AccessPackageLocalizedText>()
						{
							new AccessPackageLocalizedText
							{
								Text = "Arizona",
								LanguageCode = "es"
							}
						}
					}
				},
				new AccessPackageAnswerChoice
				{
					ActualValue = "CA",
					DisplayValue = new AccessPackageLocalizedContent
					{
						LocalizedTexts = new List<AccessPackageLocalizedText>()
						{
							new AccessPackageLocalizedText
							{
								Text = "California",
								LanguageCode = "es"
							}
						}
					}
				}
			},
			AllowsMultipleSelection = false
		},
		new AccessPackageTextInputQuestion
		{
			IsRequired = false,
			Text = new AccessPackageLocalizedContent
			{
				DefaultText = "Who is your manager?",
				LocalizedTexts = new List<AccessPackageLocalizedText>()
				{
					new AccessPackageLocalizedText
					{
						Text = "por qué necesita acceso a este paquete",
						LanguageCode = "es"
					}
				}
			},
			IsSingleLineQuestion = false
		}
	}
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentPolicies["{accessPackageAssignmentPolicy-id}"]
	.Request()
	.PutAsync(accessPackageAssignmentPolicy);

```