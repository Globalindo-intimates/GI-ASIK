CREATE DEFINER=`manager`@`%` FUNCTION `targetEffLineSewing`(tglPeriode DECIMAL(40), OP DECIMAL (40), SAM FLOAT(7,4), outputSewing DECIMAL(40)) RETURNS decimal(40,0)
    DETERMINISTIC
BEGIN
    DECLARE targetEffLineSewing DECIMAL(40);

		IF(tglPeriode = 5) THEN
			SET targetEffLineSewing = ROUND( ((outputSewing*SAM)/ (5*60*OP))*100 );
		
		ELSE 
			SET targetEffLineSewing = ROUND( ((outputSewing*SAM)/ (7*60*OP))*100 );
		END IF;
	RETURN (targetEffLineSewing);
END