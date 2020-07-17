-- Contracts
INSERT INTO dbo.Contracts_Staging (
      [LastUpdatedTimestamp]
      ,[document_code]
      ,[prime_contract_id]
      ,[contract_includes_sub_vendors]
      ,[vendor_record_type]
      ,[prime_vendor]
      ,[prime_vendor_mwbe_category]
      ,[prime_contract_purpose]
      ,[prime_contract_current_amount]
      ,[prime_contract_original_amount]
      ,[prime_vendor_spent_to_date]
      ,[prime_contract_start_date]
      ,[prime_contract_end_date]
      ,[prime_contract_registration_date]
      ,[prime_contracting_agency]
      ,[prime_contract_version]
      ,[parent_contract_id]
      ,[prime_contract_type]
      ,[prime_contract_award_method]
      ,[prime_contract_expense_category]
      ,[prime_contract_industry]
      ,[prime_contract_pin]
      ,[prime_contract_apt_pin]
      ,[sub_vendor]
      ,[sub_vendor_mwbe_category]
      ,[sub_contract_purpose]
      ,[sub_vendor_status_in_pip]
      ,[sub_contract_industry]
      ,[sub_contract_current_amount]
      ,[sub_contract_original_amount]
      ,[sub_vendor_paid_to_date]
      ,[sub_contract_start_date]
      ,[sub_contract_end_date]
      ,[sub_contract_reference_id]
) VALUES (
      GETDATE()
      ,'[document_code]'
      ,'[prime_contract_id]'
      ,'[contract_includes_sub_vendors]'
      ,'[vendor_record_type]'
      ,'[prime_vendor]'
      ,'[prime_vendor_mwbe_category]'
      ,'[prime_contract_purpose]'
      ,1
      ,12
      ,123
      ,'2020-05-01 00:00:00'
      ,'2020-05-02 00:00:00'
      ,'2020-05-03 00:00:00'
      ,'[prime_contracting_agency]'
      ,1234
      ,'[parent_contract_id]'
      ,'[prime_contract_type]'
      ,'[prime_contract_award_method]'
      ,'[prime_contract_expense_category]'
      ,'[prime_contract_industry]'
      ,'[prime_contract_pin]'
      ,'[prime_contract_apt_pin]'
      ,'[sub_vendor]'
      ,'[sub_vendor_mwbe_category]'
      ,'[sub_contract_purpose]'
      ,'[sub_vendor_status_in_pip]'
      ,'[sub_contract_industry]'
      ,12345
      ,123456
      ,1234567
      ,'2020-05-04 00:00:00'
      ,'2020-05-05 00:00:00'
      ,'[sub_contract_reference_id]'
)

UPDATE dbo.Contracts_Staging
SET
      [LastUpdatedTimestamp] = GETDATE() -- This shouldn't trigger update-able condition, cuz it's never checked against, and doesn't need to be checked since it's a timestamp for the Staging Table, we will have our own timestamp for the final table
      ,[document_code] = '[document_code]_UPDATED'
      ,[prime_contract_id] = '[prime_contract_id]_UPDATED'
      ,[contract_includes_sub_vendors] = '[contract_includes_sub_vendors]_UPDATED'
      ,[vendor_record_type] = '[vendor_record_type]_UPDATED'
      ,[prime_vendor] = '[prime_vendor]_UPDATED'
      ,[prime_vendor_mwbe_category] = '[prime_vendor_mwbe_category]_UPDATED'
      ,[prime_contract_purpose] = '[prime_contract_purpose]_UPDATED'
      ,[prime_contract_current_amount] = 9
      ,[prime_contract_original_amount] = 98
      ,[prime_vendor_spent_to_date] = 987
      ,[prime_contract_start_date] = '2020-05-11'
      ,[prime_contract_end_date] = '2020-05-12'
      ,[prime_contract_registration_date] = '2020-05-13'
      ,[prime_contracting_agency] = '[prime_contracting_agency]_UPDATED'
      ,[prime_contract_version] = 9876
      ,[parent_contract_id] = '[parent_contract_id]_UPDATED'
      ,[prime_contract_type] = '[prime_contract_type]_UPDATED'
      ,[prime_contract_award_method] = '[prime_contract_award_method]_UPDATED'
      ,[prime_contract_expense_category] = '[prime_contract_expense_category]_UPDATED'
      ,[prime_contract_industry] = '[prime_contract_industry]_UPDATED'
      ,[prime_contract_pin] = '[prime_contract_pin]_UPDATED'
      ,[prime_contract_apt_pin] = '[prime_contract_apt_pin]_UPDATED'
      ,[sub_vendor] = '[sub_vendor]_UPDATED'
      ,[sub_vendor_mwbe_category] = '[sub_vendor_mwbe_category]_UPDATED'
      ,[sub_contract_purpose] = '[sub_contract_purpose]_UPDATED'
      ,[sub_vendor_status_in_pip] = '[sub_vendor_status_in_pip]_UPDATED'
      ,[sub_contract_industry] = '[sub_contract_industry]_UPDATED'
      ,[sub_contract_current_amount] = 98765
      ,[sub_contract_original_amount] = 987654
      ,[sub_vendor_paid_to_date] = 9876543
      ,[sub_contract_start_date] = '2020-05-14'
      ,[sub_contract_end_date] = '2020-05-15'
      ,[sub_contract_reference_id] = '[sub_contract_reference_id]_UPDATED'
