CREATE DEFINER=`manager`@`%` FUNCTION `timeDurationMolding`( day VARCHAR(40), timeMolding TIME ) RETURNS decimal(20,0)
    DETERMINISTIC
BEGIN
    DECLARE timePeriodeMolding DECIMAL(20);
		
		IF day != 'Saturday' THEN -- weekDay Working Hours
			-- START SHIFT 1
			IF ( timeMolding >= '07:00:00' AND timeMolding <= '08:00:00') THEN
				SET timePeriodeMolding = 1;
			ELSEIF ( timeMolding >= '08:00:00' AND timeMolding <= '09:00:00') THEN
        SET timePeriodeMolding = 2;
			ELSEIF ( timeMolding >= '09:00:00' AND timeMolding <= '10:00:00') THEN
        SET timePeriodeMolding = 3;
			ELSEIF ( timeMolding >= '10:00:00' AND timeMolding <= '11:00:00') THEN
        SET timePeriodeMolding = 4;
			ELSEIF ( timeMolding >= '11:00:00' AND timeMolding <= '12:00:00') THEN
        SET timePeriodeMolding = 5;	
			ELSEIF ( timeMolding >= '12:00:00' AND timeMolding <= '13:00:00') THEN
        SET timePeriodeMolding = 6;	
			ELSEIF ( timeMolding >= '13:00:00' AND timeMolding <= '14:30:00') THEN
        SET timePeriodeMolding = 7;
			-- END SHIFT 1
			-- START SHIFT 2
			ELSEIF ( timeMolding >= '14:30:00' AND timeMolding <= '15:30:00') THEN
				SET timePeriodeMolding = 1;
			ELSEIF ( timeMolding >= '15:30:00' AND timeMolding <= '16:30:00') THEN
        SET timePeriodeMolding = 2;
			ELSEIF ( timeMolding >= '16:30:00' AND timeMolding <= '17:30:00') THEN
        SET timePeriodeMolding = 3;
			ELSEIF ( timeMolding >= '17:30:00' AND timeMolding <= '18:30:00') THEN
        SET timePeriodeMolding = 4;
			ELSEIF ( timeMolding >= '18:30:00' AND timeMolding <= '19:30:00') THEN
        SET timePeriodeMolding = 5;	
			ELSEIF ( timeMolding >= '19:30:00' AND timeMolding <= '20:30:00') THEN
        SET timePeriodeMolding = 6;	
			ELSEIF ( timeMolding >= '20:30:00' AND timeMolding <= '22:15:00') THEN
        SET timePeriodeMolding = 7;
			END IF;
		-- END SHIFT 2
		-- START SHIFT 3
		ELSEIF ( timeMolding >= '22:15:00' AND timeMolding <= '23:15:00') THEN
				SET timePeriodeMolding = 1;
		ELSEIF ( timeMolding >= '23:15:00' AND timeMolding <= '24:15:00') THEN
				SET timePeriodeMolding = 2;
		ELSEIF ( timeMolding >= '24:15:00' AND timeMolding <= '01:15:00') THEN
				SET timePeriodeMolding = 3;
		ELSEIF ( timeMolding >= '01:15:00' AND timeMolding <= '02:15:00') THEN
				SET timePeriodeMolding = 4;
		ELSEIF ( timeMolding >= '02:15:00' AND timeMolding <= '03:15:00') THEN
				SET timePeriodeMolding = 5;
		ELSEIF ( timeMolding >= '03:15:00' And timeMolding <= '04:15:00') THEN
				SET timePeriodeMolding = 6;
		ELSEIF ( timeMolding >= '04:15:00' AND timeMolding <= '06:15:00') THEN
				SET timePeriodeMolding = 7;
		-- END SHIFT 3
		ELSE -- weekEnd Working Hours
		-- START SHIFT 1
			IF ( timeMolding >= '07:00:00' AND timeMolding <= '08:00:00') THEN
				SET timePeriodeMolding = 1;
			ELSEIF ( timeMolding >= '08:00:00' AND timeMolding <= '09:00:00') THEN
        SET timePeriodeMolding = 2;
			ELSEIF ( timeMolding >= '09:00:00' AND timeMolding <= '10:00:00') THEN
        SET timePeriodeMolding = 3;
			ELSEIF ( timeMolding >= '10:00:00' AND timeMolding <= '11:00:00') THEN
        SET timePeriodeMolding = 4;
			ELSEIF ( timeMolding >= '11:00:00' AND timeMolding <= '12:00:00') THEN
        SET timePeriodeMolding = 5;	
			-- END SHIFT 1
			-- START SHIFT 2
			ELSEIF ( timeMolding >= '12:00:00' AND timeMolding <= '13:00:00') THEN
				SET timePeriodeMolding = 1;
			ELSEIF ( timeMolding >= '13:00:00' AND timeMolding <= '14:00:00') THEN
        SET timePeriodeMolding = 2;
			ELSEIF ( timeMolding >= '14:00:00' AND timeMolding <= '15:00:00') THEN
        SET timePeriodeMolding = 3;
			ELSEIF ( timeMolding >= '15:00:00' AND timeMolding <= '16:00:00') THEN
        SET timePeriodeMolding = 4;
			ELSEIF ( timeMolding >= '16:00:00' AND timeMolding <= '17:30:00') THEN
        SET timePeriodeMolding = 5;
			-- END SHIFT 2
			ELSEIF ( timeMolding >= '17:30:00' AND timeMolding <= '18:30:00') THEN
				SET timePeriodeMolding = 1;
			ELSEIF ( timeMolding >= '18:30:00' AND timeMolding <= '19:30:00') THEN
				SET timePeriodeMolding = 2;
			ELSEIF ( timeMolding >= '19:30:00' AND timeMolding <= '20:30:00') THEN 
				SET timePeriodeMolding = 3;
			ELSEIF ( timeMolding >= '20:30:00' AND timeMolding <= '21:30:00') THEN
				SET timePeriodeMolding = 4;
			ELSEIF ( timeMolding >= '21:30:00' AND timeMolding <= '23:00:00') THEN
				SET timePeriodeMolding = 5;
			END IF;
		END IF;
	-- Return the time Periode
	RETURN (timePeriodeMolding);
END