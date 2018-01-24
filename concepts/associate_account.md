# Associate your Office 365 account with Azure AD to create and manage apps

To authenticate your applications using Microsoft Azure Active Directory (Azure AD), you need to register them in Azure AD. This is where Office 365 user account and application information is stored. To manage Azure AD through the Azure portal, you need a Microsoft Azure subscription. You can use the portal in Microsoft Azure to manage users, roles, and apps. 

This article shows you how to associate your Office 365 account with Azure AD to create and manage apps.

 >**Note:** This article uses Azure AD as the authentication provider for your app. If you're using the Azure AD v2.0 endpoint, you don't need to perform this step. For more information, see [App authentication with Microsoft Graph](auth_overview.md).

## Prerequisites

**Office 365 for business account**

If you don't have an existing Office 365 for business account, you can:

- Sign up for an [Office 365 for business plans](http://products.office.com/en-us/business/compare-office-365-for-business-plans) listed above, or
- [Join the Office 365 Developer Program and get a free 1 year subscription to Office 365](https://aka.ms/devprogramsignup).

**Microsoft Azure subscription** 

- If you can have an existing Microsoft Azure subscription, you can associate your Office 365 for business subscription with it. 

- Otherwise, you'll need to create a new Azure subscription and associate it with your Office 365 account in order to register and manage apps.


<!---<a name="bk_AssociateExistingAzureSubscription"> </a>-->

## To associate an existing Azure subscription with your Office 365 account


1. Log on to the  [Microsoft Azure portal](https://portal.azure.com) with your existing Azure credentials (for example, your Microsoft ID such as user@live.com).
	    
2. Select the  **Active Directory** node, then select the **Directory** tab and, at the bottom of the screen, select **New**. 
	 
4. On the **New** menu, select **Active Directory** > **Directory** > **Custom Create**.
	
5. In **Add directory**, in the **Directory** dropdown box, select  **Use existing directory**. Check **I am ready to be signed out**, and then select the check mark in the lower-right corner. 
	
	This brings you back to the Azure portal.
	    
3. Log in with your Office 365 account information. 
	
	You will be prompted whether to use your directory with Azure. 
	
	>**Important:** To associate your Office 365 account with Azure AD, you'll need  an Office 365 business account with global administrator privileges. 
	
	    
4. Select  **continue**, and then **Sign out now**.
	    
5. Close the browser and reopen the  [portal](https://manage.windowsazure.com). Otherwise, you will get an access denied error.
	
	    
6. Log on again with your existing Azure credentials (for example, your Microsoft ID such as user@live.com). Go to the  **Active Directory** node and, under **Directory**, you should now see your Office 365 account listed.
	

<!--<a name="bk_AssociateNewAzureSubscription"> </a>-->

## To create a new Azure subscription and associate it with your Office 365 account


1. Log on to Office 365. From the **Home** page, select the **Admin** icon to open the Office 365 admin center.
2. In the menu page along the left side of the page, scroll down to **Admin** and select **Azure AD**.

	>**Important:** To open the Office 365 admin center, and access Azure AD, you'll need  an Office 365 business account with global administrator privileges. 
	
3. Create a new subscription.
		
	If you're using a trial version of Office 365, you'll see a message telling you that Azure AD is limited to customers with paid services. You can still create a trial 30-day Azure subscription at no charge, but you'll need to perform a few extra steps:
	
	1. Select your country or region, and then choose **Azure subscription**.
	2. Enter your personal information. For verification purposes, enter a telephone number at which you can be reached, and specify whether you want to be sent a text message or called.
	3. When you receive your verification code, enter it and choose **Verify code**.
	4. Enter payment information, check the agreement, and select **Sign up**.
		
		Your credit card will not be charged.
		
		Do not close or refresh your browser while your Azure subscription is being created.
		    
4. When your Azure subscription is created, choose  **Portal**.
	    
5. The Azure Tour appears. You can view it, or choose  **X** to close it.
	    
	You should now see all items in your Azure subscription. It lists a directory with the name of your Office 365 tenant.
	
## See also
- [Basics of Registering an Application in Azure AD](https://azure.microsoft.com/en-us/documentation/articles/active-directory-authentication-scenarios/#basics-of-registering-an-application-in-azure-ad)
- [Add, update, or remove an application in Azure AD](https://azure.microsoft.com/en-us/documentation/articles/active-directory-integrating-applications/)