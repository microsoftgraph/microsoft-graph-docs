
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

const reviewers = {
    id:"006111db-0810-4494-a6df-904d368bd81b"
}
;

client.api('/accessReviews('2b83cc42-09db-46f6-8c6e-16fec466a82d')/reviewers')
	.version('beta').post({accessReviewReviewer : reviewers});

```