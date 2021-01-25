CREATE DEFINER=`manager`@`%` FUNCTION `workDayNeeded`(balanceToSwing DECIMAL(60), target DECIMAL(60)) RETURNS decimal(40,0)
    DETERMINISTIC
BEGIN
    DECLARE workDayNeeded DECIMAL(60);
        SET workDayNeeded = ( balanceToSwing / target );
	RETURN (round(workDayNeeded ,0));
END