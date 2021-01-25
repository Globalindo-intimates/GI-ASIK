CREATE DEFINER=`manager`@`%` FUNCTION `targetLiveLineSewing`(tglPeriode DECIMAL(40), OP DECIMAL (40), SAM FLOAT(7,4)) RETURNS decimal(40,0)
    DETERMINISTIC
BEGIN
    DECLARE targetLiveLineSewing DECIMAL(40);

		IF(tglPeriode = 5) THEN
			SET targetLiveLineSewing = ROUND( ((5*60)*OP)/SAM );
		
		ELSE 
			SET targetLiveLineSewing = ROUND( ((7*60)*OP)/SAM);
		END IF;
	RETURN (targetLiveLineSewing);
END