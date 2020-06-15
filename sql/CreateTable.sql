CREATE TABLE [Contracts] (
        [ID] int IDENTITY(1,1) NOT NULL,
        CONSTRAINT [PK_Contracts_ID] PRIMARY KEY CLUSTERED (ID),
        [StagingID] int NOT NULL, -- For syncing with the staging table, it's the FK to the staging table's [ID], but it is not enforced at the database level, but it should be enforce at the SSIS data sync level
        -- CONSTRAINT [FK_Contracts_ContractsStaging_StagingID] FOREIGN KEY ([StagingID])  -- This is commented out since Sidney's job may decide to delete from the staging table, and this constraint may prevent his job from deleteing the record cuz it's a FK on dbo.Contracts. So not using it.
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
        [sub_contract_reference_id] nvarchar(255)
);
