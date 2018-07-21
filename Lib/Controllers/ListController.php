<?php
/**
 * Controller for the question list
 *
 */

namespace Lib\Controllers;

class ListController   extends \Lib\Controller   {

	/**
	 * Render List Action

	 * @return string
	 */
	public function renderListAction(){

		$question = new \Lib\Models\Question();

		// Read from query string or set defaults (all question in English)
		$language = isset($this->request->get->language) ? $this->request->get->language : 1;
               
		$start = isset($this->request->get->start) ? $this->request->get->start : '2000-01-01 00:00:00';
		$end = isset($this->request->get->end) ? $this->request->get->end : '3000-01-01 00:00:00';

		// Do query
		$rows = $question->getList($language, $start, $end);
		
		// Render
		$viewParams = [
			'language' => $language, 
			'start' => $start, 
			'end' => $end, 
			'rows' => $rows
		];

		return $this->render('indexList', $viewParams);
		
	}

}
