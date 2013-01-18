<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceperformanceentries extends SectionDatasource{

		public $dsParamROOTELEMENT = 'performanceentries';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'order';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'artist',
				'work',
				'venue',
				'date',
				'listen'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'performanceentries',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://nedbigham.com',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-01-17T10:45:06+00:00'
			);
		}

		public function getSource(){
			return '17';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
