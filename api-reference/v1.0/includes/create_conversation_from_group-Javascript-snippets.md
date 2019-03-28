
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

const conversations = {
    topic:"New locations for this quarter",
    threads:[
        {
            posts:[
                {
                    body:{
                        contentType:"html",
                        content:"What do we know so far?"
                    },
                    newParticipants:[
                        {
                            emailAddress:{
                                name:"Adele Vance",
                                address:"AdeleV@contoso.onmicrosoft.com"
                            }
                        }
                    ]
                }
            ]
        }
    ]
}
;

client.api('/groups/29981b6a-0e57-42dc-94c9-cd24f5306196/conversations').post({conversation : conversations});

```