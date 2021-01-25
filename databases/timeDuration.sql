CREATE DEFINER=`manager`@`%` FUNCTION `timeDuration`( day VARCHAR(40), timeAssembly TIME ) RETURNS decimal(20,0)
    DETERMINISTIC
BEGIN
    DECLARE timePeriode DECIMAL(20);
		
		IF day != 'Saturday' THEN -- weekDay Working Hours
			-- START SHIFT 1
			IF ( timeAssembly >= '07:00:00' AND timeAssembly <= '08:00:00') THEN
				SET timePeriode = 1;
			ELSEIF ( timeAssembly >= '08:00:00' AND timeAssembly <= '09:00:00') THEN
        SET timePeriode = 2;
			ELSEIF ( timeAssembly >= '09:00:00' AND timeAssembly <= '10:00:00') THEN
        SET timePeriode = 3;
			ELSEIF ( timeAssembly >= '10:00:00' AND timeAssembly <= '11:00:00') THEN
        SET timePeriode = 4;
			ELSEIF ( timeAssembly >= '11:00:00' AND timeAssembly <= '12:00:00') THEN
        SET timePeriode = 5;	
			ELSEIF ( timeAssembly >= '12:00:00' AND timeAssembly <= '13:00:00') THEN
        SET timePeriode = 6;	
			ELSEIF ( timeAssembly >= '13:00:00' AND timeAssembly <= '14:30:00') THEN
        SET timePeriode = 7;
			-- END SHIFT 1
			-- START SHIFT 2
			ELSEIF ( timeAssembly >= '14:30:00' AND timeAssembly <= '15:30:00') THEN
				SET timePeriode = 1;
			ELSEIF ( timeAssembly >= '15:30:00' AND timeAssembly <= '16:30:00') THEN
        SET timePeriode = 2;
			ELSEIF ( timeAssembly >= '16:30:00' AND timeAssembly <= '17:30:00') THEN
        SET timePeriode = 3;
			ELSEIF ( timeAssembly >= '17:30:00' AND timeAssembly <= '18:30:00') THEN
        SET timePeriode = 4;
			ELSEIF ( timeAssembly >= '18:30:00' AND timeAssembly <= '19:30:00') THEN
        SET timePeriode = 5;	
			ELSEIF ( timeAssembly >= '19:30:00' AND timeAssembly <= '20:30:00') THEN
        SET timePeriode = 6;	
			ELSEIF ( timeAssembly >= '20:30:00' AND timeAssembly <= '22:15:00') THEN
        SET timePeriode = 7;
			END IF;
		-- END SHIFT 2
		ELSE -- weekEnd Working Hours
		-- START SHIFT 1
			IF ( timeAssembly >= '07:00:00' AND timeAssembly <= '08:00:00') THEN
				SET timePeriode = 1;
			ELSEIF ( timeAssembly >= '08:00:00' AND timeAssembly <= '09:00:00') THEN
        SET timePeriode = 2;
			ELSEIF ( timeAssembly >= '09:00:00' AND timeAssembly <= '10:00:00') THEN
        SET timePeriode = 3;
			ELSEIF ( timeAssembly >= '10:00:00' AND timeAssembly <= '11:00:00') THEN
        SET timePeriode = 4;
			ELSEIF ( timeAssembly >= '11:00:00' AND timeAssembly <= '12:00:00') THEN
        SET timePeriode = 5;	
			-- END SHIFT 1
			-- START SHIFT 2
			ELSEIF ( timeAssembly >= '12:00:00' AND timeAssembly <= '13:00:00') THEN
				SET timePeriode = 1;
			ELSEIF ( timeAssembly >= '13:00:00' AND timeAssembly <= '14:00:00') THEN
        SET timePeriode = 2;
			ELSEIF ( timeAssembly >= '14:00:00' AND timeAssembly <= '15:00:00') THEN
        SET timePeriode = 3;
			ELSEIF ( timeAssembly >= '15:00:00' AND timeAssembly <= '16:00:00') THEN
        SET timePeriode = 4;
			ELSEIF ( timeAssembly >= '16:00:00' AND timeAssembly <= '17:30:00') THEN
        SET timePeriode = 5;	
			END IF;
		END IF;
	-- Return the time Periode
	RETURN (timePeriode);
END