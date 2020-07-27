-- Contracts
CREATE TABLE [Contracts] (
        [ID] int IDENTITY(1,1) NOT NULL,
        CONSTRAINT [PK_Contracts_ID] PRIMARY KEY CLUSTERED (ID),
        [StagingID] int NOT NULL, -- For syncing with the staging table, it's the FK to the staging table's [ID], but it is not enforced at the database level, but it should be enforce at the SSIS data sync level
        -- CONSTRAINT [FK_Contracts_ContractsStaging_StagingID] FOREIGN KEY ([StagingID])  -- This is commented out since Sidney's job may decide to delete from the staging table, and this constraint may prevent his job from deleteing the record if the records with that specific Staging ID exists in the final table, cuz it's a FK on dbo.Contracts. So not using it.
        --         REFERENCES [dbo].[Contracts_Staging] ([ID]),
        [LastUpdatedTimestamp] datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
        [document_code] nvarchar(255),
        [prime_contract_id] nvarchar(255),
        [contract_includes_sub_vendors] nvarchar(255),
        [vendor_record_type] nvarchar(255),
        [prime_vendor] nvarchar(255),
        [prime_vendor_mwbe_category] nvarchar(255),
        [prime_contract_purpose] nvarchar(255),
        [prime_contract_current_amount] money,
        [prime_contract_original_amount] money,
        [prime_vendor_spent_to_date] money,
        [prime_contract_start_date] date,
        [prime_contract_end_date] date,
        [prime_contract_registration_date] date,
        [prime_contracting_agency] nvarchar(255),
        [prime_contract_version] int,
        [parent_contract_id] nvarchar(255),
        [prime_contract_type] nvarchar(255),
        [prime_contract_award_method] nvarchar(255),
        [prime_contract_expense_category] nvarchar(265),
        [prime_contract_industry] nvarchar(255),
        [prime_contract_pin] nvarchar(255),
        [prime_contract_apt_pin] nvarchar(255),
        [sub_vendor] nvarchar(255),
        [sub_vendor_mwbe_category] nvarchar(255),
        [sub_contract_purpose] nvarchar(476),
        [sub_vendor_status_in_pip] nvarchar(255),
        [sub_contract_industry] nvarchar(255),
        [sub_contract_current_amount] money,
        [sub_contract_original_amount] money,
        [sub_vendor_paid_to_date] money,
        [sub_contract_start_date] date,
        [sub_contract_end_date] date,
        [sub_contract_reference_id] nvarchar(255),
        [prime_code] nvarchar(255), -- Not in Contracts_Staging
        [prime_dept] nvarchar(255), -- Not in Contracts_Staging
        [prime_registration] nvarchar(255) -- Not in Contracts_Staging
);

-- Budget
CREATE TABLE [Budget] (
        [ID] int IDENTITY(1,1) NOT NULL,
        CONSTRAINT [PK_Budget_ID] PRIMARY KEY CLUSTERED (ID),
        [StagingID] int NOT NULL, -- For syncing with the staging table, it's the FK to the staging table's [ID], but it is not enforced at the database level, but it should be enforce at the SSIS data sync level
        [LastUpdatedTimestamp] datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
        [agency] nvarchar(255),
        [year] int,
        [department] nvarchar(255),
        [expense_category] nvarchar(255),
        [budget_code] nvarchar(255),
        [budget_name] nvarchar(255),
        [budget_amounts] nvarchar(255),
        [expenditure_amounts] nvarchar(255)
);

-- Spending
CREATE TABLE [Spending] (
        [ID] int IDENTITY(1,1) NOT NULL,
        CONSTRAINT [PK_Spending_ID] PRIMARY KEY CLUSTERED (ID),
        [StagingID] int NOT NULL, -- For syncing with the staging table, it's the FK to the staging table's [ID], but it is not enforced at the database level, but it should be enforce at the SSIS data sync level
        [LastUpdatedTimestamp] datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
        [agency] nvarchar(255),
        [associated_prime_vendor] nvarchar(255),
        [capital_project] nvarchar(255),
        [contract_id] nvarchar(255),
        [contract_purpose] nvarchar(255),
        [check_amount] money,
        [department] nvarchar(255),
        [document_id] nvarchar(255),
        [expense_category] nvarchar(255),
        [fiscal_year] int,
        [industry] nvarchar(255),
        [issue_date] date,
        [mwbe_category] nvarchar(255),
        [payee_name] nvarchar(255),
        [spending_category] nvarchar(255),
        [sub_contract_reference_id] nvarchar(255),
        [sub_vendor] nvarchar(255),
        [Code] nvarchar(255), -- Not in Spending_Staging
        [Dept] nvarchar(255), -- Not in Spending_Staging
        [Registration] nvarchar(255), -- Not in Spending_Staging
        [ProjectAgency] nvarchar(255), -- Not in Spending_Staging
        [CapProj] nvarchar(255), -- Not in Spending_Staging
        [Occ] nvarchar(255) -- Not in Spending_Staging
);








-- CREATE TABLE [Revenue] (
--         [ID] int IDENTITY(1,1) NOT NULL,
--         CONSTRAINT [PK_Revenue_ID] PRIMARY KEY CLUSTERED (ID),
--         [StagingID] int NOT NULL, -- For syncing with the staging table, it's the FK to the staging table's [ID], but it is not enforced at the database level, but it should be enforce at the SSIS data sync level
--         [LastUpdatedTimestamp] datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
--         [agency] nvarchar(255),
--         [revenue_category] nvarchar(255),
--         [revenue_source] nvarchar(255),
--         [fund_class] nvarchar(255),
--         [funding_class] nvarchar(255),
--         [revenue_class] nvarchar(255),
--         [budget_fiscal_year] int,
--         [fiscal_year] int,
--         [adopted] money,
--         [modified] money,
--         [recognized] money,
--         [closing_classification_name] nvarchar(255)
-- );

-- CREATE TABLE [Payroll] (
--         [ID] int IDENTITY(1,1) NOT NULL,
--         CONSTRAINT [PK_Payroll_ID] PRIMARY KEY CLUSTERED (ID),
--         [StagingID] int NOT NULL, -- For syncing with the staging table, it's the FK to the staging table's [ID], but it is not enforced at the database level, but it should be enforce at the SSIS data sync level
--         [LastUpdatedTimestamp] datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
--         [agency] nvarchar(255),
--         [title] nvarchar(255),
--         [pay_frequency] nvarchar(255),
--         [pay_date] date,
--         [payroll_type] nvarchar(255),
--         [annual_salary] money,
--         [hourly_rate] money,
--         [gross_pay] money,
--         [base_pay] money,
--         [other_payments] money,
--         [overtime_payments] money,
--         [gross_pay_ytd] money,
--         [fiscal_year] int,
--         [calendar_year] int
-- );


