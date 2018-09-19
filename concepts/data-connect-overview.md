# Overview of Microsoft Graph Data Connect
Microsoft Graph contains rich data about workers and their workplace, including information about how people work and how they communicate, collaborate, and manage their time. Managed Access to Microsoft Graph brings this data to Microsoft Azure, which gives you access to many of the world's best development and hosting tools to work with this data. This enables customers to benefit from innovative or industry-specific applications that enhance their productivity while they keep full control over their Microsoft Graph data. Microsoft is bringing along the more secured control that customers expect and removing the need for developers to hold on to the data.

## Why use Managed Access?
Office 365 administrators must carefully consider the challenges inherent in moving and managing significant amounts of their organizational data. Managed Access is designed to give administrators new controls over their data; you can use that data to build apps that create data-driven insights. 

### Enable granular consent
Unlike legacy consent models, where an administrator can only grant or deny an application access to specific data types, Managed Access enables applications to specify what types of data an application can access, and/or filter that content. On the other side of this equation, administrators must give explicit approval to access Microsoft Graph data before access is granted. The request must specify the level of access requested and describe data policy enforcement, the reason for the request, and the schema of the data requested. As a result, applications can use only the data that is essential to their function, and unrelated content is excluded. For example, an app might consume email headers but exclude body content and attachments. 

### Provide data governance
Microsoft is facilitating rich, connected communication between Microsoft Graph and Azure with respect to the status of customers’ data. When you build via Managed Access, you can specify a set of detailed policies that you intend to comply with. Office 365 administrators can then review and consent to these policies. This practice minimizes compliance management overhead. When consent is given, Microsoft monitors the application’s adherence to policy. If an application violates (or attempts to violate) a policy established by the organization, Microsoft stops the flow of data to that application. 

### Get access to data at scale
Rich applications require access to large amounts of data, often from many users in your organization at once. With the traditional transactional data model, you need to build a complex infrastructure and make thousands of API calls to orchestrate this data delivery. Managed Access uses the power of Azure Data Factory to deliver Office 365 data from your organization to your application, on a repeatable schedule, with just a few simple steps.

## Next steps
To get started with Managed Access, see (getting started topic) (link to come in separate PR).
