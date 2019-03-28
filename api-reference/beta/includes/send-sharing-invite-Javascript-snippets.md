
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

const invite = {
  recipients: [
    {
      email: "ryan@contoso.org"
    }
  ],
  message: "Here's the file that we're collaborating on.",
  requireSignIn: true,
  sendInvitation: true,
  roles: [ "write" ],
  password: "password123",
  expirationDateTime: "2018-07-15T14:00:00.000Z"
}
;

client.api('/me/drive/items/{item-id}/invite')
	.version('beta').post({Boolean : invite});

```