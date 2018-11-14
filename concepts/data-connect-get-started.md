# Get started with Microsoft Graph data connect (preview)

Before you can use Microsoft Graph data connect, an Office 365 administrator must take two actions, both of which enable the ability for the admin to control data movement through Privileged Access Management (PAM). 

1. Give consent to opt-in to Managed Access and allow data movement requests to Microsoft Azure (that is, keep full control over the data, but allow Azure resources to access it). No data is transferred unless approval is provided.
2. Set an approver group within the Office 365 subscription. The approver group will be tasked with approving specific requests for access to data. 

Complete the following steps to enable Microsoft Graph data connect in your environment: 

1.	Go to the [Home > Groups](https://portal.office.com/adminportal/home#/groups) page in the Microsoft 365 admin center, and sign in with an administrator account in your organization.
2.	Choose **Add a group**.
3.	Select **Mail-enabled security**.
4.	Enter a name for the group (for example, Privileged Access Management approver group).
5.	Enter an email address for the group (for example, approvers@contoso.com).
6.	Choose **Add**.
7.	Go to [Home > Services & add-ins](https://portal.office.com/adminportal/home#/Settings/ServicesAndAddIns) in the Microsoft 365 admin center.
8.	Open **Microsoft Graph data connect preview**.
9.	Flip the switch to **On**.
10.	Under **Group of users to make approval decisions**, enter an alias for a mail-enabled security group (for example, approvers for approvers@contoso.com).
11.	Choose **Save**.
12.	Wait until the settings update confirmation message is displayed: Microsoft Graph data connect preview settings have been updated.

## Next steps
Congratulations! You are now ready to start building intelligent applications with Azure tooling. For a sample application and additional documentation, see the [Microsoft Graph data connect GitHub repo](https://github.com/OfficeDev/MS-Graph-Data-Connect/wiki). 