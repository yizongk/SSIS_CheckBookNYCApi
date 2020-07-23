-- Spending
-- Left side, STAGING table
    SELECT
        [ID]
        ,[agency]
        ,[associated_prime_vendor]
        ,[capital_project]
        ,[contract_id]
        ,[contract_purpose]
        ,[check_amount]
        ,[department]
        ,[document_id]
        ,[expense_category]
        ,[fiscal_year]
        ,[industry]
        ,[issue_date]
        ,[mwbe_category]
        ,[payee_name]
        ,[spending_category]
        ,[sub_contract_reference_id]
        ,[sub_vendor]
    FROM [dbo].[Spending_Staging]
    ORDER BY
        [ID] ASC
-- Right side, FINAL table
    SELECT
        [StagingID] AS StagingID_FINAL
        ,[agency] AS agency_FINAL
        ,[associated_prime_vendor] AS associated_prime_vendor_FINAL
        ,[capital_project] AS capital_project_FINAL
        ,[contract_id] AS contract_id_FINAL
        ,[contract_purpose] AS contract_purpose_FINAL
        ,[check_amount] AS check_amount_FINAL
        ,[department] AS department_FINAL
        ,[document_id] AS document_id_FINAL
        ,[expense_category] AS expense_category_FINAL
        ,[fiscal_year] AS fiscal_year_FINAL
        ,[industry] AS industry_FINAL
        ,[issue_date] AS issue_date_FINAL
        ,[mwbe_category] AS mwbe_category_FINAL
        ,[payee_name] AS payee_name_FINAL
        ,[spending_category] AS spending_category_FINAL
        ,[sub_contract_reference_id] AS sub_contract_reference_id_FINAL
        ,[sub_vendor] AS sub_vendor_FINAL
    FROM [CheckBookNYC].[dbo].[Spending]
    ORDER BY
        [StagingID] ASC