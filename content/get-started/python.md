# Get started with Microsoft Graph in a Python app 

This article describes the tasks required to get an access token from Azure AD and call Microsoft Graph. It walks you through the [Microsoft Graph Connect Sample for Python](https://github.com/microsoftgraph/python3-connect-rest-sample) and explains the main concepts that you implement to use the Microsoft Graph API. The article describes how to access Microsoft Graph by using direct REST calls.

![Office 365 Python Connect sample screenshot](./images/web-screenshot.png)

> **Note** This walkthrough and the sample that it's based on use the Azure AD endpoint. Check back soon for updated versions that use the Azure AD v2.0 endpoint.

##  Prerequisites

  * An Office 365 for business account. You can sign up for [an Office 365 Developer subscription](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account) that includes the resources that you need to start building Office 365 apps.
  * The [Microsoft Graph Connect Sample for Python](https://github.com/microsoftgraph/python3-connect-rest-sample)

## Register the application in Azure Active Directory

First, you need to register your application and set permissions to use Microsoft Graph. This lets users sign into the application with work or school accounts.

1. Sign in to the [Azure portal](https://portal.azure.com/).
2. On the top bar, click on your account and under the **Directory** list, choose the Active Directory tenant where you wish to register your application.
3. Click on **More Services** in the left hand nav, and choose **Azure Active Directory**.
4. Click on **App registrations** and choose **Add**.
5. Enter a friendly name for the application, for example 'MSGraphConnectPython' and select 'Web app/API' as the **Application Type**. For the Sign-on URL, enter ‘http://127.0.0.1:8000/connect/get_token/’. Click on **Create** to create the application.
6. While still in the Azure portal, choose your application, click on **Settings** and choose **Properties**.
7. Find the Application ID value and copy it to the clipboard.
8. Configure Permissions for your application:
9. In the **Settings** menu, choose the **Required permissions** section, click on **Add**, then **Select an API**, and select **Microsoft Graph**.
10. Then, click on Select Permissions and select **Sign in and read user profile** and **Send mail as a user**. Click **Select** and then **Done**.
11. In the **Settings** menu, choose the **Keys** section. Enter a description and select a duration for the key. Click **Save**.
12. **Important**: Copy the key value. You won't be able to access this value again once you leave this pane. You will use this value as your app secret.

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