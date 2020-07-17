-- Contracts
DELETE FROM dbo.Contracts
WHERE dbo.Contracts.[StagingID] = ?


-- Budget
DELETE FROM dbo.Budget
WHERE dbo.Budget.[StagingID] = ?

-- Spending
DELETE FROM dbo.Spending
WHERE dbo.Spending.[StagingID] = ?