CREATE DEFINER=`manager`@`%` FUNCTION `targetMolding`(tglPeriodeMolding DECIMAL(40) , SAM DECIMAL(40)) RETURNS decimal(40,0)
    DETERMINISTIC
BEGIN
    DECLARE targetMolding DECIMAL(40);
		
		IF(tglPeriodeMolding = 1) THEN
			SET targetMolding = ROUND( (1*60)/SAM );
		ELSEIF (tglPeriodeMolding = 2) THEN
			SET targetMolding = ROUND( (2*60)/SAM );
		ELSEIF (tglPeriodeMolding = 3) THEN
			SET targetMolding = ROUND( (3*60)/SAM );
		ELSEIF (tglPeriodeMolding = 4) THEN
			SET targetMolding = ROUND( (4*60)/SAM );
		ELSEIF (tglPeriodeMolding = 5) THEN
			SET targetMolding = ROUND( (5*60)/SAM );
		ELSEIF (tglPeriodeMolding = 6) THEN
			SET targetMolding = ROUND( (6*60)/SAM );
		ELSEIF (tglPeriodeMolding = 7) THEN
			SET targetMolding = ROUND( ((7*60)/SAM) );
		END IF;
	RETURN (targetMolding);
END