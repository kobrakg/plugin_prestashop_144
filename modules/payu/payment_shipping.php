<?php
/**
 *	ver. 0.1.2
 *	PayU Payment Modules
 *
 *	@copyright  Copyright 2012 by PayU
 *	@license    http://opensource.org/licenses/LGPL-3.0  Open Software License (LGPL 3.0)
 *	http://www.payu.com
 *	http://twitter.com/openpayu
 */
$useSSL = true;
include(dirname(__FILE__).'/../../config/config.inc.php');
include(dirname(__FILE__).'/../../header.php');
ob_clean();
$payu = new Payu();
$payu->execShipping($_REQUEST['DOCUMENT'],(int)(Tools::getValue('order')));
exit();