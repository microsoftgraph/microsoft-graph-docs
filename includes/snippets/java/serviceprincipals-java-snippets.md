---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ClaimsMappingPolicy claimsMappingPolicy = new ClaimsMappingPolicy();
LinkedList<String> definitionList = new LinkedList<String>();
definitionList.add("{"ClaimsMappingPolicy": {
                "Version": 1,
                "IncludeBasicClaimSet": "true",
                "ClaimsSchema": [
                    {
                        "Source": "user",
                        "ID": "assignedroles",
                        "SamlClaimType": "https://aws.amazon.com/SAML/Attributes/Role"
                    },
                    {
                        "Source": "user",
                        "ID": "userprincipalname",
                        "SamlClaimType": "https://aws.amazon.com/SAML/Attributes/RoleSessionName"
                    },
                    {
                        "Source": "user",
                        "ID": "900",
                        "SamlClaimType": "https://aws.amazon.com/SAML/Attributes/SessionDuration"
                    },
                    {
                        "Source": "user",
                        "ID": "assignedroles",
                        "SamlClaimType": "appRoles"
                    },
                    {
                        "Source": "user",
                        "ID": "userprincipalname",
                        "SamlClaimType": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier"
                    }
                ]
            }
        }");
claimsMappingPolicy.definition = definitionList;
claimsMappingPolicy.displayName = "AWS Claims policy";
claimsMappingPolicy.isOrganizationDefault = false;

graphClient.policies().claimsMappingPolicies()
	.buildRequest()
	.post(claimsMappingPolicy);

```