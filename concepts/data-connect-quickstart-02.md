<!-- markdownlint-disable MD002 MD041 -->

Prior to using Microsoft Graph Data Connect for the first time, you need to configure your Microsoft 365 tenant. This involves turning on the service and configuring a security group with permissions to approve data extraction requests.

## Grant Azure AD users the Global administrator role

In this step, you will ensure that two users in your Microsoft 365 tenant have the **Global administrator** role enabled.

- [Global Administrator built-in role](/azure/active-directory/roles/permissions-reference#global-administrator).
- [Elevate access to gain the Global Administrator role](/azure/role-based-access-control/elevate-access-global-admin).

## Configure Microsoft Graph Data Connect consent request approver group

In this step, you will setup your Microsoft 365 tenant to enable usage of Microsoft Graph Data Connect.

1. Open a browser and go to your [Microsoft 365 Admin Portal](https://admin.microsoft.com/).

1. On the sidebar navigation, select **Active Groups**.
  
    ![A screenshot showing the active groups in the Microsoft 365 admin center.](images/data-connect-m365-act-grp.png)

1. Select the **Add a group** button.

1. Use the following to create the new **mail-enabled** security group and select the **Add** button.
   - **Type**: Mail-enabled security

    ![A screenshot showing a user selecting the mail-enabled security for a new group in the Microsoft 365 admin center.](images/data-connect-m365-mail-sec.png)

   - **Name**: Consent Request Approvers

    ![A screenshot showing a user is giving the group a name of "Consent Request Approvers" in the Microsoft 365 admin center.](images/data-connect-m365-cons-apprv.png)

   - **Email Prefix**: consentrequestapprovers

    ![A screenshot showing a user creating the email address for the previously created group in the Microsoft 365 admin center.](images/data-connect-m365-cons-apprv-pref.png)

1. **It can take up to an hour** before the newly created group shows up in the list. When the group has been created, select it.

1. Go to the **Active groups** option again and search for the group you just created.

1. Select the group and in the **Members** tab, select **View all and manage members**.

1. Add the two users that you enabled the **Global administrator** role to this new group.

## Enable Microsoft Graph Data Connect in your Microsoft 365 tenant

In this step, you will enable the Microsoft Graph Data Connect service on your Microsoft 365 tenant.

1. While you are still signed in to the Microsoft 365 Admin Portal, select the **Settings > Org settings** menu item.

1. Select the **Microsoft Graph Data Connect** service.

    ![A screenshot showing the "Services" in the "Org settings" blade. A user is toggling on the Microsoft Graph Data Connect service in the Microsoft 365 admin center.](images/data-connect-m365-mgdc-toggle.png)

1. Select the checkbox that says **turn Microsoft Graph Data Connect on or off for your entire organization** to enable Data Connect.

    ![A screenshot showing the checkbox you have to tick in order to enable Data Connect for your entire organization.](images/data-connect-m365-enable-mgdc-for-org.png)

1. Enter **Consent Request Approvers** (or the name of the group you created previously) in the **group of users to make approval decisions** and select **Save**.
