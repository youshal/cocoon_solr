<?xml version="1.0" encoding="UTF-8"?>
<!--
  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
<xsl:output method="xml" encoding="utf-8" indent="no"/>

 xmlns:sql="http://apache.org/cocoon/SQL/2.0"
  -->
<xsl:stylesheet version="1.0"
 xmlns:sql="http://apache.org/cocoon/SQL/2.0" 
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

 <xsl:template match="/">
	<xsl:text>&#10;</xsl:text>
    <add>
		<xsl:text>&#10;</xsl:text>
        <xsl:for-each select="//sql:row">
            <doc>
				<xsl:text>&#10;</xsl:text>
			    <xsl:element name="field">
				    <xsl:attribute name="name">id</xsl:attribute>
	                <xsl:value-of select="sql:id"></xsl:value-of>
				</xsl:element>
				<xsl:text>&#10;</xsl:text>
				<xsl:element name="field">
				    <xsl:attribute name="name">fullname</xsl:attribute>
	                <xsl:value-of select="sql:fullname"></xsl:value-of>
				</xsl:element>
				<xsl:text>&#10;</xsl:text>
				<xsl:element name="field">
   				    <xsl:attribute name="name">birthday</xsl:attribute>
					<xsl:value-of select="sql:birthday">
					</xsl:value-of>
				</xsl:element>
				<xsl:text>&#10;</xsl:text>
				<xsl:element name="field">
				    <xsl:attribute name="name">country</xsl:attribute>
	                <xsl:value-of select="sql:country">
					</xsl:value-of>
				</xsl:element>
				<xsl:text>&#10;</xsl:text>
				<xsl:element name="field">
				    <xsl:attribute name="name">city</xsl:attribute>
					<xsl:value-of select="sql:city">
					</xsl:value-of>
				</xsl:element>
				<xsl:text>&#10;</xsl:text>
				<xsl:element name="field">
				    <xsl:attribute name="name">alive</xsl:attribute>
	                <xsl:value-of select="sql:alive">
					</xsl:value-of>
				</xsl:element>
				<xsl:text>&#10;</xsl:text>
				<xsl:element name="field">
				    <xsl:attribute name="name">filmscount</xsl:attribute>
	                <xsl:value-of select="sql:filmscount">
					</xsl:value-of>
				</xsl:element>
				<xsl:text>&#10;</xsl:text>
				<xsl:element name="field">
				    <xsl:attribute name="name">genre</xsl:attribute>
	                <xsl:value-of select="sql:genre">
					</xsl:value-of>
				</xsl:element>
				<xsl:text>&#10;</xsl:text>
            </doc>
			<xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </add>
</xsl:template>

</xsl:stylesheet>
