<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceworksentries extends SectionDatasource{

		public $dsParamROOTELEMENT = 'worksentries';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'year';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'artist',
				'track',
				'label',
				'format',
				'year',
				'role',
				'listen'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'worksentries',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://nedbigham.com',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-01-10T11:45:12+00:00'
			);
		}

		public function getSource(){
			return '15';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
