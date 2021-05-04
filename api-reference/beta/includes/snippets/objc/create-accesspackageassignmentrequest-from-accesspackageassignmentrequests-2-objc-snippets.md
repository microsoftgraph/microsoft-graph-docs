---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/accessPackageAssignmentRequests"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessPackageAssignmentRequest *accessPackageAssignmentRequest = [[MSGraphAccessPackageAssignmentRequest alloc] init];
[accessPackageAssignmentRequest setRequestType:@"UserAdd"];
MSGraphAccessPackageAssignment *accessPackageAssignment = [[MSGraphAccessPackageAssignment alloc] init];
[accessPackageAssignment setTargetId:@"46184453-e63b-4f20-86c2-c557ed5d5df9"];
[accessPackageAssignment setAssignmentPolicyId:@"2264bf65-76ba-417b-a27d-54d291f0cbc8"];
[accessPackageAssignment setAccessPackageId:@"a914b616-e04e-476b-aa37-91038f0b165b"];
[accessPackageAssignmentRequest setAccessPackageAssignment:accessPackageAssignment];
NSMutableArray *answersList = [[NSMutableArray alloc] init];
MSGraphAccessPackageAnswer *answers = [[MSGraphAccessPackageAnswer alloc] init];
[answers setValue:@"Arizona"];
MSGraphAccessPackageQuestion *answeredQuestion = [[MSGraphAccessPackageQuestion alloc] init];
[answeredQuestion setId:@"A714EC6F-4EE0-4614-BD81-37E0C5ECBBFF"];
[answers setAnsweredQuestion:answeredQuestion];
[answersList addObject: answers];
MSGraphAccessPackageAnswer *answers = [[MSGraphAccessPackageAnswer alloc] init];
[answers setValue:@"Need access to marketing campaign material"];
MSGraphAccessPackageQuestion *answeredQuestion = [[MSGraphAccessPackageQuestion alloc] init];
[answeredQuestion setId:@"AA615EE9-D9D8-4C03-BE91-BEE37106DEDA"];
[answers setAnsweredQuestion:answeredQuestion];
[answersList addObject: answers];
[accessPackageAssignmentRequest setAnswers:answersList];

NSError *error;
NSData *accessPackageAssignmentRequestData = [accessPackageAssignmentRequest getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessPackageAssignmentRequestData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```