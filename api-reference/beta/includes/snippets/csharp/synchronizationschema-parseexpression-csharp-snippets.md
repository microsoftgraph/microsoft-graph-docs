---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var expression = "Replace([preferredLanguage], "-", , , "_", ,  )";

var targetAttributeDefinition = ;

var testInputObject = new ExpressionInputObject
{
	Definition = null,
	Properties = new List<StringKeyObjectValuePair>()
	{
		new StringKeyObjectValuePair
		{
			Key = "objectId",
			Value = "66E4A8CC-1B7B-435E-95F8-F06CEA133828"
		},
		new StringKeyObjectValuePair
		{
			Key = "IsSoftDeleted",
			Value = "false"
		},
		new StringKeyObjectValuePair
		{
			Key = "accountEnabled",
			Value = "true"
		},
		new StringKeyObjectValuePair
		{
			Key = "streetAddress",
			Value = "1 Redmond Way"
		},
		new StringKeyObjectValuePair
		{
			Key = "city",
			Value = "Redmond"
		},
		new StringKeyObjectValuePair
		{
			Key = "state",
			Value = "WA"
		},
		new StringKeyObjectValuePair
		{
			Key = "postalCode",
			Value = "98052"
		},
		new StringKeyObjectValuePair
		{
			Key = "country",
			Value = "USA"
		},
		new StringKeyObjectValuePair
		{
			Key = "department",
			Value = "Sales"
		},
		new StringKeyObjectValuePair
		{
			Key = "displayName",
			Value = "John Smith"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute1",
			Value = "Sample 1"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute2",
			Value = "Sample 2"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute3",
			Value = "Sample 3"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute4",
			Value = "Sample 4"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute5",
			Value = "Sample 5"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute6",
			Value = "Sample 6"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute7",
			Value = "Sample 1"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute8",
			Value = "Sample 1"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute9",
			Value = "Sample 1"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute10",
			Value = "Sample 1"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute11",
			Value = "Sample 1"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute12",
			Value = "Sample 1"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute13",
			Value = "Sample 1"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute14",
			Value = "Sample 1"
		},
		new StringKeyObjectValuePair
		{
			Key = "extensionAttribute15",
			Value = "Sample 1"
		},
		new StringKeyObjectValuePair
		{
			Key = "givenName",
			Value = "John"
		},
		new StringKeyObjectValuePair
		{
			Key = "jobTitle",
			Value = "Finance manager"
		},
		new StringKeyObjectValuePair
		{
			Key = "mail",
			Value = "johns@contoso.com"
		},
		new StringKeyObjectValuePair
		{
			Key = "mailNickname",
			Value = "johns"
		},
		new StringKeyObjectValuePair
		{
			Key = "manager",
			Value = "maxs@contoso.com"
		},
		new StringKeyObjectValuePair
		{
			Key = "mobile",
			Value = "425-555-0010"
		},
		new StringKeyObjectValuePair
		{
			Key = "onPremisesSecurityIdentifier",
			Value = "66E4A8CC-1B7B-435E-95F8-F06CEA133828"
		},
		new StringKeyObjectValuePair
		{
			Key = "passwordProfile.password",
			Value = ""
		},
		new StringKeyObjectValuePair
		{
			Key = "physicalDeliveryOfficeName",
			Value = "Main Office"
		},
		new StringKeyObjectValuePair
		{
			Key = "preferredLanguage",
			Value = "EN-US"
		},
		new StringKeyObjectValuePair
		{
			Key = "proxyAddresses",
			Value = ""
		},
		new StringKeyObjectValuePair
		{
			Key = "surname",
			Value = "Smith"
		},
		new StringKeyObjectValuePair
		{
			Key = "telephoneNumber",
			Value = "425-555-0011"
		},
		new StringKeyObjectValuePair
		{
			Key = "userPrincipalName",
			Value = "johns@contoso.com"
		},
		new StringKeyObjectValuePair
		{
			Key = "appRoleAssignments",
			AdditionalData = new Dictionary<string, object>()
			{
				{"value@odata.type","#Collection(String)"}
			},
			Value = new List<String>()
			{
				"Default Assignment"
			}
		}
	}
};

await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{id}"].Schema
	.ParseExpression(expression,testInputObject,targetAttributeDefinition)
	.Request()
	.PostAsync();

```