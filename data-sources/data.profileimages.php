<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceprofileimages extends SectionDatasource{

		public $dsParamROOTELEMENT = 'profileimages';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'images: image',
				'images: attribution'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'profileimages',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://nedbigham.com/beta',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-12-17T15:06:37+00:00'
			);
		}

		public function getSource(){
			return '3';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
