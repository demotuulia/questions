<?php
/**
 * A base class for all controller in the folder 'Controllers'
 */

namespace Lib;

abstract class Controller {


	/**
     * Request params
     * 
     * @var stdObject 
     */
	 protected $reguest;

	
	/**
	 * Constructor
	 *
	 */
	public function __construct() {
			$this->readRequest();
	}


	/**
	 * Read request to $this->request 
	 *
	 */
	private function readRequest() {
		$this->request = (object) [
				'get' =>  (object)$_GET ,
				'post' =>  (object)$_POST,
			];
	}


	/**
	 * Render a view
	 *
	 * @param $view   		string  	A view in folder '/Views' (withou php extension)
	 * @param $viewParams	array      	Params to be rendered in the view
	 * @return string
	 */
	protected function render($view, $viewParams) {
		// make $viewParams visible in the view
		$_GLOBALS['viewParams'] = $viewParams;

		// render
	 	ob_start();
	    include(VIEW_PATH .  $view . '.php');
	    $html = ob_get_contents(); 
	    ob_end_clean();

	    return $html;
	}
}