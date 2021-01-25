<?php

class User_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function getDataAbsensi(){
        $this->load->library('session');
        $data =   $this->session->all_userdata(); 
        $rst = "SELECT
                    dvc0004.NIK AS NIK,
                    emp0003.`Name` AS `Name`,
                    LEFT((`dvc0004`.`Enroll`),10) AS tgl,
                    emp0001.DepartmentDesc,
                    Min(RIGHT((`dvc0004`.`Enroll`),8)) AS masuk,
                    Max(RIGHT((`dvc0004`.`Enroll`),8)) AS pulang,
                    emp0003.Shift_ID,
                    emp0003.EmployeeID,
                    emp0005.GroupID,
                    emp0004.GroupDesc
                FROM
                (emp0003
                JOIN dvc0004 ON (dvc0004.NIK = emp0003.NIK))
                INNER JOIN emp0001 ON emp0003.DepartmentID = emp0001.DepartmentID
                INNER JOIN emp0005 ON emp0005.EmployeeID = emp0003.EmployeeID
                INNER JOIN emp0004 ON emp0005.GroupID = emp0004.GroupID
                WHERE
                    dvc0004.NIK AND
                    (((((((((((LEFT((`dvc0004`.`Enroll`),10)) BETWEEN '2020-01-01' AND '2020-01-23'))))))))))
                AND emp0003.NIK = 08040270
                GROUP BY
                     LEFT((`dvc0004`.`Enroll`),10),
                    dvc0004.NIK
                ORDER BY
                    emp0001.DepartmentDesc ASC,
                    `GroupDesc` ASC, LEFT((`dvc0004`.`Enroll`),10) ASC ";
        $query = $this->load->db->query($rst);
        return $query->result_array();
    }
}