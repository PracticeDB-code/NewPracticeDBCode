CREATE PROCEDURE BusTickectCollection
 @BusID INT,
 @RoutID INT
 AS 
BEGIN
SET NOCOUNT ON;
		SELECT StageID,
			StartStageName,
			EndStageName 
		FROM PriceList 
		WHERE BusId = @busid 
		AND RoutID = @routid
  SET NOCOUNT OFF;
END