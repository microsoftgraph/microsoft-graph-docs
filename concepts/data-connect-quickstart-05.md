<!-- markdownlint-disable MD002 MD041 -->

The next step is to use the Azure Data Factory to create a pipeline to extract the data from Microsoft 365 to the Azure Storage account using Microsoft Graph data connect.

## Create an Azure Data Factory pipeline

1. Open a browser and go to your [Azure Portal](https://portal.azure.com/).

1. Sign in using an account with **Global administrator** rights to your Azure and Microsoft 365 tenants.

1. On the sidebar navigation, select **Create a resource**.

1. Find the **Data Factory** resource type and use the following values to create it, then select **Create**.

    1. **Subscription**: select your Azure subscription
    2. **Resource group**: GraphDataConnect
    3. **Region**: pick an Azure region in the same region as your Microsoft 365 region
    4. **Name**: dfM365toBlobStorage
    5. **Version**: V2

        ![A screenshot showing the successful creation of the new Azure Data Factory service in the Azure portal.](images/data-connect-adf-create.png)

    6. In the **Git configuration** tab, make sure you either configure Git or select the option _Configure Git later_.

1. After the Azure Data Factory resource is created, select the **Author and Monitor** tile to launch the Azure Data Factory full screen editor.

    ![A screenshot showing the Azure Portal UI for the Data Factory service. The user is clicking the Author and Monitor button.](images/data-connect-adf-auth-and-mon.png)

1. Switch from the **Overview** to the **Manage** experience by selecting it from the left-hand navigation.

1. By default, the Azure Data Factory will use an integration runtime that is auto-resolving the region. Because Data Connect requires that your source and destination, and integration runtime to exist in the same Microsoft 365 region, we recommend that you create a new integration runtime with a fixed region.

    1. Select **Integration runtimes** > **New**.
    2. Select **Azure, Self-Hosted** and select **Continue**.
    3. Select **Azure** for network environment and select **Continue**.

        ![A screenshot showing the Azure Portal UI for the Data Factory service. The user is selecting the Azure option for the network environment.](images/data-connect-adf-network.png)

    4. Use the following details to complete the form on the final screen and then select **Create**.

        - **Name**: name of your integration runtime
        - **Description**: enter a description
        - **Region**: select the region that matches your Microsoft 365 region
        - **Virtual network configuration (preview)**: Disabled

1. Switch from the **Manage** to the **Author** experience by selecting it from the left-hand navigation.
1. Create a new pipeline by selecting the **plus** icon, then **pipeline**.

    ![A screenshot showing the Azure portal UI for the Data Factory service. The user is creating a new pipeline.](images/data-connect-adf-pipeline-create.png)

    - Drag the **Copy Data** activity from the **Move and Transform** section onto the design surface.

        ![A screenshot showing the Azure portal UI for the Data Factory service. The user is dragging the copy data activity into the editor on the right side of the screen.](images/data-connect-adf-pipeline-copy-data.png)

    - Select the activity in the designer.
    - Select the **General** tab and give it a name and description.

      - **Name**: CopyFromM365toBlobStorage
      - **Description**: A description you want.

    - In the activity editor pane below the designer, select the **Source** tab, then select **New**.
    - Locate the dataset **Office 365**, select it and then select the **Continue** button.

        ![A screenshot showing the Azure portal UI for the Data Factory service. The user is selecting the Office 365 dataset in the UI and selecting the continue button afterwards.](images/data-connect-adf-pipeline-dataset.png)

    - The designer will update the **Source** tab with the Microsoft 365 connector settings.
    - Select the **Open** option next to the **Source dataset** field.
    - In the table settings, select the **Connection** tab, then the **New** button.
    - In the dialog that appears, enter the previously created Azure AD application's **Application ID** and **Secret ID** in the **Service principal ID** and **Service principal key** fields respectively, then select **Create**.
    - Select the integration runtime you previously created in the **Connect via integration runtime** dropdown.

        ![A screenshot showing the Azure portal UI for the Data Factory service. The user is configuring the integration runtime with the service principal key.](images/data-connect-adf-linked-service.png)

    - After creating the Microsoft 365 connection, for the **Table** field, select **BasicDataSet_v0.Message_v0**.
    - Switch from **Office365Table** to **Pipeline > Source**. Use the following values for the **Date filter**.

      - **Column name**: CreatedDateTime
      - **Start time (UTC)**: select a date sometime prior to the current date
      - **End time (UTC)**: select the current date
      - Select **Import schema** in the _Output columns_ section.

    - Select the **Copy data** activity in the pipeline tab, then select the **Sink** tab.

      - Select the **New** button, select **Azure Blob Storage**, and then select the **Continue** button.
      - Select **Binary** as the format for the data and then select the **Continue** button.
      - Give the dataset the name **M365JsonFile** and create new linked service if it does not exist already.

    - In the table select the **Connection** tab, then select **New**.
    - Set the following values in the dialog, then select **Finish**.

        - **Authentication method**: Service principal
        - **Azure subscription**: Select all
        - **Storage account name**: mgdcm365datastore
          - This is the storage account created earlier in this exercise.
        - **Tenant**: enter the ID of your Azure tenant
        - **Service principal ID**: enter the ID of the Azure AD application you previously created
        - **Service principal key**: enter the hashed key of the Azure AD application you previously created

    - Next to the **File path** field, select **Browse**.
    - Select the name of the storage container you created previously.

      ![A screenshot showing the Azure portal UI for the Data Factory service. The user is configuring the container and file path in the sink properties.](images/data-connect-adf-sa-fp-config.png)

1. With the pipeline created, select the **Validate All** button at the top of the designer.

1. After validating (and fixing any issues that were found), select the **Publish All** button at the top of the designer.

## Run the Azure Data Factory Pipeline

With the pipeline created, now it is time to run it.

> [!NOTE]
> It can take several minutes for the consent request to appear and it is not uncommon for the entire process (start, requesting consent and after approving the consent completing the pipeline run) to take over 40 minutes.

1. In the Azure Data Factory designer, with the pipeline open, select **Add trigger > Trigger Now**.

    ![A screenshot showing the Azure portal UI for the Data Factory service to show how to activate a trigger in the pipeline.](images/data-connect-adf-run-trigger.png)

1. After starting the job, from the sidebar menu, select **Monitor** to view current running jobs.

1. On the left-side navigation bar, locate the **Pipeline runs** tab and select it. Select the pipeline under the **Pipeline name** column to view the **Activity runs**. This pipeline will show as _In progress_.

    ![A screenshot showing the Azure portal UI for Data Factory, it is showing the pipeline runs list.](images/data-connect-adf-pipeline-runs.png)

1. After you are in the **Activity runs** view, go to the _Activity runs_ section, which is located in the bottom side of the page.

1. Hover over the **Activity name** and select the googles option. This will bring up the **Details** tab.

    ![A screenshot showing the Azure Portal UI for Data Factory Activity Runs, the user is selecting the googles in the activity name to open the details tab.](images/data-connect-adf-pipeline-details.png)

1. In the **Details** screen, look for the status of the pipeline activity as highlighted in the following image. In this case you can see it is in a state of **RequestingConsent**.

    ![A screenshot showing the Azure portal UI for the Data Factory service where the request's load status is set to "RequestingConsent".](images/data-connect-adf-wait-for-approval.png)

1. At this point, the activity run is internally paused until someone manually approves the consent request via the Microsoft 365 admin center or via PowerShell.
