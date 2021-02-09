---
title: "Microsoft Graph data connect integration with Privileged Access Management"
description: "Microsoft Graph data connect relies on Privileged Access Management to allow Microsoft 365 administrators to approve data movement requests."
author: "tlenig"
localization_priority: Priority
ms.prod: "data-connect"
---

# Microsoft Graph data connect integration with Privileged Access Management

Microsoft Graph data connect relies on Privileged Access Management (PAM) to allow Microsoft 365 administrators to approve data movement requests. Data connect pipelines must be approved by a member of the data access request approver specified by the Microsoft 365 administrator during enablement. To set up the approver group, see [Get started](data-connect-get-started.md).

Approval request emails will be sent to each member of the approver group to notify them when copy activities request access to extract Microsoft 365 data. Approvers can approve or deny these requests, specify a user group that should be scrubbed out of extracted data, or revoke a previously approved request. Approvals persist for 6 months, and one approval is needed per copy activity in the Azure Data Factory pipeline. 

Every request will always include the following details about the dataset and the users about whom data is being extracted:

* **Requestor**: The user who requested the pipeline.
* **Duration**: If approved, how long the approval will persist. Always 4320 hours (6 months).
* **Reason**: Reason for the request, typically "An app installed for your organization requires approval for access to Office 365 Data."
* **Requested at**: The DateTime of the request.
* **Request id**: The ID of the request, used for approval purposes.
* **DataTable**: The data set being extracted (for example, Sent Items).
* **Columns**: The list of columns being extracted from the data table (for example, SentDateTime).
* **AllowedGroups**: The group or groups of users against whom the pipeline is extracting data. If the list of groups is empty, the pipeline is requesting access to data from all users in the tenant.
* **User Scope Query**: The predicate used to filter out users. Only applies if the request is for all users in the tenant. If this is empty, no filter is applied. 
* **OutputUri**: The output path in which the extracted data will be stored.
* **SourceTenantId**: The tenant ID from which data is being extracted.
* **InstallerIdentity**: The identity of the app installer.

The following fields in the request will be available only in some cases:

* Application Name and the Marketplace URI (available only for applications installed from the Azure marketplace).
* Links to the application's privacy policy and terms of service (available only if the application provides it).
* The compliance policies that the application enforces, such as data encryption at rest in the output storage location (available only if the application provides it and if the application is installed from the Azure marketplace).
* Deny List - The user group that can be scrubbed out of the extracted data. This field is empty as a part of the request for datasets that support privacy scrubbing of extracted data. It can be populated by the member of the approver group who approves the request at approval time. 

## Approving requests

Data connect pipelines must be approved by a member of a data access request approver group. Approvers can approve, deny, or revoke pipelines by using the Exchange Online PowerShell module or the PAM user experience.

### Approving, denying, and revoking requests by using PowerShell

Use the following steps to interact with a request using the Exchange Online PowerShell module:

1. Install the Exchange Online Powershell module. For installation instructions, see [Connect to Exchange Online PowerShell using multi-factor authentication](/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/mfa-connect-to-exchange-online-powershell?view=exchange-ps).

2. Connect to Exchange Online Powershell using multi-factor authentication (MFA). For instructions, see [Connect to Exchange Online PowerShell using multi-factor authentication](/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/mfa-connect-to-exchange-online-powershell?view=exchange-ps).
    >**Note**: You do not need to enable multi-factor authentication for your organization to use these steps while connecting to Exchange Online PowerShell. Connecting with MFA creates an OAuth token that is used by PAM for signing your requests.

3. Sign in with your account. Note that you must be part of the configured data access approver group in order to be able to approve, deny, or revoke requests. Guest users cannot approve requests, even if they are in the approver group. 

   ```powershell
   Connect-EXOPSSession
   ```

4. Find all pending requests.
   >**Note:** The value in the **Identity** property will be used to identify and approve or deny the request. Note this value and use it in the -RequestId parameter. 

   ```powershell
   Get-ElevatedAccessRequest | ?{$_.RequestStatus -eq 'Pending'}
   ```

4. Take a closer look at the **context** field of the request you are interested in. 
   >**Note:** The context field of the data access request describes the parameters and properties of the copy activity.

   ```powershell
   (Get-ElevatedAccessRequest -RequestId $requestId).Context | ConvertFrom-Json
   ```

   You'll get a response that looks like the following.

   ```powershell
   Key                          Value
   ---                          -----
   ApplicationName
   ComplianceStatus             [{"Timestamp":"2018-05-02T18:29:21.5705664Z","RequirementName":"adlsEncryption","PolicyComplianceState":"Compliant","Violations":0},{"Timestamp":"2018-05-02T...
   ApplicationMarketPlaceUri
   OutputUri                    adl://myadlserumvrroyspmq.azuredatalakestore.net/targetFolder/Event
   ApplicationPrivacyPolicyUri  http://www.wkw.com/privacy
   ApplicationTermsOfServiceUri http://www.wkw.com/tos
   InstallerIdentity            a89885c3-4b0e-499e-86ed-14d7ed9147c2@942229f8-4656-4fb0-828b-e938dad4019a
   SourceTenantId               942229f8-4656-4fb0-828b-e938dad4019a
   UserScopeQuery               tenant in (942229f8-4656-4fb0-828b-e938dad4019a)
   ApplicationId
   DataTable                    Calendar Events
   DestinationTenantId          942229f8-4656-4fb0-828b-e938dad4019a
   Columns                      Subject:string, HasAttachments:bool, End:DateTime, Start:DateTime, ResponseStatus:string, Organizer:Object, Attendees:string, Importance:string, Sensitivity:...
   ```

