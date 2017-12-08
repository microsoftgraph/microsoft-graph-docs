# Configure synchronization with directory extension attributes

This tutorial will guide you through customizing your synchronization schema to include Azure AD directory extension attributes.

## Scenario

You have AD Connect setup to provision a number of directory extension attributes from AD-on-premises to Azure AD. You are setting up provisioning from Azure AD to Salesforce, and you want to use one of the directory extension attributes (i.e. **extension_9d98asdfl15980a_Nickname**) to populate the value of User.CommunityNickname in Salesforce. You can achieve that using the API.

Assuming that you already added an application which supports provisioning to your tenant through the Azure Portal. You know the application display name (the one shown in the portal), and you have an authorization token for Microsoft Graph. For information on how to obtain authorization token, see [Synchronization API quick start](synchronization_howto_api_quickstart.md)

## Find service principal by display name

You are interested in the one named "Salesforce Sandbox":

```http
GET https://graph.microsoft.com/beta/servicePrincipals?$select=id,appId,displayName&$filter=startswith(displayName, 'salesforce')
Authorization: Bearer {Token}
```

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals(id,appId,displayName)",
    "value": [
    {
        "id": "167e33e9-f80e-490e-b4d8-698d4a80fb3e",
        "appId": "cd3ed3de-93ee-400b-8b19-b61ef44a0f29",
        "displayName": "Salesforce"
    },
    {
        "id": "8cbbb70b-7290-42da-83ee-89fa3517a977",
        "appId": "b0f2e3b1-fe31-4658-b216-44dcaeabb63a",
        "displayName": "salesforce 1"
    },
    {
        "id": "60443998-8cf7-4e61-b05c-a53b658cb5e1",
        "appId": "79079396-c301-405d-900f-e2e0c2439a90",
        "displayName": "Salesforce Sandbox"
    }
    ]
}
```

Your {servicePrincipalId} is "60443998-8cf7-4e61-b05c-a53b658cb5e1"

## List synchronization jobs in the context of the service principal 

Generally, you expect to see only one - this will give us jobId of the task you need to work with

```http
GET https://graph.microsoft.com/beta/servicePrincipals/60443998-8cf7-4e61-b05c-a53b658cb5e1/synchronization/jobs
Authorization: Bearer {Token}
```

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals('60443998-8cf7-4e61-b05c-a53b658cb5e1')/synchronization/jobs",
    "value": [
        {
            "id": "SfSandboxOutDelta.e4bbf44533ea4eabb17027f3a92e92aa",
            "templateId": "SfSandboxOutDelta",
            "schedule": {},
            "status": {}
    }
    ]
}
```

Our {jobId} is "SfSandboxOutDelta.e4bbf44533ea4eabb17027f3a92e92aa"

## Find exact name of the directory extension attribute you need

