# Call Microsoft Graph in a Ruby app 

In this article we look at the minimum tasks required to get an access token from Azure Active Directory (AD) and call the Microsoft Graph API. We use code from the [Office 365 Ruby Connect sample using Microsoft Graph](https://github.com/microsoftgraph/ruby-connect-rest-sample) to explain the main concepts that you have to implement in your app.

![Office 365 Ruby Connect sample screenshot](./images/web-screenshot.png)

## Overview

To call the Microsoft Graph API, your Ruby app must complete the following tasks.

1. Register the application in Azure Active Directory
2. Redirect the browser to the sign-in page
3. Receive an authorization code in your reply URL page
4. Request an access token from the token endpoint
5. Use the access token in a request to the Microsoft Graph API 

<!--<a name="register"/>-->
## Register the application in Azure Active Directory

Before you can start working with Office 365, you need to register your application and set permissions to use Microsoft Graph services.
With just a few clicks, you can register your application to access a user's work or school account using the [Application Registration Tool](https://dev.office.com/app-registration). To manage it you will need to go to the [Microsoft Azure Management portal](https://manage.windowsazure.com)

Alternatively, see the section [Register your web server app with the Azure Management Portal](https://msdn.microsoft.com/en-us/office/office365/HowTo/add-common-consent-manually#bk_RegisterServerApp) for instructions on how to manually register the app, keep in mind the following details:

* Specify a route in your Ruby app as the **Sign-on URL** in step 6. In the case of the Connect sample, this is [`/auth/azureactivedirectory/callback`](https://github.com/microsoftgraph/ruby-connect-rest-sample/blob/master/app/controllers/pages_controller.rb#L41).
* [Configure the **Delegated permissions**](https://github.com/microsoftgraph/ruby-connect-rest-sample/wiki/Grant-permissions-to-the-Connect-application-in-Azure) that your app requires. The Connect sample requires **Send mail as signed-in user** permission.

Take note of the following values in the **Configure** page of your Azure application.

* Client ID
* A valid key
* A reply URL

You need these values as parameters in the OAuth flow in your app.

<!--<a name="redirect"/>-->
## Redirect the browser to the sign-in page

Your app needs to redirect the browser to the sign-in page to get an authorization code and continue the OAuth flow.

In the Connect sample, redirection is handled by the OmniAuth library. Our app just delegates execution to the [`/auth/azureactivedirectory`](https://github.com/microsoftgraph/ruby-connect-rest-sample/blob/master/app/controllers/pages_controller.rb#L30) route managed by OmniAuth.

<!--<a name="authcode"/>-->
## Receive an authorization code in your reply URL page

After the user signs-in, the flow returns the browser to the reply URL in your app. Azure appends an authorization code to the query string. The Connect sample uses the [`/auth/azureactivedirectory/callback`](https://github.com/microsoftgraph/ruby-connect-rest-sample/blob/master/app/controllers/pages_controller.rb#L38) route for this purpose.

The authorization code is provided in the `code` query string variable. The Connect sample saves the code to a local variable to use it later.

```ruby
code = params[:code]
```

<!--<a name="accesstoken"/>-->
## Request an access token from the token endpoint

Once you have the authorization code, you can use it along the client ID, key, and reply URL values that you got from Azure AD to request an access token. 

> **Note:** <br />
> The request must also specify a resource that we are trying to consume. In the case of Microsoft Graph, the resource value is `https://graph.microsoft.com`.

Again, the Connect sample delegates this task to the OmniAuth library. The [`acquire_access_token`](https://github.com/microsoftgraph/ruby-connect-rest-sample/blob/master/app/controllers/pages_controller.rb#L65) function calls the library and passes the authentication code saved in the previous section along with the reply URL, client ID, client secret and resource ID.

```ruby
def acquire_access_token(auth_code, reply_url)
    AUTH_CTX.acquire_token_with_authorization_code(
                  auth_code,
                  reply_url,
                  CLIENT_CRED,
                  GRAPH_RESOURCE)
end
```

> **Note:** <br />
> The client ID and client secret are provided in the `CLIENT_CRED` parameter in the previous code snippet.

<!--<a name="request"/>-->
## Use the access token in a request to the Microsoft Graph API

With an access token, your app can make authenticated requests to the Microsoft Graph API. Your app must provide the access token in the **Authorization** header of each request.

The Connect sample sends an email using the **sendMail** endpoint in the Microsoft Graph API. The code is in the [`send_mail`](https://github.com/microsoftgraph/ruby-connect-rest-sample/blob/master/app/controllers/pages_controller.rb#L82) function. This is the code that shows how to send the access code in the Authorization header.

```ruby
def send_mail
  # Used in the template
  @name = session[:name]
  @email = params[:specified_email]
  @recipient = params[:specified_email]
  @mailSent = false
  
  sendMailEndpoint = URI("#{GRAPH_RESOURCE}#{SENDMAIL_ENDPOINT}")
  http = Net::HTTP.new(sendMailEndpoint.host, sendMailEndpoint.port)
  http.use_ssl = true
  
  emailBody = File.read("app/assets/MailTemplate.html")
  emailBody.sub! "{given_name}", @name
  
  emailMessage = "{
          Message: {
          Subject: 'Welcome to Office 365 development with Ruby',
          Body: {
              ContentType: 'HTML',
              Content: '#{emailBody}'
          },
          ToRecipients: [
              {
                  EmailAddress: {
                      Address: '#{@recipient}'
                  }
              }
          ]
          },
          SaveToSentItems: true
          }"

  response = http.post(
    SENDMAIL_ENDPOINT, 
    emailMessage, 
    initheader = 
    {
      "Authorization" => "Bearer #{session[:access_token]}", 
      "Content-Type" => CONTENT_TYPE
    }
  )

  # The send mail endpoint returns a 202 - Accepted code on success
  if response.code == "202"
    @mailSent = true
  else
    @mailSent = false
    flash[:httpError] = "#{response.code} - #{response.message}"
  end
  
  render "callback"
end
```

> **Note:** <br />
> The request must also send a **Content-Type** header with a value accepted by the Microsoft Graph API, for example, `application/json;odata.metadata=minimal;odata.streaming=true`.

The Microsoft Graph API is a very powerful, unifiying API that can be used to interact with all kinds of Microsoft data. Check out the API reference to explore what else you can accomplish with the Microsoft Graph API.

<!--## Additional resources

-  [Office 365 Ruby Connect sample using Microsoft Graph](https://github.com/microsoftgraph/ruby-connect-rest-sample)
-  [Office Dev Center](http://dev.office.com) 
-  [Microsoft Graph API reference](http://graph.microsoft.io/en-us/docs)-->
