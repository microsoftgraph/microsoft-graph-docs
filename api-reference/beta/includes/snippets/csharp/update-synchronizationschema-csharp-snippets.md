---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var synchronizationSchema = new SynchronizationSchema
{
	Directories = new List<DirectoryDefinition>()
	{
		new DirectoryDefinition
		{
			Name = "Azure Active Directory",
			Objects = new List<ObjectDefinition>()
			{
				new ObjectDefinition
				{
					Name = "User",
					Attributes = new List<AttributeDefinition>()
					{
						new AttributeDefinition
						{
							Name = "userPrincipalName",
							Type = AttributeType.String
						}
					}
				}
			}
		},
		new DirectoryDefinition
		{
			Name = "Salesforce"
		}
	},
	SynchronizationRules = new List<SynchronizationRule>()
	{
		new SynchronizationRule
		{
			Name = "USER_TO_USER",
			SourceDirectoryName = "Azure Active Directory",
			TargetDirectoryName = "Salesforce",
			ObjectMappings = new List<ObjectMapping>()
			{
				new ObjectMapping
				{
					SourceObjectName = "User",
					TargetObjectName = "User",
					AttributeMappings = new List<AttributeMapping>()
					{
						new AttributeMapping
						{
							Source = new AttributeMappingSource
							{
							},
							TargetAttributeName = "userName"
						}
					}
				}
			}
		}
	}
};

await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"].Schema
	.Request()
	.PutAsync(synchronizationSchema);

```