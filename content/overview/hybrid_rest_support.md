# Use REST APIs to access mailboxes in Exchange hybrid deployments (preview)

Previously, Microsoft Graph provided access to customer mailboxes in Exchange Online as part of Office 365 only.
Exchange 2016 Cumulative Update 3 (CU3), released in September 2016, includes support for REST API integration with Office 365. For Microsoft Graph app developers, 
this means a seamless authentication and application experience, regardless of whether customer mailboxes in a hybrid deployment are  online or on-premises. 

Microsoft Graph apps can now access [Mail](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/message), [Calendar](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/calendar), and [Contacts](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/contact) APIs in the Microsoft Graph v1.0 endpoint. When Microsoft Graph identifies that a REST API call is attempting to access an on-premises mailbox in a hybrid deployment, it proxies the REST 
request to an on-premises REST endpoint. This discovery makes REST API support possible.

>**Note:** Some APIs that are available in the Microsoft Graph v1.0 endpoint, such as [Groups](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/group), are not supported for mailboxes in hybrid deployments. If you use an API or an endpoint that is not supported, you will get the following error message:

>"REST APIs for this mailbox are currently in preview. You can find more information about the preview REST APIs at https://dev.outlook.com."


Microsoft Graph provides openness (open standards support like JSON, OAUTH and ODATA, connecting from most popluar platforms)
and flexibility (granular, tightly scoped permissions to access user data). 
If your organization is interested in enabling Microsoft Graph app development and is currently in or considering a hybrid deployment, be aware of the following deployment requirements:

- Mailbox requirements

  - All on-premises mailboxes that will use the REST APIs must be located on databases located on Exchange 2016 CU3 servers. 

- Infrastructure requirements

  - All Exchange 2016 servers must be upgraded to CU3 or later.  
  - On-premises Active Directory must synchronize with Azure Active Directory.
  - Any Exchange 2013 servers coexisting in the same load-balanced array with Exchange 2016 servers must be removed from the array.

- Networking requirements

  - From a DNS perspective, the Autodiscover namespace and on-premises client namespace must have Internet DNS records. 
  - If you have a firewall or application gateway that inspects and restricts access, update the appropriate settings to allow discovery and access.


For more information for IT administrators, see:

- [Exchange Server Hybrid Deployments](https://technet.microsoft.com/en-us/library/jj200581(v=exchg.150).aspx)
- [September 2016 Cumulative Update Release](https://blogs.technet.microsoft.com/exchange/2016/09/20/released-september-2016-quarterly-exchange-updates/) 
