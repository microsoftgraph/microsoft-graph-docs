
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

const contacts = {
  givenName: "Pavel",
  surname: "Bansky",
  emailAddresses: [
    {
      address: "pavelb@fabrikam.onmicrosoft.com",
      name: "Pavel Bansky"
    }
  ],
  businessPhones: [
    "+1 732 555 0102"
  ]
}
;

client.api('/me/contacts').post({contact : contacts});

```