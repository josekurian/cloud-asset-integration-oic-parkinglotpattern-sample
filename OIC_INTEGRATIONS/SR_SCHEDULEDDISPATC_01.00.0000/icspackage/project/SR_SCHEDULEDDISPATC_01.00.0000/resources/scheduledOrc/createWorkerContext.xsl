<!--
Copyright (c) 2020, Oracle and/or its affiliates.
Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
-->
<xsl:stylesheet version="1.0" exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:ns0="http://xmlns.oracle.com/ics/scheduler" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://xmlns.oracle.com/ics/scheduler/worker" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bpelctx="http://xmlns.oracle.com/ics/scheduler/bpelcontext">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="oramds:/apps/ICSBPSharedArtifacts/SOA/Schemas/SchedulerRequest.xsd"/>
        <oracle-xsl-mapper:rootElement name="SchedulerRequest" namespace="http://xmlns.oracle.com/ics/scheduler"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="oramds:/apps/ICSBPSharedArtifacts/SOA/Schemas/Worker.xsd"/>
        <oracle-xsl-mapper:rootElement name="WorkerContext" namespace="http://xmlns.oracle.com/ics/scheduler/worker"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED APR 06 19:14:36 PDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:WorkerContext>
      <tns:OsbProjectName>
        <xsl:value-of select="/ns0:SchedulerRequest/ns0:OsbProjectName"/>
      </tns:OsbProjectName>
      <tns:FlowCode>
        <xsl:value-of select="/ns0:SchedulerRequest/ns0:FlowCode"/>
      </tns:FlowCode>
      <tns:FlowVersion>
        <xsl:value-of select="/ns0:SchedulerRequest/ns0:FlowVersion"/>
      </tns:FlowVersion>
      <tns:EssRequestId>
        <xsl:value-of select="/ns0:SchedulerRequest/ns0:EssRequestId"/>
      </tns:EssRequestId>
      <tns:EssRequestCategory>
        <xsl:value-of select="/ns0:SchedulerRequest/ns0:EssRequestCategory"/>
      </tns:EssRequestCategory>
      <tns:EssPriority>
        <xsl:value-of select="/ns0:SchedulerRequest/ns0:EssPriority"/>
      </tns:EssPriority>
      <tns:EssRequestExecutionContext>
        <xsl:value-of select="/ns0:SchedulerRequest/ns0:EssRequestExecutionContext"/>
      </tns:EssRequestExecutionContext>
      <tns:ParameterList>
        <xsl:for-each select="/ns0:SchedulerRequest/ns0:ParameterList/ns0:Parameter">
          <tns:Parameter>
            <tns:name>
              <xsl:value-of select="ns0:name"/>
            </tns:name>
            <tns:value>
              <xsl:value-of select="ns0:value"/>
            </tns:value>
          </tns:Parameter>
        </xsl:for-each>
      </tns:ParameterList>
    </tns:WorkerContext>
  </xsl:template>
</xsl:stylesheet>