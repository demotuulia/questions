<?php
/**
 * A class for the business rules to hande questions
 *
 */
namespace Lib\Models;

class Question  extends \Lib\db {


    /**
     * Constructor
     *
     */
	public function __construct() {
	}


	/**
     * get List
     *
     * @param language 	int 	 	id from table 'languages'
     * @param start     string      time in MYSQL format
     * @param end     	string      time in MYSQL format
     * @return array    			found rows
     */
	public function getList($language, $start, $end) {
	
                    
		$sql  = '
		SELECT `RA`.* , `R`.`name`, QT.`title`
		FROM `respondent_answer` RA
		JOIN `respondent` R ON (`R`.`id` =  `RA`.`respondent_id` )
		JOIN `question_translations` QT 
		ON (
			`QT`.`language_id` =  `RA`.`language_id` 
			AND  `RA`.`question_id` = `QT`.`question_id`
			AND  `RA`.`question_version` = `QT`.`question_version`
		)
		WHERE `RA`.time_stamp >=  "' . $start . '"
		AND `RA`.time_stamp <=  "' . $end . '"
		AND `RA`.language_id =  "' . $language . '"
		ORDER BY `time_stamp` ';

		// debug
		//echo ("<pre>$sql</pre>");
		
		$result = $this->query($sql);
		$rows = [];

		while($row = $result->fetch_assoc()) {
			$rows[] = $row;
		}

		return $rows; 
	}

}