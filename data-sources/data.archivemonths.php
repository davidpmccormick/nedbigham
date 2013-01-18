<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcearchivemonths extends SectionDatasource{

		public $dsParamROOTELEMENT = 'archivemonths';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'13' => '1 year ago to today',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'date'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'archivemonths',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://nedbigham.com',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-01-17T18:38:02+00:00'
			);
		}

		public function getSource(){
			return '8';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
