# Use Microsoft Graph to access Excel in a Python app

You can use the Microsoft Graph API to read and update workbooks stored in supported online storage platforms including, OneDrive and SharePoint. The `Workbook` (or Excel file) resource contains all the other Excel resources and your app can access them via simple navigations. 

You can access a set of Excel objects (such as Table, Range, or Chart) by using standard REST APIs to perform create, read, update, and delete (CRUD) operations on the workbook. For example, 
`https://graph.microsoft.com/{version}/me/drive/items/{id}/workbook/`  
returns a collection of worksheet objects that are part of the workbook.    

This walkthrough describes how to make requests to the Excel REST API from a Python web app. 

##  Prerequisites

* [Python 3.5.2](https://www.python.org/downloads/)
* [Flask-OAuthlib](https://github.com/lepture/flask-oauthlib)
* A [work or school account](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account)<!-- This link target doesn't match the link title. Please verify that this is what you want to link to and update the text, or update the URL as appropriate. -->


## Authorization and scopes
You can use the [Azure AD v2.0 endpoint](https://graph.microsoft.io/en-us/docs/concepts/converged_auth) to authenticate Excel REST API calls. All APIs require the `Authorization: Bearer {access-token}` HTTP header.   
  
One of the following [permission scopes](https://graph.microsoft.io/en-us/docs/concepts/permissions_reference) is required to use the Excel resource:

* Files.Read 
* Files.ReadWrite

## Sessions and persistence

Excel APIs can be called in one of two modes: 

1. Persistent session - All changes made to the workbook are persisted (saved). This is the usual mode of operation. 
2. Non-persistent session - Changes made by the API are not saved to the source location. Instead, the Excel backend server keeps a temporary copy of the file that reflects the changes made during that particular API session. When the Excel session expires, the changes are lost. This mode is useful for apps that need to do analysis or obtain the results of a calculation or a chart image, but not affect the document state.   

To represent the session in the API, use the `workbook-session-id: {session-id}` header. 

## Register the application in Azure Active Directory

First, you need to register your application and set permissions to use Microsoft Graph. This lets users sign in to the application with work or school accounts.

### Register the application

Register an app on the Microsoft App Registration Portal. This generates the app ID and password that you'll use to configure the app for authentication.

1. Sign in to the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.

2. Choose **Add an app**.

3. Enter a name for the app, and choose **Create application**.

	The registration page displays, listing the properties of your app.

4. Copy the application ID. This is the unique identifier for your app.

5. Under **Application Secrets**, choose **Generate New Password**. Copy the app secret from the **New password generated** dialog box.

	You'll use the application ID and app secret to configure the app.

6. Under **Platforms**, choose **Add platform** > **Web**.

7. Make sure the **Allow Implicit Flow** check box is selected, and enter your app's Redirect URI.

	The **Allow Implicit Flow** option enables the OpenID Connect hybrid flow. During authentication, this enables the app to receive both sign-in information (the **id_token**) and artifacts (in this case, an authorization code) that the app uses to obtain an access token.

8. Choose **Save**.

### Create OAuth client

Your app needs to register an instance of the Flask-OAuth client that you'll use to start the OAuth flow and get an access token. Note that the *Files.ReadWrite* scope is required to obtain an Excel session that supports persisted changes.

```python
	# Put your consumer key and consumer secret into a config file
	# and don't check it into github!
	microsoft = oauth.remote_app(
		'microsoft',
		consumer_key = client_id,
		consumer_secret = client_secret,
		request_token_params = {'scope': 'User.Read Files.ReadWrite'},
		base_url = 'https://graph.microsoft.com/v1.0/',
		request_token_url = None,
		access_token_method = 'POST',
		access_token_url = 'https://login.microsoftonline.com/common/oauth2/v2.0/token',
		authorize_url = 'https://login.microsoftonline.com/common/oauth2/v2.0/authorize'
	)
```

### Receive an authorization code in your reply URL page

After the user signs in, the browser is redirected to your reply URL. Upon successful authorization, the access token (which will be used to authorize additional requests) will be returned in the response body. 

```python
	@app.route('/login/authorized')
	def authorized():
		response = microsoft.authorized_response()
		if response is None:
			return "Access Denied: Reason=%s\nError=%s" % (
				request.args['error'], 
				request.args['error_description']
			)
	
		# Check response for state
		if str(session['state']) != str(request.args['state']):
			raise Exception('State has been messed with, end authentication')
		# Remove state session variable to prevent reuse.
		session['state'] = ""
			
		# Okay to store this in a local variable, encrypt if it's going to client
		# machine or database. Treat as a password. 
		session['microsoft_token'] = (response['access_token'], '')
		# Store the token in another session variable for easy access
		session['access_token'] = response['access_token']
```

## Make requests to the Excel API

### Request headers 
With an access token, your app can make authenticated requests to the Microsoft Graph API. Your app must append the access token to the **Authorization** header of each request.

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

### Getting an Excel Session
#### Request 

Pass a JSON object by setting the `persistChanges` value to `true` or `false`. When the value of `persistChanges` is set to `false`, a non-persistent session id is returned. This example uses the [Requests](http://docs.python-requests.org/en/latest/user/quickstart) HTTP library 

```python
 	# Replace the id with your Excel workbook's drive id
	url = 'https://graph.microsoft.com/v1.0/me/drive/items/01TBZDUE23F3CNYSIEGNBZV2LZGWHMC7TE/workbook/createSession'
	# Set request headers
	headers = { 
		'User-Agent' : 'python_tutorial/1.0',
		'Authorization' : 'Bearer {0}'.format(access_token),
		'Accept' : 'application/json',
		'Content-Type' : 'application/json'
	}
	# Specify type of session
	body = {
		'persistChanges': True
	}
	
	response = requests.post(url, headers = headers, json = body)
```

#### Response

<!-- { "blockType": "ignored" } -->
```http
HTTP code: 201 Created
content-type: application/json;odata.metadata 

{
	"@odata.context": "https://graph.microsoft.com/{version}/$metadata#microsoft.graph.sessionInfo",
	"id": "{session-id}",
	"persistChanges": true
}
```

#### Usage 

The session ID returned from the previous call is passed as a header on subsequent API requests in the
**Workbook-Session-Id** HTTP header. For instance, to list worksheets in that Excel workbook.

```python
	# Replace the id with your Excel workbook's drive id
	url = 'https://graph.microsoft.com/v1.0/me/drive/items/01TBZDUE23F3CNYSIEGNBZV2LZGWHMC7TE/workbook/worksheets'
	# Set request headers - note the session header 
	headers = { 
		'User-Agent' : 'python_tutorial/1.0',
		'Authorization' : 'Bearer {0}'.format(access_token),
		'Accept' : 'application/json',
		'Workbook-Session-Id': 'cluster=PP1&session=12.a04039942e021.A272...'
	}
	
	response = requests.get(url, headers = headers)
```

#### Response

<!-- { "blockType": "ignored" } -->
```http
HTTP code: 200 OK
content-type: application/json;odata.metadata 

{
	"@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('8473b867-3e4e-4e44-8d09-8c6da362080f')/drive/items('01TBZDUE23F3CNYSIEGNBZV2LZGWHMC7TE')/workbook/worksheets",
	"value": [
	{
		"@odata.id": "/users('8473b867-3e4e-4e44-8d09-8c6da362080f')/drive/items('01TBZDUE23F3CNYSIEGNBZV2LZGWHMC7TE')/workbook/worksheets(%27%7B00000000-0001-0000-0000-000000000000%7D%27)",
		"id": "{00000000-0001-0000-0000-000000000000}",
		"name": "Session 1",
		"position": 0,
		"visibility": "Visible"
	},
	{
		"@odata.id": "/users('8473b867-3e4e-4e44-8d09-8c6da362080f')/drive/items('01TBZDUE23F3CNYSIEGNBZV2LZGWHMC7TE')/workbook/worksheets(%27%7B00000000-0001-0000-0100-000000000000%7D%27)",
		"id": "{00000000-0001-0000-0100-000000000000}",
		"name": "Session 2",
		"position": 1,
		"visibility": "Visible"
	}]
}
```

## Next steps

With the **Workbook-Session-Id** HTTP header, you can begin issuing requests to fetch data, create charts, and much more. 

* [Common Excel API scenarios](https://developer.microsoft.com/graph/docs/api-reference/v1.0/resources/excel#common-excel-scenarios)
* [Working with Excel in Microsoft Graph](https://developer.microsoft.com/graph/docs/api-reference/v1.0/resources/excel)

The Excel REST API in Microsoft Graph provides a powerful way to access and interact with data in Excel workbooks. Explore what else is possible with Microsoft Graph.

* [Overview of Microsoft Graph](https://developer.microsoft.com/graph/docs)
* [Get started with Microsoft Graph in a Python app](https://developer.microsoft.com/graph/docs/get-started/python)
