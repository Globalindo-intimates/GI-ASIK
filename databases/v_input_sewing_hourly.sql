SELECT
	`input_sewing`.`line` AS `line`,
	`input_sewing`.`tgl` AS `tgl`,
	`input_sewing`.`center_panel_sam` + `input_sewing`.`back_wings_sam` + `input_sewing`.`cups_sam` + `input_sewing`.`assembly_sam` AS `SAM` 
FROM
	`input_sewing` 
ORDER BY
	`input_sewing`.`tgl` DESC