-- Contracts
UPDATE
    dbo.Contracts
SET
    dbo.Contracts.[LastUpdatedTimestamp] = ?,
    dbo.Contracts.[document_code] = ?,
    dbo.Contracts.[prime_contract_id] = ?,
    dbo.Contracts.[contract_includes_sub_vendors] = ?,
    dbo.Contracts.[vendor_record_type] = ?,
    dbo.Contracts.[prime_vendor] = ?,
    dbo.Contracts.[prime_vendor_mwbe_category] = ?,
    dbo.Contracts.[prime_contract_purpose] = ?,
    dbo.Contracts.[prime_contract_current_amount] = ?,
    dbo.Contracts.[prime_contract_original_amount] = ?,
    dbo.Contracts.[prime_vendor_spent_to_date] = ?,
    dbo.Contracts.[prime_contract_start_date] = ?,
    dbo.Contracts.[prime_contract_end_date] = ?,
    dbo.Contracts.[prime_contract_registration_date] = ?,
    dbo.Contracts.[prime_contracting_agency] = ?,
    dbo.Contracts.[prime_contract_version] = ?,
    dbo.Contracts.[parent_contract_id] = ?,
    dbo.Contracts.[prime_contract_type] = ?,
    dbo.Contracts.[prime_contract_award_method] = ?,
    dbo.Contracts.[prime_contract_expense_category] = ?,
    dbo.Contracts.[prime_contract_industry] = ?,
    dbo.Contracts.[prime_contract_pin] = ?,
    dbo.Contracts.[prime_contract_apt_pin] = ?,
    dbo.Contracts.[sub_vendor] = ?,
    dbo.Contracts.[sub_vendor_mwbe_category] = ?,
    dbo.Contracts.[sub_contract_purpose] = ?,
    dbo.Contracts.[sub_vendor_status_in_pip] = ?,
    dbo.Contracts.[sub_contract_industry] = ?,
    dbo.Contracts.[sub_contract_current_amount] = ?,
    dbo.Contracts.[sub_contract_original_amount] = ?,
    dbo.Contracts.[sub_vendor_paid_to_date] = ?,
    dbo.Contracts.[sub_contract_start_date] = ?,
    dbo.Contracts.[sub_contract_end_date] = ?,
    dbo.Contracts.[sub_contract_reference_id] = ?
WHERE
    dbo.Contracts.[StagingID] = ?




-- Budget
UPDATE
    dbo.Budget
SET
    dbo.Budget.[LastUpdatedTimestamp] = ?,
    dbo.Budget.[agency] = ?,
    dbo.Budget.[year] = ?,
    dbo.Budget.[department] = ?,
    dbo.Budget.[expense_category] = ?,
    dbo.Budget.[budget_code] = ?,
    dbo.Budget.[budget_name] = ?,
    dbo.Budget.[budget_amounts] = ?,
    dbo.Budget.[expenditure_amounts] = ?
WHERE
    dbo.Budget.[StagingID] = ?


-- Spending
UPDATE
    dbo.Spending
SET
    dbo.Spending.[LastUpdatedTimestamp] = ?,
    dbo.Spending.[agency] = ?,
    dbo.Spending.[associated_prime_vendor] = ?,
    dbo.Spending.[capital_project] = ?,
    dbo.Spending.[contract_id] = ?,
    dbo.Spending.[contract_purpose] = ?,
    dbo.Spending.[check_amount] = ?,
    dbo.Spending.[department] = ?,
    dbo.Spending.[document_id] = ?,
    dbo.Spending.[expense_category] = ?,
    dbo.Spending.[fiscal_year] = ?,
    dbo.Spending.[industry] = ?,
    dbo.Spending.[issue_date] = ?,
    dbo.Spending.[mwbe_category] = ?,
    dbo.Spending.[payee_name] = ?,
    dbo.Spending.[spending_category] = ?,
    dbo.Spending.[sub_contract_reference_id] = ?,
    dbo.Spending.[sub_vendor] = ?,
    dbo.Spending.[Code] = ?,
    dbo.Spending.[Dept] = ?,
    dbo.Spending.[Registration] = ?,
    dbo.Spending.[ProjectAgency] = ?,
    dbo.Spending.[CapProj] = ?,
    dbo.Spending.[Occ] = ?
WHERE
    dbo.Spending.[StagingID] = ?