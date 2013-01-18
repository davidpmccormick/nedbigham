<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcenewsyear extends SectionDatasource{

		public $dsParamROOTELEMENT = 'newsyear';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '5';
		public $dsParamSTARTPAGE = '{$page}';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamREQUIREDPARAM = '$year';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'13' => '{$year}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'title',
				'excerpt: formatted',
				'date'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'newsyear',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://nedbigham.com',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-01-17T15:17:11+00:00'
			);
		}

		public function getSource(){
			return '8';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
