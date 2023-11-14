<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" exclude-result-prefixes="xd xsl dc fn"
    xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:dct="http://purl.org/dc/terms/" xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:functx="http://www.functx.com" xmlns:owl="http://www.w3.org/2002/07/owl#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#" xmlns:vann="http://purl.org/vocab/vann/"
    version="3.0">

<!-- ++++++++++++++++++++++++++++++++++++++++++-Adjusting Variables ++++++++++++++++++++++++++++++++++++++++++++++++ -->

<!--To customize the behavior of the validator, modify the variables until the warning message below. However, exercise caution:-->

<!--* Do not delete variables: Each variable serves a purpose in the validation process.-->

<!--* Maintain variable types: Do not alter the type of a variable (e.g., from a list to a string). If a variable is originally set as a list, it must remain a list.-->

<!--Handling Unused Variables-->

<!--If a variable is unnecessary or if you prefer not to impose restrictions, leave the variable with an empty list or string. Here's an example:-->

<!--Empty list: select="()"-->
<!--Empty string: select="''"-->
<!--Important Note-->

<!--Variables are preconfigured with specific types. If a variable is initially defined as a list, it should continue to be treated as such.-->

    <!-- types of elements and names for attribute types that are acceptable to produce object properties -->
    <xsl:variable name="acceptableTypesForObjectProperties"
        select="('epo:Identifier', 'rdfs:Literal')"/>
    <!-- Acceptable stereotypes -->
    <xsl:variable name="stereotypeValidOnAttributes" select="()"/>
    <xsl:variable name="stereotypeValidOnObjects" select="()"/>
    <xsl:variable name="stereotypeValidOnGeneralisations"
        select="('Disjoint', 'Equivalent')"/>
    <xsl:variable name="stereotypeValidOnAssociations" select="()"/>
    <xsl:variable name="stereotypeValidOnDependencies" select="('Disjoint')"/>
    <xsl:variable name="stereotypeValidOnClasses" select="('Abstract')"/>
    <xsl:variable name="stereotypeValidOnDatatypes" select="()"/>
    <xsl:variable name="stereotypeValidOnEnumerations" select="()"/>
    <xsl:variable name="stereotypeValidOnPackages" select="()"/>
    <xsl:variable name="abstractClassesStereotypes"
        select="('Abstract', 'abstract class', 'abstract')"/>
    
    <!--Allowed characters for a normalized string (characters allowed in a Qname). This should be a regex expression.-->
    <xsl:variable name="allowedStrings" select="'^[\w\d-_:]+$'"/>



<!--    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
                       <!--    DO NOT CHANGE THE VARIABLES BELOW-->
<!--    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
    <!-- a set of prefix-baseURI definitions -->
    <xsl:variable name="namespacePrefixes" select="fn:doc('namespaces.xml')"/>
    <!-- a mapping between UML atomic types to XSD datatypes  -->
    <xsl:variable name="umlDataTypesMapping" select="fn:doc('umlToXsdDataTypes.xml')"/>
    <!-- XSD datatypes that conform to OWL2 requirements   -->
    <xsl:variable name="xsdAndRdfDataTypes" select="fn:doc('xsdAndRdfDataTypes.xml')"/>
    <!--    set default namespace interpretation for lexical Qnames that are not prefix:localSegment or :localSegment. If this 
    is set to true localSegment will transform to :localSegment-->
    <xsl:variable name="defaultNamespaceInterpretation" select="fn:true()"/>
    <!-- Ontology base URI, configure as necessary. Do not use a trailing local delimiter 
        like in the namespace definition-->
    <xsl:variable name="base-ontology-uri" select="()"/>
    <xsl:variable name="base-shape-uri" select="()"/>
    <xsl:variable name="base-restriction-uri" select="()"/>
    <!-- when a delimiter is missing in the base URI of a namespace, use this default value-->
    <xsl:variable name="defaultDelimiter" select="()"/>
</xsl:stylesheet>