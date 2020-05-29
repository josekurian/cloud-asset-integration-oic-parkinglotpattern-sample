<?xml version = '1.0' encoding = 'UTF-8'?>
<!--
Copyright © 2020, Oracle and/or its affiliates. All rights reserved.
Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
-->

<xsl:stylesheet version="2.0" xml:id="id_1" xmlns:ns1="http://xmlns.oracle.com/cloud/adapter/stagefile/StageWriteJSON_REQUEST" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:nstrgmpr="http://xmlns.oracle.com/cloud/adapter/stagefile/StageWriteJSON_REQUEST/types" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:nstrgdfl="http://xmlns.oracle.com/cloud/adapter/stagefile/StageWriteJSON/types" xmlns:nssrcdfl="http://xmlns.oracle.com/procmon" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:nssrcmpr="http://xmlns.oracle.com/cloud/adapter/REST/postAccount_REQUEST/types" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns3="http://xmlns.oracle.com/cloud/adapter/REST/postAccount_REQUEST" exclude-result-prefixes=" oraext plnk xsd xp20 ora oracle-xsl-mapper nssrcdfl xsi fn nssrcmpr xsl ns3 ignore01" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:ns19="http://xmlns.oracle.com/cloud/adapter/REST/postAccount/types" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:ns22="http://xmlns.oracle.com/cloud/ics/file/v1/types" xmlns:ns23="http://xmlns.oracle.com/cloud/staging/write" xmlns:orajs0="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.JsExecutor_xpath1510397549" xmlns:orajs2="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.JsExecutor_xpath86288" xmlns:orajs1="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.JsExecutor_xpath479716033" xmlns:orajs3="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.JsExecutor_xpath565719231" xmlns:ns2="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.resources.icsxpathfunctions.ICSInstanceTrackingFunctions" xmlns:ns0="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns21="http://xmlns.oracle.com/ics/tracking/ics_tracking_context.xsd">
   <oracle-xsl-mapper:schema xml:id="id_2">
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources xml:id="id_3">
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">
            <oracle-xsl-mapper:schema location="../../application_8/outbound_9/resourcegroup_10/postAccount_REQUEST.wsdl" xml:id="id_5"/>
            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/postAccount_REQUEST/types" xml:id="id_6"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets xml:id="id_7">
         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
            <oracle-xsl-mapper:schema location="../../processor_29/resourcegroup_30/StageWriteJSON_REQUEST.wsdl" xml:id="id_9"/>
            <oracle-xsl-mapper:rootElement name="Write" namespace="http://xmlns.oracle.com/cloud/adapter/stagefile/StageWriteJSON_REQUEST/types" xml:id="id_10"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.1.2.0.0-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/" xml:id="id_11">
      <nstrgmpr:Write xml:id="id_12">
         <nstrgdfl:request-wrapper xml:id="id_16">
            <nstrgdfl:Account xml:id="id_17">
               <nstrgdfl:id xml:id="id_18">
                  <xsl:value-of xml:id="id_19" select="/nssrcmpr:execute/ns19:request-wrapper/ns19:Account/ns19:id"/>
               </nstrgdfl:id>
               <nstrgdfl:name xml:id="id_20">
                  <xsl:value-of xml:id="id_21" select="/nssrcmpr:execute/ns19:request-wrapper/ns19:Account/ns19:name"/>
               </nstrgdfl:name>
               <nstrgdfl:branch xml:id="id_22">
                  <xsl:value-of xml:id="id_23" select="/nssrcmpr:execute/ns19:request-wrapper/ns19:Account/ns19:branch"/>
               </nstrgdfl:branch>
            </nstrgdfl:Account>
         </nstrgdfl:request-wrapper>
      </nstrgmpr:Write>
   </xsl:template>
</xsl:stylesheet>
