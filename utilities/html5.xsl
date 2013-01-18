<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/headerimages.xsl"/>

<xsl:output method="html" omit-xml-declaration="yes" indent="no" />

<xsl:variable name="is-logged-in" select="/data/events/login-info/@logged-in"/>

<xsl:template match="/">
	<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!DOCTYPE html<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
	<html lang="en">
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
			<meta charset="utf-8" />
			<meta name="title" content="{$page-title}" />
			<meta name="description" content="" />
			<meta name="tags" content="" />
			<title><xsl:call-template name="page-title"/></title>
			
			<script type="text/javascript" src="//use.typekit.net/njz2hlc.js"></script>
			<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
			

			<link rel="shortcut icon" href="/favicon.ico" />
			<link rel="icon" type="images/png" href="{$workspace}/assets/images/favicon.png" />
			<link rel="stylesheet" media="screen" href="{$workspace}/css/bootstrap.min.css" />
			<link rel="stylesheet" media="screen" href="{$workspace}/css/bootstrap-responsive.min.css" />
			<link rel="stylesheet" media="screen" href="{$workspace}/css/ned.css" />
			
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
			<script src="{$workspace}/js/jquery.sticky.js"></script>
			<script src="{$workspace}/js/froogaloop.js"></script>
			
			<xsl:comment><![CDATA[[if lt IE 9]><script type="text/javascript" src="]]><xsl:value-of select="$root"/><![CDATA[/workspace/js/html5shiv.min.js"></script><![endif]]]></xsl:comment>
			<xsl:comment><![CDATA[[if (gte IE 6)&(lte IE 8)]><script type="text/javascript" src="]]><xsl:value-of select="$root"/><![CDATA[/workspace/js/selectivizr.min.js"></script><![endif]]]></xsl:comment>
		</head>
		
		<body id="{$current-page}-page">
			<div class="container relative">
			
				<!-- navbar for phones only -->
				<div class="navbar navbar-fixed-top visible-phone">
				  <div class="navbar-inner">
				    <div class="container" style="padding-bottom:20px;">
				    	<span style="float:left;margin-left:10px;margin-top:10px;">
				    		<a href="{$root}">
					    		<div class="logomobile"></div>
				    		</a>
				    	</span>
				      <span style="float:right;margin-right:10px;cursor:pointer;padding-top:25px;" data-toggle="collapse" data-target=".nav-collapse">
				        <p>menu</p>
				      </span>
				      <div class="nav-collapse collapse phonenav" style="height: 0px; ">
				        <xsl:apply-templates select="data/navigation">
				        	<xsl:with-param name="linebreak" select="'no'" />
				        </xsl:apply-templates>
				      </div>
				    </div>
				  </div>
				</div>
				<!-- end of phone navbar -->

				<header class="header">
					<div class="headerstrip hidden-phone">
						<a href="{$root}"><img style="border:none;padding-left:20px;padding-top:10px;filter: none; -webkit-filter: grayscale(0%);" src="{$workspace}/assets/images/logo.png" /></a>
					</div>
					<div class="topbar hidden-phone"></div>
					<div class="row clearfix">
						<div class="span12 clearfix">
							<div class="headerimagecontainer">
								<div id="imagetitle" class="hidden-phone"><xsl:value-of select="//item[1]/attribution" /></div>
								<div class="cyclethis">
									<xsl:call-template name="headerimages" />
								</div>
							</div>
						</div>
					</div>
				</header>
				
				<div class="row menucontainer">
					<div class="span12">
						<nav id="sticker" class="nav hidden-phone">
							<xsl:apply-templates select="data/navigation"/>
						</nav>
					</div>
				</div>
				
				<section class="relative" style="z-index:30;background:#fff;">
					<div id="content">
						<xsl:apply-templates/>
					</div>
	
					<footer class="footer padleftright clearfix" style="background:#fff!important;">
						<small style="float:left;margin-bottom:20px;">&#169;<xsl:value-of select="$this-year"/> Ned Bigham</small>
						<small style="float:right;margin-bottom:20px;">Site by <a href="http://www.sumnoise.com">DMC</a></small>
					</footer>
					
				</section>
				
			</div> <!-- end .container -->
			
			<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
			<script src="{$workspace}/js/bootstrap.min.js"></script>
			<script src="{$workspace}/js/jquery.cycle.min.js"></script>
			<script src="{$workspace}/js/ned.js"></script>
			<script src="{$workspace}/js/onmediaquery.min.js"></script>
			<script src="{$workspace}/js/mqchange.js"></script>
			<script src="{$workspace}/js/modernizr.js"></script>
			<!-- only load audio js files on listen page -->
			<xsl:if test="$current-page-id = 3">
				<script src="{$workspace}/js/audiojs/audio.min.js"></script>
				<script src="{$workspace}/js/nedaudio.js"></script>
			</xsl:if>
			<script type="text/javascript">
			
			  var _gaq = _gaq || [];
			  _gaq.push(['_setAccount', 'UA-37386011-1']);
			  _gaq.push(['_trackPageview']);
			
			  (function() {
			    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			  })();
			
			</script>
		</body>
	</html>
</xsl:template>

<xsl:strip-space elements="*"/>

</xsl:stylesheet>