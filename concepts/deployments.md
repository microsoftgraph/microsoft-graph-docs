# Sovereign cloud deployments


This article provides information about the different sovereign cloud instances of Microsoft Graph and the capabilities that are available to developers. The usage scenarios for sovereign include but not limited to requirements imposed for locality of the data due to regulations.


## Microsoft Graph operated by 21Vianet in China

This section provides information about Microsoft Graph operated by 21Vianet, and the capabilities that are available to developers. 

### Service root endpoints
| Microsoft Graph operated by 21Vianet | Microsoft Graph|
|---------------------------|----------------|
| https://microsoftgraph.chinacloudapi.cn | https://graph.microsoft.com|

### Microsoft Graph Explorer
| Microsoft Graph operated by 21Vianet | Microsoft Graph|
|---------------------------|----------------|
|https://graph.microsoft.io/zh-cn/graph-explorer| https://graphexplorer2.azurewebsites.net|

### Azure OpenID Connect and OAuth2.0
The endpoints used to acquire tokens for sign-in or to call Microsoft Graph operated by 21Vianet differ from those of other offerings. 

| Microsoft Graph operated by 21Vianet | Microsoft Graph|
|---------------------------|----------------|
| https://login.chinacloudapi.cn | https://login.microsoftonline.com|
 
Use https://login.chinacloudapi.cn/common/oauth2/authorize to authenticate the user and https://login.chinacloudapi.cn/common/oauth2/token to acquire a token for your app to call Microsoft Graph operated by 21Vianet.

> **Note:** The latest [v2.0 authorization and token endpoints](https://azure.microsoft.com/en-us/documentation/articles/active-directory-appmodel-v2-overview/) are NOT available for use with Microsoft Graph operated by 21Vianet. 

>Apps can only access organizational data and not consumer data via the **https://microsoftgraph.chinacloudapi.cn** endpoint. Apps should use the **https://graph.microsoft.com** endpoint to access consumer data.

### Service capabilities offered by Microsoft Graph operated by 21Vianet
The following Microsoft Graph features are generally available (on the `/v1.0` endpoint):

* Users
* Groups
* Files
* Mail
* Calendar
* Personal Contacts 
* Create, read, update, and delete (CRUD) operations
* Cross-origin resource sharing (CORS) support.

The following Microsoft Graph features are also available in preview (on the `/beta` endpoint):

* Organizational Contacts
* Applications
* Service Principals
* Directory schema extensions
* Webhooks
