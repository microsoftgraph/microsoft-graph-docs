
```Javascript

// Some callback function
const authProvider: AuthProvider = (callback: AuthProviderCallback) => { 
	// Your logic for getting and refreshing accessToken 
	// Error should be passed in case of error while authenticating 
	// accessToken should be passed upon successful authentication 
	callback(error, accessToken);
};

let options: Options = {
		authProvider,
};

const client = Client.init(options);

const sendMail = {
  message: {
    subject: "9/9/2018: concert",
    body: {
      contentType: "HTML",
      content: "The group represents Nevada."
    },
    toRecipients: [
      {
        emailAddress: {
          address: "AlexW@contoso.OnMicrosoft.com"
        }
      }
    ],
    internetMessageHeaders:[
      {
        name:"x-custom-header-group-name",
        value:"Nevada"
      },
      {
        name:"x-custom-header-group-id",
        value:"NV001"
      }
    ]
  }
}
;

client.api('/me/sendMail')
	.version('beta').post({message : sendMail});

```