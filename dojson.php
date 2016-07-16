<?php
	// Phonegap stuff
	header('Access-Control-Allow-Origin: *');
	
	function query($db,$sql,$resType = MYSQLI_ASSOC){
		$query = $db->query($sql);
		if(!$query)
			die($db->error);
		return $query->fetch_all($resType);
	}
/*
	function unTag($i){
		if(is_array($i))
			foreach($i as $k=>$v)
				$i[$k] = unTag($v);
		return htmlspecialchars("<b>ciao</b>");
	}

*/
	if($_SERVER['HTTP_HOST'] != 'www.marveldad.altervista.org' && $_SERVER['HTTP_HOST'] != 'marveldad.altervista.org'){
		define('DEVELOPMENT',true);
		define('ROOT',realpath($_SERVER['DOCUMENT_ROOT']).'/hypermedia/');
	}else{
		define('DEVELOPMENT',false);
		define('ROOT','');
		//define('ROOT',realpath($_SERVER['DOCUMENT_ROOT']).'/');
	}
	require_once ROOT.'core/connect.php';
	// doJson.php?get=prodotti
	// doJson.php?get=singleproduct&pid=
	
	
	define('TAB_PRODOTTI','devices');
	define('TAB_IMMAGINI','immagini');
	define('TAB_IMGPROD','imagesindevices');
	define('TAB_SL','smartlife');
	define('TAB_FAQ_SL','faqsmartlife');
	define('TAB_DEV_IN_SL','devicesinsl');
	define('TAB_CATEGORIES','categories');
	define('TAB_ASSISTENZA','assistenza');
	define('TAB_DEV_IN_ASS','devicesinassistenza');
	
	
	
	$toJ = "";
	foreach($_GET as $k=>$v){
		$_GET[$k] = $db->real_escape_string($v);
	}
	foreach($_POST as $k=>$v){
		$_GET[$k] = $db->real_escape_string($v);
	}
	if(isset($_GET['get'])){
		if( $_GET['get'] == 'prodotti'){
			
			$sql = "SELECT * FROM devices";
			
			$query = $db->query($sql);
			$telefoni = $query->fetch_all(MYSQLI_ASSOC);
			$toJ = $telefoni;
			//echo '<pre>',print_r($telefoni,true),'</pre>';
		}elseif($_GET['get'] == 'singleproduct'){
			
			$pid = (int)$_GET['pid'];
			$sql = "SELECT p.*,c.categoria FROM ".TAB_PRODOTTI." p 
			JOIN ".TAB_CATEGORIES." c 
			ON rifCategoria = idCategoria 
			WHERE idProdotto = ".$pid;
			
			$query = $db->query($sql);
			$telefoni = $query->fetch_all(MYSQLI_ASSOC);
			if(empty($telefoni))
				die(json_encode('No devices found', JSON_NUMERIC_CHECK));
			$sqlImmagini = "SELECT src FROM ".TAB_IMGPROD." WHERE rifDevice ={$pid}";
			$queryImmagini = $db->query($sqlImmagini);
			$immagini = $queryImmagini->fetch_all(MYSQLI_ASSOC);
			
			$ret = $telefoni[0];
			$ret['immagini'] = $immagini;
			
			// Check same category!
			if(isset($_GET['getpromo'])){
				$sqlPromo = "SELECT idProdotto FROM ".TAB_PRODOTTI." WHERE ( 
					idProdotto = IFNULL((SELECT MIN(idProdotto) FROM ".TAB_PRODOTTI." WHERE idProdotto > {$pid} AND inPromo = 1),0) 
					OR idProdotto = IFNULL((SELECT MAX(idProdotto) FROM ".TAB_PRODOTTI." WHERE idProdotto < {$pid} AND inPromo = 1),0)
					)";
				//$sqlPromo = "SELECT a.idProdotto AS nextPromo,  b.idProdotto AS prevPromo FROM ".TAB_PRODOTTI." a, ".TAB_PRODOTTI." b WHERE a.inPromo =1 AND b.inPromo = 1 AND ({$pid}<a.idProdotto) AND ({$pid}>b.idProdotto)";
				$queryPromo = $db->query($sqlPromo);
				$promo = $queryPromo->fetch_all(MYSQLI_NUM);
				if(isset($promo[0]) && isset($promo[1])){
					$ret['promoPrev'] = $promo[0][0];
					$ret['promoNext'] = $promo[1][0];
				}elseif(!isset($promo[1])){
					if($promo[0][0] > $pid)
						$ret['promoNext'] = $promo[0][0];
					else
						$ret['promoPrev'] = $promo[0][0];
				}
			}
			
			// Get prev & next device of same cat
			$sqlCat = "SELECT idProdotto FROM ".TAB_PRODOTTI." WHERE ( 
					idProdotto = IFNULL((SELECT MIN(idProdotto) FROM ".TAB_PRODOTTI." WHERE idProdotto > {$pid} AND rifCategoria = ".$db->real_escape_string($ret['rifCategoria'])."),0) 
					OR idProdotto = IFNULL((SELECT MAX(idProdotto) FROM ".TAB_PRODOTTI." WHERE idProdotto < {$pid} AND rifCategoria = ".$db->real_escape_string($ret['rifCategoria'])."),0)
					)";
			$queryCat = $db->query($sqlCat);
			$cat = $queryCat->fetch_all(MYSQLI_NUM);
			if(isset($cat[0]) && isset($cat[1])){
					$ret['prevInCat'] = $cat[0][0];
					$ret['nextInCat'] = $cat[1][0];
			}elseif(isset($cat[0]) && !isset($cat[1])){
				if($cat[0][0] > $pid)
					$ret['nextInCat'] = $cat[0][0];
				else
					$ret['prevInCat'] = $cat[0][0];
			}
			
			// Get previous SL name if needed
			if(isset($_GET['getslname'])){
				$pSL = query($db,"SELECT nome FROM ".TAB_SL." WHERE idSmartLife = ".(int)$_GET['getslname']);
				$ret['prevSLName'] = empty($pSL) ? null : $pSL[0]['nome'];
			}
			
			// Get associated SL
			$featSLSql = "SELECT idSmartLife, nome, abstract, image, promo 
			FROM ".TAB_SL." 
			JOIN ".TAB_DEV_IN_SL." ON rifSmartLife = idSmartLife 
			WHERE rifDevice = {$pid}
			ORDER BY promo DESC";
			$featSL = query($db,$featSLSql);
			$ret['sls'] = $featSL;
			
			// Get associated AssServices
			$featAssSql = "SELECT idAssistenza, nome, abstract 
			FROM ".TAB_ASSISTENZA." 
			JOIN ".TAB_DEV_IN_ASS." ON rifAssistenza = idAssistenza 
			WHERE rifDevice = {$pid} 
			ORDER BY faq DESC";
			$featAss = query($db,$featAssSql);
			$ret['ass'] = $featAss;
			
			$toJ = $ret;
			
		}elseif($_GET['get'] == 'promo'){
			
			// SIMPLE JOIN: there must be an image for a device in promotion
			$sql = "SELECT * FROM ".TAB_PRODOTTI." p JOIN ".TAB_IMGPROD." pi ON pi.rifDevice = p.idProdotto WHERE inPromo = 1 GROUP BY idProdotto";
			$query = $db->query($sql);
			if(!$query)
				die($db->error);
			$promo = $query->fetch_all(MYSQLI_ASSOC);
			$toJ = $promo;
		
		}elseif($_GET['get'] == 'singlesl'){
			
			$sid =$_GET['sid'];
			$sqlSl = "SELECT * FROM ".TAB_SL." JOIN ".TAB_CATEGORIES." ON rifCategoria = idCategoria WHERE idSmartLife = {$sid}";
			$querySl = $db->query($sqlSl);
			if(!$querySl)
				die($db->error);
			$sl = $querySl->fetch_all(MYSQLI_ASSOC);
			$sl = $sl[0];
			
			$sqlFaq = "SELECT * FROM ".TAB_FAQ_SL." WHERE rifSmartLife = {$sid}";
			$queryFaq = $db->query($sqlFaq);
			if(!$queryFaq)
				die($db->error);
			$faq = $queryFaq->fetch_all(MYSQLI_ASSOC);
			
			$sl['faq'] = $faq;
			
			// Get the devices associated 
			
			$sqlDevInSl = "SELECT idProdotto, d.nome, prezzo, spec1, spec2, spec3, spec4, d.inPromo, id.src as image 
			FROM ".TAB_PRODOTTI." d JOIN ".TAB_DEV_IN_SL." dis ON dis.rifDevice = d.idProdotto 
			JOIN ".TAB_SL." s ON dis.rifSmartLife = s.idSmartLife 
			JOIN ".TAB_IMGPROD." id ON id.rifDevice = d.idProdotto 
			WHERE s.idSmartLife = {$sid} 
			GROUP BY idProdotto
			ORDER BY d.inPromo";
			$queryDevInSl = $db->query($sqlDevInSl);
			if(!$queryDevInSl)
				die($db->error);
			$devInSl = $queryDevInSl->fetch_all(MYSQLI_ASSOC);
			
			$sl['assDevices'] = $devInSl;
			
			
			// Get prev & next SL of same cat
			$sqlPNCat = "SELECT idSmartLife FROM ".TAB_SL." WHERE ( 
					idSmartLife = IFNULL((SELECT MIN(idSmartLife) FROM ".TAB_SL." WHERE idSmartLife > {$sid} AND rifCategoria = ".$db->real_escape_string($sl['rifCategoria'])."),0) 
					OR idSmartLife = IFNULL((SELECT MAX(idSmartLife) FROM ".TAB_SL." WHERE idSmartLife < {$sid} AND rifCategoria = ".$db->real_escape_string($sl['rifCategoria'])."),0)
					)";
			$cat = query($db,$sqlPNCat,MYSQLI_NUM);
			if(isset($cat[0]) && isset($cat[1])){
					$sl['prevInCat'] = $cat[0][0];
					$sl['nextInCat'] = $cat[1][0];
			}elseif(!isset($cat[1])){
				if($cat[0][0] > $sid)
					$sl['nextInCat'] = $cat[0][0];
				else
					$sl['prevInCat'] = $cat[0][0];
			}
			
			$toJ = $sl;
			
		}elseif($_GET['get'] == 'slbycat' && isset($_GET['catid'])){
			if($_GET['catid'] > 0){
				$idCat = $_GET['catid'];
				$resCat = query($db,"SELECT categoria AS nomeCategoria FROM ".TAB_CATEGORIES." WHERE idCategoria = {$idCat} AND tipo = 's' LIMIT 1");
				$toJ['categoria'] = $resCat[0];
				$where = "WHERE rifCategoria = {$idCat} ";
			}else{
				$toJ['categoria']['nomeCategoria'] = 'Servizi in promozione';
				$where = ' WHERE promo = 1';
			}
			$sqlSLByCat = "SELECT idSmartLife,nome,abstract,image,categoria,promo 
			FROM ".TAB_SL." JOIN ".TAB_CATEGORIES." ON rifCategoria = idCategoria 
			{$where} 
			ORDER BY promo DESC";
			$resSLByCat = query($db,$sqlSLByCat);
			
			$toJ['sls'] = $resSLByCat;
			
		}elseif($_GET['get'] == 'devicesbycat' && isset($_GET['catid'])){
			$where = '';
			if($_GET['catid'] > 0){
				$idCat = $_GET['catid'];
				$resCat = query($db,"
				SELECT categoria AS nomeCategoria
				FROM ".TAB_CATEGORIES." 
				WHERE idCategoria = {$idCat} 
				AND tipo = 'd' LIMIT 1");
				$toJ['categoria'] = $resCat[0];
				$where = " WHERE rifCategoria = {$idCat} ";
			}else{
				$toJ['categoria']['nomeCategoria'] = 'Prodotti in promozione';
				$where = ' WHERE inPromo = 1 ';
			}
			$sqlDevicesByCat = "SELECT idProdotto, nome, prezzo, marca, inPromo, src, spec1, spec2, spec3, spec4
				FROM ".TAB_PRODOTTI." 
				JOIN ".TAB_IMGPROD."  ON idProdotto = rifDevice 
				{$where}
				GROUP BY idProdotto
				ORDER BY inPromo DESC";
			$resDevicesByCat = query($db,$sqlDevicesByCat);
			$toJ['devices'] = $resDevicesByCat;
		
		}elseif($_GET['get'] == 'singleass' && isset($_GET['aid'])){
			$aid = (int)$_GET['aid'];
			$sql = "SELECT *, categoria FROM ".TAB_ASSISTENZA." 
			JOIN ".TAB_CATEGORIES." 
			ON rifCategoria = idCategoria 
			WHERE idAssistenza = {$aid}";
			$singleA = query($db,$sql);
			
			$sqlAssociatedDevices = "SELECT p.idProdotto, p.nome 
			FROM ".TAB_PRODOTTI." p 
			JOIN ".TAB_DEV_IN_ASS." dia 
			ON p.idProdotto = dia.rifDevice 
			WHERE dia.rifAssistenza = {$aid} 
			ORDER BY nome";
			
			$associatedDevices = query($db,$sqlAssociatedDevices);
			
			// Get previous Device name if needed
			if(isset($_GET['getdevname'])){
				$pDev = query($db,"SELECT nome FROM ".TAB_PRODOTTI." WHERE idProdotto= ".(int)$_GET['getdevname']);
				$toJ['prevDevName'] = empty($pDev) ? null : $pDev[0]['nome'];
			}
			
			$toJ['assistenza'] = $singleA[0];
			$toJ['devices'] = $associatedDevices;
			
		}elseif($_GET['get'] = 'assbycat' && isset($_GET['catid'])){
			
			if($_GET['catid'] == 0){
				// Load FAQ
			;
			}else{
				$catid = (int)$_GET['catid'];
				$sqlCat = "SELECT * FROM ".TAB_CATEGORIES." WHERE idCategoria = {$catid}";
				$cat = query($db,$sqlCat);
				
				$sqlAssByCat = "SELECT idAssistenza, nome, abstract, image FROM ".TAB_ASSISTENZA." WHERE rifCategoria = {$catid}";
				$assByCat = query($db,$sqlAssByCat);
				
				$toJ['categoria'] = $cat[0];
				$toJ['assistenze'] = $assByCat;
			}
		}
		
		
	}
	
	if(isset($_GET['pre']))
		echo '<pre>',print_r($toJ,true),'</pre>';
	echo json_encode($toJ, JSON_NUMERIC_CHECK);
	
	//echo '<pre>',print_r($_GET,true),'</pre>';




?>