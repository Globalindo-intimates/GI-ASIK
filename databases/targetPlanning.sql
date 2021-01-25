CREATE DEFINER=`manager`@`%` FUNCTION `targetPlanning`(manPower DECIMAL(40), SAM FLOAT(40)) RETURNS decimal(40,0)
    DETERMINISTIC
BEGIN
    DECLARE targetPlanning FLOAT(40);
	DECLARE  workingHour DECIMAL(40) ;
	    SET workingHour = 420;	
        SET targetPlanning = ( workingHour*manPower ) / SAM;
	RETURN (targetPlanning);
END