5. Approve/deny the request using the value for **Identity** for the -RequestId parameter.

   ```powershell
   Approve-ElevatedAccessRequest -RequestId $requestId -Comment "Yay!!"
   Deny-ElevatedAccessRequest -RequestId $requestId -Comment "Nay!!"
   ```

You can also approve the request with a deny list to ensure data from certain users is not included. To do so, you need to modify the context of the request to add the `object Id` of the group that you want to omit and then approve the request. 

   ```powershell
   $request = Get-ElevatedAccessRequest -RequestId
   $hash = $request.Context
   $hash["DenyList"] = <Object ID of denied user group>;
   Approve-ElevatedAccessRequest -RequestId $requestId -Comment "Yay!!" -RequestContext $hash
   Deny-ElevatedAccessRequest -RequestId $requestId -Comment "Nay!!"
   ```
You can also revoke requests that were previously approved. Similar to approving requests, the value for **Identity** is what is required in the -RequestId parameter. 

   ```powershell 
   Revoke-ElevatedAccessAuthorization -Comment "Revoking this request!" -RequestId $requestId
   ```
   You'll see a response similar to the following.
   
   ```powershell
   AuthorizedBy          : user@tenant.onmicrosoft.com
   Type                  : Task
   AuthorizedAccess      : Data Access Request
   StartTimeUtc          : 7/24/2018 6:02:42 PM
   EndTimeUtc            : 10/22/2018 6:02:42 PM
   Revoked               : True
   RevocationDateTimeUtc : 7/24/2018 9:12:55 PM
   RevokedBy             : NAMPR00A001.prod.outlook.com/Microsoft Exchange Hosted  Organizations/tenant.onmicrosoft.com/user
   RevocationComment     : Revoking this request!
   Identity              : bda75607-0d87-43cb-bdf1-284b18446b34
   DateCreatedUtc        : 1/1/0001 12:00:00 AM
   DateUpdatedUtc        : 7/24/2018 9:12:55 PM
   ```

### Approving, denying, and revoking requests by using the PAM user experience

Use the following steps to interact with a request using the PAM web experience:

1. Sign in to the Microsoft 365 admin portal using admin credentials and go to the [Privileged Access Managment approval user experience](https://admin.microsoft.com/AdminPortal/Home#/Settings/PrivilegedAccess) page. This will show you all the access requests (pending/approved/expired/denied).

On the resulting page, select the request that you are interested in. To select deny list for privacy scrubbing, click the **DenyList** dropdown, select the group that needs to be scrubbed, and then select **Approve**.

To revoke a previously approved request, select the approved request that needs to be revoked, and choose **Revoke**. The next attempt to move data using that approval will fail. 

### Approval behavior

Data conenct approval requests have particular characteristics that are important to be aware of:

- Approval requests are based on the Azure Data Factory, pipeline and copy activity names. Every copy activity run will verify that the Microsoft 365 admin has approved the copy activity's request to access Office data, and will validate the important parameters of the copy activity run against the parameters of the approval.
- Under certain conditions, a new approval request will automatically be triggered. A data connect approver will have to approve the new request before the copy activity can access Microsoft 365 data.
- If the parameters of the copy activity run changes, a new approval request will be triggered.
- If the Data Factory, pipeline or copy activity names change, a new approval request will be triggered.
- For example: A new approval will be required if the data table or set of columns that the copy activity is accessing changes.
- Copy activities will have to be approved once every 6 months. If the original approval was approved 6 months ago, a new approval request will automatically be triggered.
- If a Microsoft 365 Data Access approver has denied an approval request or revoked a previously approved request, the copy activity will fail continually. You should work with the approver to understand the reason for the denial or revocation and fix the parameters of the copy activity accordingly. A new copy activity will have to deployed, or the name of the existing copy activity will have to be changed in order to trigger a new approval request for approval.
- An approval request will expire in 24 hours unless a Microsoft 365 data access approver acts on the request. A new request will be submitted once every 24 hours for approval. If you see your copy activity waiting for approval (in the Consent Pending stage), then work with Microsoft 365 data access approvers to get your request approved.

## Privacy scrubbing 
The member of the approver group who approves the request can specify the name of one user group whose data would be scrubbed out of extracted data. The rows containing email addresses corresponding to the members of the denied group will be scrubbed out of extracted data. Groups nested within the denied group will be expanded and only users will be scrubbed out. Refer to the approving requests section of this topic for details on how to apply the deny list during approval, through either PowerShell or the PAM UX. 

The following table shows the names of the datasets and the columns for which the contents are checked for privacy scrubbing.

| Dataset name                     | Columns used for deny list-based scrubbing                                                  |
|---------------------------------------------------------------------|----------------------------------------------------------|
| **BasicDataSet_v0.Message_v0**<br>**BasicDataSet_v0.Message_v1**   | Sender, From, ToRecipients, CcRecipients, BccRecipients    |                                                                               
| **BasicDataSet_v0.SentItem_v0**<br>**BasicDataSet_v0.SentItem_v1**  | Sender, From, ToRecipients, CcRecipients, BccRecipients  |
| **BasicDataSet_v0.Event_v0**<br>**BasicDataSet_v0.Event_v1**     | Organizer, Attendees                                        |
| **BasicDataSet_v0.Contact_v0**<br>**BasicDataSet_v0.Contact_v1**  | EmailAddresses                                            |
| **BasicDataSet_v0.CalendarView_v0**                                | Organizer, Attendees                                      |

## Next Steps

Ensure your organization has Privileged Access Management configured correctly for usage with Microsoft Graph data by completing the steps in [Get started](data-connect-get-started.md).