
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

const bookingBusinesses = {
    displayName:"Fourth Coffee",
    address:{
        type:"mall",
        postOfficeBox:"P.O. Box 123",
        street:"4567 Main Street",
        city:"Buffalo",
        state:"NY",
        countryOrRegion:"USA",
        postalCode:"98052"
    },
    phone:"206-555-0100",
    email:"manager@fourthcoffee.com",
    webSiteUrl:"https://www.fourthcoffee.com",
    defaultCurrencyIso:"USD"
}
;

client.api('/bookingBusinesses')
	.version('beta').post({bookingBusiness : bookingBusinesses});

```