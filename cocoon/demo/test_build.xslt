<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">

    <html>
	  
      <head>
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js">"></script>
		<style>
		pre.generated-xml {
			color: blue;
		 }
        </style>
<script>
$(document).ready(function() {

  $("button").click(function(){
        getXMLs();
	});

	
  function download(text, name, type) {
    var a = document.createElement("a");
    var file = new Blob([text], {type: type});
    a.href = URL.createObjectURL(file);
    a.download = name;
    a.click();
  }

  function sendToSolr(data){
	$.ajax({            url: "http://localhost:8983/solr/techproducts/update?commit=true",
                        data: data,
						type: 'POST',
                        contentType: "application/xml",
                        cache: "false",
                        error: function() { alert("No data found."); },
                        success: function() {
						    $(".xml-to-show").append("<pre>Document</pre>");
						    pre=$("<pre></pre>").text(data);
							pre.addClass("generated-xml");
							$(".xml-to-show").append(pre);
							$(".xml-to-show").append("<pre>Successfully indexed in SOLR</pre>");
							$(".xml-to-show").append("<pre>============================</pre>");
							//$(".xml-to-show").show();
							//$( "pre.generated-xml" ).text( data );
							//$( "pre.generated-xml" ).show();
                            //alert("Document indexed");
                            
                        }
        });

  }
   
   function getXMLs() {
	var links = ["convert-from-db", "convert-from-file"];
	links.forEach(function(link){
	    $.ajax({url: link,
				type: 'GET',
				dataType: 'text',
                cache: "false",
                error: function() { alert("No data found."); },
                success: function(data) {
                            //alert(data);
							
							sendToSolr(data);
							download(data,link.concat('.xml'),'text/xml');
                            
                        }
        });
	 });
	 $(".xml-to-show").append("<a>Follow this SOLR link to perform search queries</a>");
	 $("a").attr("href","http://localhost:8983/solr/#/techproducts/query");
	 $("a").attr("target","_blank");

    }
  });
   </script>
        <title>Test Build of SOLR XMLs</title>
      </head>
      <body>
        <xsl:copy-of select="content/*"/>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
