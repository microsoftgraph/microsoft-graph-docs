# Get started with Managed Access to Microsoft Graph

Before using Managed Access to Microsoft Graph, an Office 365 administrator must take two actions, both of which enable the ability for the admin to control data movement through Privileged Access Management (PAM). 

1. Give consent to opt-in to Managed Access and allow data movement requests to Azure (i.e. keep full control over the data, but allow Azure resources to access it)
2. Set an approver group within the Office 365 subscription. The approver group will be tasked with approving specific requests for access to data. 

Complete the following steps to enable Managed Access in your environment: 
1.	Go to https://portal.office.com/adminportal/home#/groups and log in with an administrator account in your organization
2.	Click "Add a group"
3.	Select "Mail-enabled security"
4.	Enter a name for the group (E.g. Privileged Access Management approver group)
5.	Enter an email address for the group (E.g. approvers@contoso.com)
6.	Click "Save"
7.	Go to https://portal.office.com/adminportal/home#/Settings/ServicesAndAddIns 
8.	Open "Managed Access to Microsoft Graph in Microsoft Azure Preview" 
9.	Flip the switch to "On"
10.	Enter a mail enabled security group (E.g. approvers@contoso.com) under "Group of users to make approval decisions"
11.	Click "Save"
12.	Wait until the settings update confirmation message is displayed (E.g. "Managed Access to Microsoft Graph in Microsoft Azure settings have been updated.")

## Next steps
Congratulations! You are now ready to start building intelligent applications with Azure tooling. Visit our [public GitHub](https://github.com/OfficeDev/ManagedAccessMSGraph/wiki) for a sample application and additional documentation. Happy coding, we are excited to see what you build!
