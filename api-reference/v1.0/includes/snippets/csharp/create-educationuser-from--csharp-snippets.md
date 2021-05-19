---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = new EducationUser
{
	PrimaryRole = EducationUserRole.Student,
	MiddleName = "String",
	ExternalSource = EducationExternalSource.Sis,
	ExternalSourceDetail = "String",
	ResidenceAddress = new PhysicalAddress
	{
	},
	MailingAddress = new PhysicalAddress
	{
	},
	Student = new EducationStudent
	{
	},
	Teacher = new EducationTeacher
	{
	},
	CreatedBy = new IdentitySet
	{
	},
	AccountEnabled = false,
	AssignedLicenses = new List<AssignedLicense>()
	{
		new AssignedLicense
		{
		}
	},
	AssignedPlans = new List<AssignedPlan>()
	{
		new AssignedPlan
		{
		}
	},
	BusinessPhones = new List<String>()
	{
		"String"
	},
	Department = "String",
	DisplayName = "String",
	GivenName = "String",
	Mail = "String",
	MailNickname = "String",
	MobilePhone = "String",
	PasswordPolicies = "String",
	PasswordProfile = new PasswordProfile
	{
	},
	OfficeLocation = "String",
	PreferredLanguage = "String",
	ProvisionedPlans = new List<ProvisionedPlan>()
	{
		new ProvisionedPlan
		{
		}
	},
	RefreshTokensValidFromDateTime = DateTimeOffset.Parse("String (timestamp)"),
	ShowInAddressList = false,
	Surname = "String",
	UsageLocation = "String",
	UserPrincipalName = "String",
	UserType = "String",
	OnPremisesInfo = new EducationOnPremisesInfo
	{
	}
};

await graphClient.Education.Users
	.Request()
	.AddAsync(educationUser);

```