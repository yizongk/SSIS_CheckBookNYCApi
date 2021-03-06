/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ID]
      ,[StagingID]
      ,[LastUpdatedTimestamp]
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
      --,[Code]
      --,[Dept]
      --,[Registration]
	  --*** Here is the new [Code], [Dept] and [Registration] columns
	  --*** Also [capital_project] column is broken down to three new columns:
	  --*** [ProjectAgency], [CapProj] and [Occ]
	  ,CASE
        WHEN LEFT([contract_id],3)='CT1'  THEN 'CT1'
	    WHEN LEFT([contract_id],4)='CTA1' THEN 'CTA1'
	    WHEN LEFT([contract_id],3)='DO1'  THEN 'DO1'
	    WHEN LEFT([contract_id],4)='MMA1' THEN 'MMA1'
	    WHEN LEFT([contract_id],3)='RCT1' THEN 'RCT1'
	    WHEN LEFT([contract_id],4)='PRC2' THEN 'PRC2'
	    WHEN LEFT([contract_id],3)='POD'  THEN 'POD'
	    WHEN LEFT([contract_id],3)='POC'  THEN 'POC'
	    WHEN LEFT([contract_id],4)='PON1' THEN 'PON1'
	    WHEN LEFT([contract_id],4)='PRM1' THEN 'PRM1'
	    WHEN LEFT([contract_id],4)='PCC1' THEN 'PCC1'
	    WHEN LEFT([contract_id],4)='CTA2' THEN 'CTA2'
	    WHEN LEFT([contract_id],5)='RTGPF'THEN 'RTGPF'
       ELSE 'N/A'
	   END AS [Code]
	 
	  ,CASE
        WHEN LEFT([contract_id],3)='CT1'  THEN SUBSTRING([contract_id],4,3)
	    WHEN LEFT([contract_id],4)='CTA1' THEN SUBSTRING([contract_id],5,3)
  	    WHEN LEFT([contract_id],3)='DO1'  THEN SUBSTRING([contract_id],4,3)
	    WHEN LEFT([contract_id],4)='MMA1' THEN SUBSTRING([contract_id],5,3)
	    WHEN LEFT([contract_id],3)='RCT1' THEN SUBSTRING([contract_id],4,3)
	    WHEN LEFT([contract_id],4)='PRC2' THEN SUBSTRING([contract_id],5,3)
	    WHEN LEFT([contract_id],3)='POD'  THEN SUBSTRING([contract_id],4,3)
	    WHEN LEFT([contract_id],3)='POC'  THEN SUBSTRING([contract_id],4,3)
	    WHEN LEFT([contract_id],4)='PON1' THEN SUBSTRING([contract_id],5,3)
	    WHEN LEFT([contract_id],4)='PRM1' THEN SUBSTRING([contract_id],5,3)
	    WHEN LEFT([contract_id],4)='PCC1' THEN SUBSTRING([contract_id],5,3)
	    WHEN LEFT([contract_id],4)='CTA2' THEN SUBSTRING([contract_id],5,3)
	    WHEN LEFT([contract_id],5)='RTGPF'THEN SUBSTRING([contract_id],6,3)
       ELSE 'N/A'
	   END AS [Dept]

	  ,CASE
        WHEN LEFT([contract_id],3)='CT1'  THEN SUBSTRING([contract_id],7,11)
	    WHEN LEFT([contract_id],4)='CTA1' THEN SUBSTRING([contract_id],8,11)
   	    WHEN LEFT([contract_id],3)='DO1'  THEN SUBSTRING([contract_id],7,11)
	    WHEN LEFT([contract_id],4)='MMA1' THEN SUBSTRING([contract_id],9,11)
	    WHEN LEFT([contract_id],3)='RCT1' THEN SUBSTRING([contract_id],8,11)
	    WHEN LEFT([contract_id],4)='PRC2' THEN SUBSTRING([contract_id],8,11)
	    WHEN LEFT([contract_id],3)='POD'  THEN SUBSTRING([contract_id],7,11)
	    WHEN LEFT([contract_id],3)='POC'  THEN SUBSTRING([contract_id],7,11)
	    WHEN LEFT([contract_id],4)='PON1' THEN SUBSTRING([contract_id],8,11)
	    WHEN LEFT([contract_id],4)='PRM1' THEN SUBSTRING([contract_id],8,11)
	    WHEN LEFT([contract_id],4)='PCC1' THEN SUBSTRING([contract_id],8,11)
	    WHEN LEFT([contract_id],4)='CTA2' THEN SUBSTRING([contract_id],8,11)
	    WHEN LEFT([contract_id],5)='RTGPF'THEN SUBSTRING([contract_id],9,11)
       ELSE 'N/A'
	   END AS [Registration]

	  , LEFT(capital_project,3) AS [ProjectAgency]

	  ,CASE
	    WHEN Len([capital_project]) IS NOT NULL THEN RTRIM(SUBSTRING([capital_project],4,9))
       END AS [CapProj]
      , RIGHT(capital_project,3) AS [Occ]
  FROM [CheckBookNYC].[dbo].[Spending]