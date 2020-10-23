---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/servicePrincipals/{id}/synchronization/jobs/{id}/schema/parseExpression"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSString *expression = @"Replace([preferredLanguage], "-", , , "_", ,  )";
payloadDictionary[@"expression"] = expression;

payloadDictionary[@"targetAttributeDefinition"] = targetAttributeDefinition;

MSGraphExpressionInputObject *testInputObject = [[MSGraphExpressionInputObject alloc] init];
[testInputObject setDefinition: null];
NSMutableArray *propertiesList = [[NSMutableArray alloc] init];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"objectId"];
[properties setValue:@"66E4A8CC-1B7B-435E-95F8-F06CEA133828"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"IsSoftDeleted"];
[properties setValue:@"false"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"accountEnabled"];
[properties setValue:@"true"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"streetAddress"];
[properties setValue:@"1 Redmond Way"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"city"];
[properties setValue:@"Redmond"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"state"];
[properties setValue:@"WA"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"postalCode"];
[properties setValue:@"98052"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"country"];
[properties setValue:@"USA"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"department"];
[properties setValue:@"Sales"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"displayName"];
[properties setValue:@"John Smith"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute1"];
[properties setValue:@"Sample 1"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute2"];
[properties setValue:@"Sample 2"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute3"];
[properties setValue:@"Sample 3"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute4"];
[properties setValue:@"Sample 4"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute5"];
[properties setValue:@"Sample 5"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute6"];
[properties setValue:@"Sample 6"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute7"];
[properties setValue:@"Sample 1"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute8"];
[properties setValue:@"Sample 1"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute9"];
[properties setValue:@"Sample 1"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute10"];
[properties setValue:@"Sample 1"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute11"];
[properties setValue:@"Sample 1"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute12"];
[properties setValue:@"Sample 1"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute13"];
[properties setValue:@"Sample 1"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute14"];
[properties setValue:@"Sample 1"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"extensionAttribute15"];
[properties setValue:@"Sample 1"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"givenName"];
[properties setValue:@"John"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"jobTitle"];
[properties setValue:@"Finance manager"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"mail"];
[properties setValue:@"johns@contoso.com"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"mailNickname"];
[properties setValue:@"johns"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"manager"];
[properties setValue:@"maxs@contoso.com"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"mobile"];
[properties setValue:@"425-555-0010"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"onPremisesSecurityIdentifier"];
[properties setValue:@"66E4A8CC-1B7B-435E-95F8-F06CEA133828"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"passwordProfile.password"];
[properties setValue:@""];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"physicalDeliveryOfficeName"];
[properties setValue:@"Main Office"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"preferredLanguage"];
[properties setValue:@"EN-US"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"proxyAddresses"];
[properties setValue:@""];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"surname"];
[properties setValue:@"Smith"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"telephoneNumber"];
[properties setValue:@"425-555-0011"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"userPrincipalName"];
[properties setValue:@"johns@contoso.com"];
[propertiesList addObject: properties];
MSGraphStringKeyObjectValuePair *properties = [[MSGraphStringKeyObjectValuePair alloc] init];
[properties setKey:@"appRoleAssignments"];
NSMutableArray *valueList = [[NSMutableArray alloc] init];
[valueList addObject: @"Default Assignment"];
[properties setValue:valueList];
[propertiesList addObject: properties];
[testInputObject setProperties:propertiesList];
payloadDictionary[@"testInputObject"] = testInputObject;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```