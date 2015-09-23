# Test task to learn about cocoon
# All configuration actions performed in windows environment and one host is used.

1. Configuring Cocoon
  cocoon folder contains files to place in cocoon web application folder,
  which is built with default settings from cocoon-2.1.12 sources. 
  Just copy all content of cocoon folder except of cocoon.xconf and web.xml into built folder of coocon webapp, 
  by default it named as webapp in the build folder of cocoon sources.
  Copy cocoon.xconf and web.xml with replacing old files into WEB-INF folder of cocoon webapp.

  Copy webapp folder into \jakarta-tomcat-4.0.1\webapps folder.
  Copy cocoon\WEB-INF\lib\mysql-connector-java-3.1.14.jar into WEB-INF\lib of your cocoon web application, for example
  jakarta-tomcat-4.0.1\webapps\webapp\WEB-INF\lib

  
2. Configuring Solr
  solr folder contains only schema.xml file. It contains settings for performing indexing of test documents.
  Default techproducts core of solr used for test purposes. Dowload solr 5.3.0 and perform setup. Use http://lucene.apache.org/solr/quickstart.html 
  as reference. After that replace schema.xml in
  \solr-5.3.0\server\solr\configsets\sample_techproducts_configs\conf with solr folder file.
  To run solr use bin/solr start -e techproducts command.

3. Database
   Mysql 5.6.17 used as DB. Create "info" table in the "actors" database. In the "info" table create columns:
  id        int 
	fullname  text
	birthday  text
	country   text
	city      text
	alive     boolean
	filmscount int
	genre     text
	Create several rows in the "info" with appropriate information.
	Default mysql login and password (root and empty password) are using in the settings of db connection of cocoon.
  
4. How to use
  Run mysql.
  Run apache tomcat \jakarta-tomcat-4.0.1\bin\startup.bat and solr with bin/solr start -e techproducts. 
  Test Cocoon web app will be available by this link localhost:8080/webapp/build.
  By pressing "build" button two documents, one from local filesystem and onother one from database will be converted by cocoon and then transfered 
  to solr for indexing. As well link to solr web interface to perform queries will be provided.
