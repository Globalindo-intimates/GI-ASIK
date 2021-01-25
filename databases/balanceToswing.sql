CREATE DEFINER=`manager`@`%` FUNCTION `balanceToswing`(orderQty DECIMAL(60), sewingQty DECIMAL(60)) RETURNS decimal(40,0)
    DETERMINISTIC
BEGIN
    DECLARE balanceToswing DECIMAL(60);
        SET balanceToswing = ( orderQty - sewingQty );
	RETURN (balanceToswing);
END