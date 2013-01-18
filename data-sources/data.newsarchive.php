<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcenewsarchive extends SectionDatasource{

		public $dsParamROOTELEMENT = 'newsarchive';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamREQUIREDPARAM = '$date';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'13' => '{$date}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
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
				'name' => 'newsarchive',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://localhost:8888/ned',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-10-26T16:15:10+00:00'
			);
		}

		public function getSource(){
			return '8';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
