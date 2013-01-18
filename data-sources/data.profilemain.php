<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceprofilemain extends SectionDatasource{

		public $dsParamROOTELEMENT = 'profilemain';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'body: formatted',
				'image'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'profilemain',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://localhost:8888/ned',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-11-08T16:17:47+00:00'
			);
		}

		public function getSource(){
			return '9';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
