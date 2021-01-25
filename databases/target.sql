CREATE DEFINER=`manager`@`%` FUNCTION `target`(tglPeriode DECIMAL(40) , OP DECIMAL (40), SAM DECIMAL(40)) RETURNS decimal(40,0)
    DETERMINISTIC
BEGIN
    DECLARE target DECIMAL(40);
		
		IF(tglPeriode = 1) THEN
			SET target = ROUND( ((1*60)*OP)/SAM );
		ELSEIF (tglPeriode = 2) THEN
			SET target = ROUND( ((2*60)*OP)/SAM );
		ELSEIF (tglPeriode = 3) THEN
			SET target = ROUND( ((3*60)*OP)/SAM );
		ELSEIF (tglPeriode = 4) THEN
			SET target = ROUND(  ((4*60)*OP)/SAM );
		ELSEIF (tglPeriode = 5) THEN
			SET target = ROUND( ((5*60)*OP)/SAM );
		ELSEIF (tglPeriode = 6) THEN
			SET target = ROUND(((6*60)*OP)/SAM );
		ELSEIF (tglPeriode = 7) THEN
			SET target = ROUND( (((7*60)*OP)/SAM) );
		END IF;
	RETURN (target);
END