<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcecontactinfo extends SectionDatasource{

		public $dsParamROOTELEMENT = 'contactinfo';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'information: formatted'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'contactinfo',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://localhost:8888/ned',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-11-08T17:06:42+00:00'
			);
		}

		public function getSource(){
			return '13';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
