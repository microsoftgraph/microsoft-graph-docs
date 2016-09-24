# Use REST API to access mailboxes in Exchange hybrid deployments (preview)

Up until September 2016, the Microsoft Graph API has been able to provide access to only customer mailboxes in the cloud on Exchange Online, as part of Office 365.
Exchange 2016 Cumulative Update 3 (CU3) includes support for REST API integration with Office 365. For Microsoft Graph app developers, 
this means a seamless authentication and application experience regardless of customer mailbox location in the hybrid deployment, online or on-premises. 
Apps can now access v1.0 of the Microsoft Graph [Mail](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/message), [Calendar](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/calendar) and [Contacts](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/contact) API. 

Beneath the covers, when Microsoft Graph identifies a REST API call is attempting to access an on-premises mailbox in a hybrid deployment, it redirects the REST 
request to an on-premises REST endpoint to continue processing the request. This discovery makes REST API support possible, and is only available if 
you use the https://graph.microsoft.com/v1.0 REST API endpoint.

At this point, the capability to use v1.0 REST API to access mailboxes in a hybrid deployment is only in preview. Among other v1.0 API, 
the [Groups](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/group) API is not yet supported for mailboxes in such deployments. 
Versions other than v1.0 are not supported either. You will get the following error if you attempt to use the REST API on an unsupported mailbox, 
or, if you attempt to use APIs other than the supported sets (v1.0 of Mail, Calendar or Contacts) on a hybrid deployment:

"REST APIs for this mailbox are currently in preview. You can find more information about the preview REST APIs at https://dev.outlook.com."

The advantages of Microsoft Graph REST API are openness (e.g., open standards support like JSON, OAUTH and ODATA, connecting from most popluar platforms)
and flexibility (e.g., granular, tightly scoped permissions to access user data). 
If your organization is interested in enabling such app development and is currently in or considering a hybrid deployment, please be aware of the following deployment requirements:

- Mailbox requirements

  - All on-premises mailboxes that will utilize the REST APIs must be located on databases residing on Exchange 2016 servers. 

- Infrastructure requirements

  - All Exchange 2016 servers must be upgraded to CU3 or later.  
  - On-premises Active Directory must synchronize with Azure Active Directory.
  - Any Exchange 2013 servers coexisting in the same load balanced array with Exchange 2016 servers must be removed from the array.

- Networking requirements

  - From a DNS perspective, the Autodiscover namespace and on-premises client namespace must have Internet DNS records. 
  - If you have a firewall or application gateway that inspects and restricts access, update the appropriate settings to allow discovery and access.


IT administrators can find more information below:

- [Exchange Server Hybrid Deployments](https://technet.microsoft.com/en-us/library/jj200581(v=exchg.150).aspx)
- [September 2016 Cumulative Update Release](https://blogs.technet.microsoft.com/exchange/2016/09/20/released-september-2016-quarterly-exchange-updates/) 