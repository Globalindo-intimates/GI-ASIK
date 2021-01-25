SELECT
	`osew`.`line` AS `line`,
	`osew`.`tgl` AS `tgl`,
	sum( `osew`.`center_panel_op` + `osew`.`back_wings_op` + `osew`.`cups_op` + `osew`.`assembly_op` ) AS `OP` 
FROM
	`output_sewing` `osew` 
GROUP BY
	`osew`.`line`,
	`osew`.`tgl` 
ORDER BY
	`osew`.`tgl` DESC