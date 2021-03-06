<?xml version = '1.0' encoding = 'UTF-8'?>
<!--
Copyright (c) 2020, Oracle and/or its affiliates.
Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
-->

<xsl:stylesheet version="2.0" xml:id="id_1" xmlns:nssrcdfl="http://xmlns.oracle.com/cloud/adapter/REST/postAccount/types" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:nstrgmpr="http://xmlns.oracle.com/cloud/adapter/atpdatabase/ErrorStatus_ATP_REQUEST/types" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://xmlns.oracle.com/cloud/adapter/atpdatabase/ErrorStatus_ATP_REQUEST" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:nssrcmpr="http://xmlns.oracle.com/cloud/adapter/REST/postAccount_REQUEST/types" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns1="http://xmlns.oracle.com/cloud/adapter/REST/postAccount_REQUEST" exclude-result-prefixes=" nssrcdfl oraext xsd xp20 ora oracle-xsl-mapper xsi fn nssrcmpr xsl ns1 ignore01 ns28 ns29" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:nsmpr0="http://www.oracle.com/2014/03/ics/fault" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:orajs0="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.JsExecutor_xpath1510397549" xmlns:orajs2="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.JsExecutor_xpath86288" xmlns:orajs1="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.JsExecutor_xpath479716033" xmlns:orajs3="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.JsExecutor_xpath565719231" xmlns:ns2="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.resources.icsxpathfunctions.ICSInstanceTrackingFunctions" xmlns:ns0="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:nsmpr1="http://www.oracle.com/2014/03/ic/integration/metadata" xmlns:ns28="http://xmlns.oracle.com/procmon" xmlns:ns29="http://xmlns.oracle.com/ics/tracking/ics_tracking_context.xsd">
   <oracle-xsl-mapper:schema xml:id="id_2">
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources xml:id="id_3">
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">
            <oracle-xsl-mapper:schema location="../../application_8/outbound_9/resourcegroup_10/postAccount_REQUEST.wsdl" xml:id="id_5"/>
            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/postAccount_REQUEST/types" xml:id="id_6"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="XSD" xml:id="id_13">
            <oracle-xsl-mapper:schema location="../../processor_15/resourcegroup_16/ICSFault.xsd" xml:id="id_14"/>
            <oracle-xsl-mapper:rootElement name="fault" namespace="http://www.oracle.com/2014/03/ics/fault" xml:id="id_15"/>
            <oracle-xsl-mapper:param name="RealAccountCreationScopeFaultObject" xml:id="id_16"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets xml:id="id_7">
         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
            <oracle-xsl-mapper:schema location="../../application_33/inbound_34/resourcegroup_35/ErrorStatus_ATP_REQUEST.wsdl" xml:id="id_9"/>
            <oracle-xsl-mapper:rootElement name="PayloadParkingLotTabCollection" namespace="http://xmlns.oracle.com/cloud/adapter/atpdatabase/ErrorStatus_ATP_REQUEST/types" xml:id="id_10"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.1.2.0.0-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="RealAccountCreationScopeFaultObject" xml:id="id_17"/>
   <xsl:template match="/" xml:id="id_11">
      <nstrgmpr:PayloadParkingLotTabCollection xml:id="id_12">
         <nstrgmpr:PayloadParkingLotTab xml:id="id_21">
            <nstrgmpr:id xml:id="id_22">
               <xsl:value-of xml:id="id_23" select="/nssrcmpr:execute/nssrcdfl:request-wrapper/nssrcdfl:Account/nssrcdfl:id"/>
            </nstrgmpr:id>
            <nstrgmpr:status xml:id="id_24">
               <xsl:value-of xml:id="id_25" select="&quot;ERRORED&quot;"/>
            </nstrgmpr:status>
            <nstrgmpr:error xml:id="id_26">
               <xsl:value-of xml:id="id_27" select="concat (&quot;errorCode=&quot;, $RealAccountCreationScopeFaultObject/nsmpr0:fault/nsmpr0:errorCode, &quot;; reason=&quot;, $RealAccountCreationScopeFaultObject/nsmpr0:fault/nsmpr0:reason, &quot;; details = &quot;, $RealAccountCreationScopeFaultObject/nsmpr0:fault/nsmpr0:details )"/>
            </nstrgmpr:error>
         </nstrgmpr:PayloadParkingLotTab>
      </nstrgmpr:PayloadParkingLotTabCollection>
   </xsl:template>
</xsl:stylesheet>
