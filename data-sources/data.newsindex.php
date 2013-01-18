<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcenewsindex extends SectionDatasource{

		public $dsParamROOTELEMENT = 'newsindex';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '5';
		public $dsParamSTARTPAGE = '{$page}';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

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
				'name' => 'newsindex',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://nedbigham.com',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-01-10T13:06:12+00:00'
			);
		}

		public function getSource(){
			return '8';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
