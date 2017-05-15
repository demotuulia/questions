<?php
/**
 * A genereic database class for all database models
 */

namespace Lib;

abstract class db {

 	/**
     * Database connection
     *
     * @var mysqli
     */
	private static $conn;


 	/**
     * Constructor
     *
     * Makes connection to the database
     *
     *
     */
	public function __construct () {
          // Create a new instanse of the connection, if needed
          if (!self::$conn) {
              self::$conn = new mysqli(DB_SERVER_NAME, DB_USERNAME, DB_PASSWORD, DB_NAME);;
          }
	}


	 /**
     * Do query
     *
     * @param $sql 	string
     * @return mysqli_result
     */
	protected function query($sql) {
          $result =  self::$conn($sql);
		return $result;
	}
}