WHERE document_code = '[document_code]'

delete From dbo.Contracts_Staging
where document_code = '[document_code]_UPDATED'


-- Budget
INSERT INTO dbo.Budget_Staging (
      [LastUpdatedTimestamp]
      ,[agency]
      ,[year]
      ,[department]
      ,[expense_category]
      ,[budget_code]
      ,[budget_name]
      ,[budget_amounts]
      ,[expenditure_amounts]
) VALUES (
      GETDATE(),
      '[agency]',
      1111,
      '[department]',
      '[expense_category]',
      '[budget_code]',
      '[budget_name]',
      '[budget_amounts]',
      '[expenditure_amounts]'
)

UPDATE dbo.Budget_Staging
SET
      [LastUpdatedTimestamp] = GETDATE() -- This shouldn't trigger update-able condition, cuz it's never checked against, and doesn't need to be checked since it's a timestamp for the Staging Table, we will have our own timestamp for the final table
      ,[agency] = '[agency]_UPDATED'
      ,[year] = 9999
      ,[department] = '[department]_UPDATED'
      ,[expense_category] = '[expense_category]_UPDATED'
      ,[budget_code] = '[budget_code]_UPDATED'
      ,[budget_name] = '[budget_name]_UPDATED'
      ,[budget_amounts] = '[budget_amounts]_UPDATED'
      ,[expenditure_amounts] = '[expenditure_amounts]_UPDATED'
WHERE [agency] = '[agency]'

delete From dbo.Budget_Staging
where agency = '[agency]_UPDATED'


-- Spending
INSERT INTO dbo.Spending_Staging (
      [LastUpdatedTimestamp]
) VALUES (
      GETDATE()
)

UPDATE
    dbo.Spending_Staging
SET
    dbo.Spending_Staging.[agency] = 'Ab',
    dbo.Spending_Staging.[associated_prime_vendor] = 'b',
    dbo.Spending_Staging.[capital_project] = 'c',
    dbo.Spending_Staging.[contract_id] = 'e',
    dbo.Spending_Staging.[contract_purpose] = 'f',
    dbo.Spending_Staging.[check_amount] = '100',
    dbo.Spending_Staging.[department] = 'g',
    dbo.Spending_Staging.[document_id] = 'h',
    dbo.Spending_Staging.[expense_category] = 'i',
    dbo.Spending_Staging.[fiscal_year] = '2020',
    dbo.Spending_Staging.[industry] = 'j',
    dbo.Spending_Staging.[issue_date] = '2020-07-04',
    dbo.Spending_Staging.[mwbe_category] = 'k',
    dbo.Spending_Staging.[payee_name] = 'l',
    dbo.Spending_Staging.[spending_category] = 'm',
    dbo.Spending_Staging.[sub_contract_reference_id] = 'n',
    dbo.Spending_Staging.[sub_vendor] = 'o'
WHERE
    dbo.Spending_Staging.[ID] = 717232

delete From dbo.Spending_Staging
where ID = 717232