You'll need full name of the extension attribute to perform next steps. If you don't know the full name (which should look similar to **extension_9d98asdfl15980a_Nickname**), see following  information regarding directory extension attributes and how to inspect them: 
* [Extending the Azure AD directory schema with custom properties](https://azure.microsoft.com/en-us/resources/samples/active-directory-dotnet-graphapi-directoryextensions-web/)
* [Directory schema extensions | Graph API concepts](https://msdn.microsoft.com/en-us/library/azure/ad/graph/howto/azure-ad-graph-api-directory_schema_extensions)


## Retrieve effective synchronization schema
```http
    GET https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalId}/synchronization/jobs/{jobId}/schema
    Authorization: Bearer {Token}
```
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned in an actual call.

```http
HTTP/1.1 200 OK

{
  "directories": [
	    {
		      "id": "66e4a8cc-1b7b-435e-95f8-f06cea133828",
		      "name": "Azure Active Directory",
		      "objects": [
			    {
		            "attributes": [
			            {
			              "anchor": true,
			              "caseExact": false,
			              "defaultValue": null,
			              "metadata": [],
			              "multivalued": false,
			              "mutability": "ReadWrite",
			              "name": "objectId",
			              "required": false,
			              "referencedObjects": [],
			              "type": "String"
			            },
			            {
			              "anchor": false,
			              "caseExact": false,
			              "defaultValue": null,
			              "metadata": [],
			              "multivalued": false,
			              "mutability": "ReadWrite",
			              "name": "streetAddress",
			              "required": false,
			              "referencedObjects": [],
			              "type": "String"
			            }
					],
					"name": "User"
				}
			 ]
		},
		{
		      "id": "8ffa6169-f354-4751-9b77-9c00765be92d",
		      "name": "salesforce.com",
		      "objects": []
		}
  ],
 "synchronizationRules": [
	    {
	      "editable": true,
	      "id": "4c5ecfa1-a072-4460-b1c3-4adde3479854",
	      "name": "USER_OUTBOUND_USER",
	      "objectMappings": [
		        {
			        "attributeMappings": [
				            {
				              "defaultValue": "True",
				              "exportMissingReferences": false,
				              "flowBehavior": "FlowWhenChanged",
				              "flowType": "Always",
				              "matchingPriority": 0,
				              "source": {
				                "expression": "Not([IsSoftDeleted])",
				                "name": "Not",
				                "parameters": [
				                  {
				                    "key": "source",
				                    "value": {
				                      "expression": "[IsSoftDeleted]",
				                      "name": "IsSoftDeleted",
				                      "parameters": [],
				                      "type": "Attribute"
				                    }
				                  }
				                ],
				                "type": "Function"
				              },
				              "targetAttributeName": "IsActive"
				            }
			         ],
			        "enabled": true,
			        "flowTypes": "Add, Update, Delete",
			        "name": "Synchronize Azure Active Directory Users to salesforce.com",
			        "scope": null,
			        "sourceObjectName": "User",
			        "targetObjectName": "User"
			}]
		}]
}
```

## Add attribute definition for the directory extension attribute, and a mapping between the attributes

Using text editor of your choice (i.e. http://www.jsoneditoronline.org/, Notepad++, etc) you need to:

1. Add attribute definition for extension_9d98asdfl15980a_Nickname attribute. 
    - Under directories, find directory with the name "Azure Active Directory", and in the objects array find the one named "User".
    - Add new attribute to the list, specifying minimal information (name and type) - see example below

2. Add attribute mapping between extension_9d98asdfl15980a_Nickname and CommunityNickname
    - Under synchronizationRules, find the rule which has Azure AD as source directory, and Salesforce.com as target directory ( "sourceDirectoryName": "Azure Active Directory",   "targetDirectoryName": "salesforce.com")
    - In objectMappings of the rule, find mapping between users ("sourceObjectName": "User",   "targetObjectName": "User")
    - In the attributeMappings array of the objectMapping, add a new entry, specifying minimal information as show in the example

    ```json
    {
        "directories": [
            {
                "id": "66e4a8cc-1b7b-435e-95f8-f06cea133828",
                "name": "Azure Active Directory",
                "objects": [
                    {
                        "attributes": [
                                ,{
                                "name": "extension_9d98asdfl15980a_Nickname",
                                "type": "String"
                                }
                        ],
                        "name":"User"
                    }]
            }
        ],
        "synchronizationRules": [
            {
            "editable": true,
            "id": "4c5ecfa1-a072-4460-b1c3-4adde3479854",
            "metadata": [..],
            "name": "USER_OUTBOUND_USER",
            "objectMappings": [
                {
                    "attributeMappings": [
                    ,{
                        "source": {
                            "name": "extension_9d98asdfl15980a_Nickname",
                            "type": "Attribute"
                        },
                        "targetAttributeName": "CommunityNickname"
                        }
                ],
                "name": "Synchronize Azure Active Directory Users to salesforce.com",
                    "scope": null,
                    "sourceObjectName": "User",
                    "targetObjectName": "User"
                }
            ],
            "priority": 1,
            "sourceDirectoryName": "Azure Active Directory",
            "targetDirectoryName": "salesforce.com"
            },
        ]
    }
    ```

## Save modified schema

Make sure you supply entire schema object, including all the unmodified parts, as this request will replace existing schema with the one provided.

```http
PUT https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalId}/synchronization/jobs/{jobId}/schema
Authorization: Bearer {Token}
{
    "directories": [],
    "synchronizationRules": []
}

HTTP/1.1 201 No Content
```

## Observe the results

If schema was saved successfully, on the next iteration of the synchronization job, it will start re-processing all the accounts in your Azure Active Directory, so that new mappings are applied to all provisioned accounts
