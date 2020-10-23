---
title: "Microsoft Graph data connect policies and licensing"
description: "Describes what policies are supported and how to assign ISV access SKUs to organizations."
author: "tlenig"
localization_priority: Priority
ms.prod: "data-connect"
---

# Microsoft Graph data connect policies and licensing

Microsoft Graph data connect uses [Azure managed applications](/azure/managed-applications/overview) to allow you to create and deploy your solutions in your customer's Azure environment. Managed applications allow you to support certain Azure policies, giving customers greater confidence and comfortability when using your applications. Additionally, you must purchase and apply licenses from Microsoft your organization or the organizations that install your applications, in order to allow the application to access data through data connect.

## Policies

The following Azure policies are supported for an Azure managed application built using Microsoft 365 data:

- [ADLS Gen1 Encryption Required Policy](/azure/azure-policy/scripts/enforce-datalakestore-encryption)

When you select any of the policies during Azure marketplace publishing, the policy compliance status will be checked and enforced for all installations of your application. All selected policies that are compliant will be shown to the data approvers as part of the data request. Any policy compliance violation would cause the pipeline run to fail and stop the data extraction.

If you would like to request support for additional policies , let us know on [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359581).

## Licensing

Access to the Microsoft Graph data connect toolset is available through Workplace Analytics, which is licensed on a per-user, per-month basis.  Organizations with Workplace Analytics can extend their insights from Microsoft 365 data by granting and governing access to their data at scale to applications developed in-house or by independent software vendors (ISVs). To learn more, including how to purchase, visit the [Workplace Analytics product page](https://products.office.com/business/workplace-analytics).

If you’re an ISV, we also provide an option for you to build applications for customers who have not purchased Workplace Analytics. To do so, you must purchase enough licenses to associate them with all the users your application will access through Microsoft Graph data connect, for each customer who purchases your application. You can use this option along with Workplace Analytics licenses. You’ll need to take steps to associate instances of the Microsoft Graph data connect license with each of their customer installations.

### ISVs using the Microsoft Graph data connect license
If you're an ISV using the data connect license, you must utilized [Azure Key Vault](https://azure.microsoft.com/services/key-vault/) to store and process the license assignment. You will need to [create a Key Vault](/azure/key-vault/quick-create-portal). During creation, note the Key Vault URI value. It will be used in the application definition to reference the Key Vault. After you create the Key Vault, ensure that the SPN used in the Source Linked Service of the application's ARM template has access to it. To do so, go to the **Access Policies** pane of the Key Vault instance, create an access policy for the application referenced by the SPN, and assign **Get** and **List** permissions to the application. 

![Creating access policy to Key Vault](images/data-connect-keyvault-access.png)

The assignment of Microsoft Graph data connect licenses to organizations is provided as a secret in the Key Vault. To do so:
1. Go to the Key Vault and under **Generate/Import**, create a manual secret. The name of the secret must be **MGdcSKUMapping** and the value of the secret must contain the ID of the tenant and the number of licenses allocated to that tenant, in the following format.

`{"tenantId1" : 20, "tenantId2" : 35, "tenantId3" : 12}`

2. After setting the value, make sure that it is enabled and select **Create** to begin the deployment. 

![Creating the secret in Key Vault](images/data-connect-keyvault-create.png)

3. You also need to update the application's ARM template to reference the Key Vault that you created. To do so, populated the **LicenseKeyVaultUri** property, which must be populated with the **KeyVaultUri** value you noted during creation. This property is provided in the Source Linked Service of the application's ARM template, as shown. 

```
"properties": {
        "type": "Office365",
	        "description": "Source O365 linked service",
	        "typeProperties": {
	               "office365tenantId": "[subscription().tenantId]",
		"PrivacyPolicyUri": "http://www.wkw.com/privacy",
		"TermsOfUseUri": "http://www.wkw.com/tos",
		"servicePrincipalId": "[variables('sourceLinkedServicePrincipalId')]",
		"servicePrincipalKey": {
	                       "type": "SecureString",
		        "value": "[variables('sourceLinkedServicePrincipalKey')]"
		},
		"servicePrincipalTenantId": "[variables('sourceLinkedServicePrincipalTenantId')]",
	    "LicenseKeyVaultUri": "<KeyVaultUri>",
	        }
	}
```

Data connect will reference the secret in the Key Vault before each pipeline run. It will fail the pipeline if there aren't enough licenses assigned to the organization to provide data for each user, or if the Key Vault is inaccessible. 

## Next Steps
If you would like to request support for additional policies, let us know on [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359581). To learn more about Workplace Analytics, including how to purchase, visit the [Workplace Analytics product page](https://products.office.com/business/workplace-analytics).