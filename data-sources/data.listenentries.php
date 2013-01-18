<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcelistenentries extends SectionDatasource{

		public $dsParamROOTELEMENT = 'listenentries';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'order';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'tracks: title',
				'tracks: file',
				'artwork: image'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'listenentries',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://nedbigham.com/beta',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-12-18T10:03:36+00:00'
			);
		}

		public function getSource(){
			return '12';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
