<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcenewsview extends SectionDatasource{

		public $dsParamROOTELEMENT = 'newsview';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'yes';
		public $dsParamREQUIREDPARAM = '$title';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'11' => '{$title}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'story: formatted',
				'date',
				'images: image'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'newsview',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://localhost:8888/ned',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-11-08T08:59:44+00:00'
			);
		}

		public function getSource(){
			return '8';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
