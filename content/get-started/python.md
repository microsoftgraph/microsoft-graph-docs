# Get started with Microsoft Graph in a Python app 

This article describes the tasks required to get an access token from Azure AD and call Microsoft Graph. It walks you through building the [Microsoft Graph Connect Sample for Python](https://github.com/microsoftgraph/python3-connect-rest-sample) and explains the main concepts that you implement to use the Microsoft Graph. The article describes how to access Microsoft Graph by using direct REST calls.

![Office 365 Python Connect sample screenshot](./images/web-screenshot.png)

>
**Note** This walkthrough and the sample that it's based on use the Azure AD endpoint. Check back soon for an updated version that uses the Azure AD v2.0 endpoint.

##  Prerequisites

  * An Office 365 for business account. You can sign up for [an Office 365 Developer subscription](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account) that includes the resources that you need to start building Office 365 apps.
  * A Microsoft Azure tenant to register your application. Azure Active Directory (AD) provides identity services that applications use for authentication and authorization. A trial subscription can be acquired here: [Microsoft Azure](http://aka.ms/jjm0q7).
  * The [Office 365 Python Connect sample](https://github.com/microsoftgraph/python3-connect-rest-sample)

## Overview

To call the Microsoft Graph API, your Python app must complete the following tasks.

1. Register the application in Azure Active Directory
2. Redirect the browser to the sign in page
3. Receive an authorization code in your reply URL page
4. Request an access token from the token issuing endpoint
5. Use the access token in a request to the Microsoft Graph API 

## Register the application in Azure Active Directory

First, you need to register your application and set permissions to use Microsoft Graph. This lets users sign into the application with work or school accounts.

1.	Sign in to the [Azure Management Portal](http://aka.ms/i5b8dz) using your Microsoft Azure credentials.
2.	Choose **Active Directory** on the left menu, then choose the directory for your Office 365 developer site.
3.	On the top menu, choose **Applications**.
4.	Choose **Add** from the bottom menu.
5.	On the **What do you want to do page**, choose **Add an application my organization is developing**.
6.	On the **Tell us about your application page**, choose the **Web application and/or web API** type, and enter a name for the app.
7.	Choose the arrow icon on the lower-right corner of the page.
8.	On the **App properties** page, enter *http://127.0.0.1:8000/connect/get_token/* for the **Sign-on URL** and a unique URI for the **App ID URI**.
9.	After the application is successfully added, you'll be taken to the **Quick Start** page for the application. From there, select **Configure** in the top menu.
10. Under **keys**, choose a duration.
10.	Under **permissions to other applications**, choose **Add application**. In the dialog box, choose the **Microsoft Graph** application. After you return to the application configuration page, choose the **Send mail as a user** delegated permission.
11.	Choose **Save** in the bottom menu.
12.	Copy the **Client ID** and the **key** values that are specified on the **Configure** page.

For more information, see the section [Register your web server app with the Azure Management Portal](https://msdn.microsoft.com/en-us/office/office365/HowTo/add-common-consent-manually#bk_RegisterServerApp).

<!--<a name="redirect"></a>-->
## Redirect the browser to the sign in page

Your app needs to redirect the browser to the sign in page to begin the OAuth flow and get an authorization code. 

In the Connect sample, the following code (located in [*connect/auth_helper.py*](https://github.com/microsoftgraph/python3-connect-rest-sample/blob/master/connect/auth_helper.py)) builds the URL that the app needs to redirect the user to and is piped to the view where it can be used for redirection. 

```python
# This function creates the signin URL that the app will
# direct the user to in order to sign in to Office 365 and
# give the app consent.
def get_signin_url(redirect_uri):
  # Build the query parameters for the signin URL.
  params = { 'client_id': client_id,
             'redirect_uri': redirect_uri,
             'response_type': 'code'
           }

  authorize_url = '{0}{1}'.format(authority, '/common/oauth2/authorize?{0}')
  signin_url = authorize_url.format(urlencode(params))
  return signin_url
```

<!--<a name="authCode"></a>-->
## Receive an authorization code in your reply URL page

After the user signs in, the browser is redirected to your reply URL, the ```get_token``` function in [*connect/views.py*](https://github.com/microsoftgraph/python3-connect-rest-sample/blob/master/connect/views.py), with an authorization code appended to the query string as the ```code``` variable. 

The Connect sample gets the code from the query string so it can then exchange it for an access token.

```python
auth_code = request.GET['code']
```

<!--<a name="accessToken"></a>-->
## Request an access token from the token issuing endpoint

Once you have the authorization code, you can use it along the client ID, key, and reply URL values that you got from Azure Active Directory to request an access token. 

> **Note** The request must also specify a resource that you are trying to consume. In the case of Microsoft Graph, the resource value is `https://graph.microsoft.com`.

The Connect sample requests a token in the ```get_token_from_code``` function in the [*connect/auth_helper.py*](https://github.com/microsoftgraph/python3-connect-rest-sample/blob/master/connect/auth_helper.py) file.

```python
# This function passes the authorization code to the token
# issuing endpoint, gets the token, and then returns it.
def get_token_from_code(auth_code, redirect_uri):
  # Build the post form for the token request
  post_data = { 'grant_type': 'authorization_code',
                'code': auth_code,
                'redirect_uri': redirect_uri,
                'client_id': client_id,
                'client_secret': client_secret,
                'resource': 'https://graph.microsoft.com'
              }
              
  r = requests.post(token_url, data = post_data)
  
  try:
    return r.json()
  except:
    return 'Error retrieving token: {0} - {1}'.format(r.status_code, r.text)
```

> **Note** The response provides more information than just the access token. For example, your app can get a refresh token to request new access tokens without having the user explicitly sign in again.

<!--<a name="request"></a>-->
## Use the access token in a request to the Microsoft Graph API

With an access token, your app can make authenticated requests to the Microsoft Graph API. Your app must append the access token to the **Authorization** header of each request.

The Connect sample sends an email using the ```me/microsoft.graph.sendMail``` endpoint in the Microsoft Graph API. The code is in the ```call_sendMail_endpoint``` function in the [*connect/graph_service.py*](https://github.com/microsoftgraph/python3-connect-rest-sample/blob/master/connect/graph_service.py) file. This is the code that shows how to append the access code to the Authorization header.

```python
# Set request headers.
headers = { 
  'User-Agent' : 'python_tutorial/1.0',
  'Authorization' : 'Bearer {0}'.format(access_token),
  'Accept' : 'application/json',
  'Content-Type' : 'application/json'
}
```

> **Note** The request must also send a **Content-Type** header with a value accepted by the Graph API, for example, `application/json`.

The Microsoft Graph API is a very powerful, unifiying API that can be used to interact with all kinds of Microsoft data. Check out the API reference to explore what else you can accomplish with Microsoft Graph.