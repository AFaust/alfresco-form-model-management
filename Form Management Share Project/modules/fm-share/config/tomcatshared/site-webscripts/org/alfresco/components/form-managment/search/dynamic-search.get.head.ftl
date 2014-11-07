<link rel="stylesheet" href="/share/js/form-management/DataTables-1.8.2/media/css/demo_table.css" />
<link rel="stylesheet" href="/share/css/uofa/plugin.css" />
<link rel="stylesheet" type="text/css" href="/share/css/form-management/search/search.css" />
<link href="/share/css/uofa/chosen-select.css" type="text/css" rel="stylesheet" />

<script type="text/javascript">
	var defaultLbl ="Search";
</script>
<script type="text/javascript" src="/share/js/form-management/DataTables-1.8.2/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="/share/js/form-management/common/js-utils.js"></script>
<script type="text/javascript" src="/share/js/form-management/search/jquery.paginate.js"></script>
<script type="text/javascript" src="/share/js/form-management/search/print.js"></script>
<script type="text/javascript" src="/share/js/form-management/search/search.js"></script>
<script type="text/javascript" src="/share/js/form-management/search/search-grid.js"></script>
<!--[if (gt IE 9)|!(IE)]><!-->
	<script type="text/javascript" src="/share/js/form-management/search/file-saver.js"></script>
<!--<![endif]-->

<script type="text/javascript">
	var alf_ticket = "";
	var dtFields = null;
	$(function()
	{
		if(advsearchAspects.length > 0){
			$('.fm-profile').form({
				'customFormStyle': 'left',
				'aspects': advsearchAspects,
				'isSearch': true,
				'postUrl' : "/share/service/components/form-management/ajax/save",
				'onComplete': function(){
					 injectAlfrescoDefaults();
				},
				'onProfileToProperty': function(model){
					dtFields = setSearchTableHeaders(model);
				}
			});
		}else{
			injectAlfrescoDefaults();
		}
	});
</script>
