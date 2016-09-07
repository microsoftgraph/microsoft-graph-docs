# Get started with the Microsoft Graph in an Android app

This article describes the tasks required to get an access token from the v2 authentication endpoint and call the Microsoft Graph. It walks you through building the [Connect Sample for Android](https://github.com/microsoftgraph/android-java-connect-sample) and explains the main concepts that you implement to use the Microsoft Graph. The article also describes how to access the Microsoft Graph by using either the [Microsoft Graph SDK for Android](https://github.com/microsoftgraph/msgraph-sdk-android) or raw REST calls.

This is the app you'll create. 

![Connect Sample for Android screenshot](images/AndroidConnect.png)


**Don't feel like building an app?** Get up and running fast downloading the [Connect Sample for Android](https://github.com/microsoftgraph/android-java-connect-sample) that this walkthrough is based on.


## Prerequisites

To follow along with this walkthrough, you'll need: 

- A [Microsoft account](https://www.outlook.com/) or an [Office 365 for business account](http://dev.office.com/devprogram)
- Android Studio 2.0 or later version


## Register the application
Register an app on the Microsoft App Registration Portal. This generates the app ID and password that you'll use to configure the app in Visual Studio.

1. Sign into the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.

2. Choose **Add an app**.

3. Enter a name for the app, and choose **Create application**. 
	
   The registration page displays, listing the properties of your app.

4. Copy the application ID. This is the unique identifier for your app. 

5. Choose **Add Platform** and **Mobile application**.

    > Note: The Application Registration Portal provides a Redirect URI with a value of *urn:ietf:wg:oauth:2.0:oob*. However, we'll use the default Redirect URI value of *https://login.microsoftonline.com/common/oauth2/nativeclient*.

6. Choose **Save**.


## Configure the project

Start a new project in Android Studio. You can leave the default values for most of the wizard, just make sure to choose the following options:

* Target Android Devices - **Phone and Tablet**
    * Minimum SDK - **API 16: Android 4.1 (Jelly Bean)**
* Add an Activity to Mobile - **Basic Activity**
 
This provides us with an Android project with an activity and a button that we can use to authenticate the user.

## Authenticate the user and get an access token
We'll use an OAuth library to simplify the authentication process. [OpenID](http://openid.net) provides [AppAuth for Android](https://github.com/openid/AppAuth-Android), a library that we can use in this project.

### Add the dependency to app/build.gradle

Open the `build.gradle` file in the app module and include the following dependency:

```gradle
compile 'net.openid:appauth:0.3.0'
```

### Start the authentication flow

1. Open the **MainActivity** file and declare an **AuthorizationService** object in the **onCreate** method.
    ```java
    final AuthorizationService authorizationService =
        new AuthorizationService(this);
    ```
    
2. Locate the event handler for the click event of the *FloatingActionButton*. Replace the **onClick** method with the following code. Insert the **application ID** of your app in the placeholder marked with **\<YOUR_APPLICATION_ID\>**.
    ```java
    @Override
    public void onClick(View view) {
        Uri authorizationEndpoint =
            Uri.parse("https://login.microsoftonline.com/common/oauth2/v2.0/authorize");
        Uri tokenEndpoint =
            Uri.parse("https://login.microsoftonline.com/common/oauth2/v2.0/token");
        AuthorizationServiceConfiguration config =
            new AuthorizationServiceConfiguration(
                    authorizationEndpoint,
                    tokenEndpoint,null);

        List<String> scopes = new ArrayList<>(
            Arrays.asList("openid profile mail.send".split(" ")));

        AuthorizationRequest authorizationRequest = new AuthorizationRequest.Builder(
            config,
            "<YOUR_APPLICATION_ID>",
            ResponseTypeValues.CODE,
            Uri.parse("https://login.microsoftonline.com/common/oauth2/nativeclient"))
            .setScopes(scopes)
            .build();

        Intent intent = new Intent(view.getContext(), MainActivity.class);

        PendingIntent redirectIntent =
            PendingIntent.getActivity(
                    view.getContext(),
                    authorizationRequest.hashCode(),
                    intent, 0);

        authorizationService.performAuthorizationRequest(
            authorizationRequest,
            redirectIntent);
    }
    ```
    
At this point, you should have an Android app with a button. If you press the button, the app presents an authentication page using the device's browser. The next step is to handle the code that the authorization server sends to the redirect URI and exchange it for an access token.

### Exchange the authorization code for an access token

We need to make our app ready to handle the authorization server response, which contains a code that we can exchange for an access token.

1. We need to tell the Android system that the app can handle requests to *https://login.microsoftonline.com/common/oauth2/nativeclient*. To do this open the **AndroidManifest** file and add the following activity element.
    ```xml
    <activity android:name="net.openid.appauth.RedirectUriReceiverActivity">
        <intent-filter>
            <action android:name="android.intent.action.VIEW"/>
            <category android:name="android.intent.category.DEFAULT"/>
            <category android:name="android.intent.category.BROWSABLE"/>
            <data android:scheme="https"/>
            <data android:host="login.microsoftonline.com"/>
            <data android:path="/common/oauth2/nativeclient"/>
        </intent-filter>
    </activity>
    ```

2. The activity will be invoked when the authorization server sends a response. We can request an access token with the response from the authorization server. Go back to your **MainActivity** and append the following code to the **onCreate** method.
    ```java
    Bundle extras = getIntent().getExtras();
    if (extras != null) {
        AuthorizationResponse authorizationResponse = AuthorizationResponse.fromIntent(getIntent());
        AuthorizationException authorizationException = AuthorizationException.fromIntent(getIntent());
        final AuthState authState = new AuthState(authorizationResponse, authorizationException);

        if (authorizationResponse != null) {
            HashMap<String, String> additionalParams = new HashMap<>();
            TokenRequest tokenRequest = authorizationResponse.createTokenExchangeRequest(additionalParams);

            authorizationService.performTokenRequest(
                tokenRequest,
                new AuthorizationService.TokenResponseCallback() {
                    @Override
                    public void onTokenRequestCompleted(
                            @Nullable TokenResponse tokenResponse,
                            @Nullable AuthorizationException ex) {
                        authState.update(tokenResponse, ex);
                        if (tokenResponse != null) {
                            String accessToken = tokenResponse.accessToken;
                        }
                    }
                });
        } else {
            Log.i("MainActivity", "Authorization failed: " + authorizationException);
        }
    }
    ```

Note that we have an access token in this line `String accessToken = tokenResponse.accessToken;`. Now you're ready to add code to call the Microsoft Graph. 

## Call the Microsoft Graph
If you're using the Microsoft Graph SDK, read on. If you're using REST, jump to the [Using the Microsoft Graph REST API](#using-the-microsoft-graph-rest-api) section.

### Using the Microsoft Graph SDK
The [Microsoft Graph SDK for Android](https://github.com/microsoftgraph/msgraph-sdk-android) provides classes that builds requests and process results from the Microsoft Graph API. Follow these steps to use the Microsoft Graph SDK.

1. Add internet permissions to your app. Open the **AndroidManifest** file and add the following child to the manifest element.
    ```xml
    <uses-permission android:name="android.permission.INTERNET" />
    ```

2. Add dependencies to the Microsoft Graph SDK and GSON.
   ```gradle
    compile 'com.microsoft.graph:msgraph-sdk-android:1.0.0'
    compile 'com.google.code.gson:gson:2.4'
   ```
   
3. Replace the line `String accessToken = tokenResponse.accessToken;` with the following code. Insert your email address in the placeholder marked with **\<YOUR_EMAIL_ADDRESS\>**.
    ```java
    final String accessToken = tokenResponse.accessToken;
    final IClientConfig clientConfig = 
            DefaultClientConfig.createWithAuthenticationProvider(new IAuthenticationProvider() {
        @Override
        public void authenticateRequest(IHttpRequest request) {
            request.addHeader("Authorization", "Bearer " + accessToken);
        }
    });

    final IGraphServiceClient graphServiceClient = new GraphServiceClient
        .Builder()
        .fromConfig(clientConfig)
        .buildClient();

    final Message message = new Message();
    EmailAddress emailAddress = new EmailAddress();
    emailAddress.address = "<YOUR_EMAIL_ADDRESS>";
    Recipient recipient = new Recipient();
    recipient.emailAddress = emailAddress;
    message.toRecipients = Collections.singletonList(recipient);
    ItemBody itemBody = new ItemBody();
    itemBody.content = "This is the email body";
    itemBody.contentType = BodyType.text;
    message.body = itemBody;
    message.subject = "Sent using the Microsoft Graph SDK";

    AsyncTask.execute(new Runnable() {
        @Override
        public void run() {
            graphServiceClient
                .getMe()
                .getSendMail(message, false)
                .buildRequest()
                .post();
        }
    });
    ```

### Using the Microsoft Graph REST API
The [Microsoft Graph REST API](http://graph.microsoft.io/docs) exposes multiple APIs from Microsoft cloud services through a single REST API endpoint. Follow these steps to use the REST API.

1. Add internet permissions to your app. Open the **AndroidManifest** file and add the following child to the manifest element.
    ```xml
    <uses-permission android:name="android.permission.INTERNET" />
    ```

2. Add a dependency to the Volley HTTP library.
   ```gradle
    compile 'com.android.volley:volley:1.0.0'
   ```
   
3. Replace the line `String accessToken = tokenResponse.accessToken;` with the following code. Insert your email address in the placeholder marked with **\<YOUR_EMAIL_ADDRESS\>**.
    ```java
    final String accessToken = tokenResponse.accessToken;

    final RequestQueue queue = Volley.newRequestQueue(getApplicationContext());
    String url ="https://graph.microsoft.com/v1.0/me/sendMail";
    final String body = "{" +
        "  Message: {" +
        "    subject: 'Sent using the Microsoft Graph REST API'," +
        "    body: {" +
        "      contentType: 'text'," +
        "      content: 'This is the email body'" +
        "    }," +
        "    toRecipients: [" +
        "      {" +
        "        emailAddress: {" +
        "          address: 'ricardol@microsoft.com'" +
        "        }" +
        "      }" +
        "    ]}" +
        "}";

    final StringRequest stringRequest = new StringRequest(Request.Method.POST, url,
        new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                Log.d("Response", response);
            }
        },
        new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Log.d("ERROR","error => " + error.getMessage());
            }
        }
    ) {
        @Override
        public Map<String, String> getHeaders() throws AuthFailureError {
            Map<String,String> params = new HashMap<>();
            params.put("Authorization", "Bearer " + accessToken);
            params.put("Content-Length", String.valueOf(body.getBytes().length));
            return params;
        }
        @Override
        public String getBodyContentType() {
            return "application/json";
        }
        @Override
        public byte[] getBody() throws AuthFailureError {
            return body.getBytes();
        }
    };

    AsyncTask.execute(new Runnable() {
        @Override
        public void run() {
            queue.add(stringRequest);
        }
    });
    ```

## Run the app


## Next steps
- Try out the REST API using the [Graph explorer](https://graph.microsoft.io/graph-explorer).
- Find examples of common operations in the [Snippets Sample for Android](https://github.com/microsoftgraph/android-java-snippets-sample), or explore our other [Android samples](https://github.com/microsoftgraph?utf8=%E2%9C%93&query=android) on GitHub.


## See also
