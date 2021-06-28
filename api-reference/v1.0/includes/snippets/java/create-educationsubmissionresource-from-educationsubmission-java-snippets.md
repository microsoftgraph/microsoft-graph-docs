---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationResource educationSubmissionResource = new EducationResource();
educationSubmissionResource.assignmentResourceUrl = "https://graph.microsoft.com/v1.0/drives/b!8-QjN2tsv0WyGnTv7vOvnQkmGHbbeMNLqYKONmHLVnvCVmBYIGpeT456457AdW9f/items/017NJZI25NOB5XZNLABF7646XAMDZTQQ6T";
EducationWordResource resource = new EducationWordResource();
resource.displayName = "Report.docx";
resource.createdDateTime = OffsetDateTimeSerializer.deserialize("2017-10-21T07:52:53.9863696Z");
IdentitySet createdBy = new IdentitySet();
createdBy.application = null;
createdBy.device = null;
Identity user = new Identity();
user.id = "63cc91d2-59c7-4732-9594-35b91a26b340";
user.displayName = null;
createdBy.user = user;
resource.createdBy = createdBy;
resource.lastModifiedDateTime = OffsetDateTimeSerializer.deserialize("2017-10-21T07:52:53.9863696Z");
IdentitySet lastModifiedBy = new IdentitySet();
lastModifiedBy.application = null;
lastModifiedBy.device = null;
Identity user1 = new Identity();
user1.id = "63cc91d2-59c7-4732-9594-35b91a26b340";
user1.displayName = null;
lastModifiedBy.user = user1;
resource.lastModifiedBy = lastModifiedBy;
resource.fileUrl = "https://graph.microsoft.com/v1.0/drives/b!8-QjN2tsv0WyGnTv7vOvnQkmGHbbeMNLqYKONmHLVnvCVmBYIGpeTZ_iul5AdW9f/items/017NJZI27BCN2QI2H7HJGLIVPXR6SD2DH6";
educationSubmissionResource.resource = resource;

graphClient.education().classes("acdefc6b-2dc6-4e71-b1e9-6d9810ab1793").assignments("ad8afb28-c138-4ad7-b7f5-a6986c2655a8").submissions("fbe51c90-78b7-418a-b5f3-871bf8d8d21e").resources()
	.buildRequest()
	.post(educationSubmissionResource);

```