<?xml version='1.0' encoding='UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" version="1.0">

    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

    <!-- Add the metainformation manually -->
    <!-- variable filename contains the original name of the file (from submitter)-->
    <xsl:variable name="filename" select="'antonovaetal2010a-antonovaetal2011a.txt'"/>
    <xsl:variable name="text_encoding" select="'UTF-8'"/>
    <xsl:variable name="title" select="'Оанҍхэсь кыррьй'"/>
    <xsl:variable name="author1_fn" select="'Са̄нндрэ'"/>
    <xsl:variable name="author1_ln" select="'Антонова'"/>
    <xsl:variable name="author1_gender" select="'f'"/>
    <xsl:variable name="author1_nat" select="'Sami'"/>
    <xsl:variable name="author1_born" select="'1932-05-05'"/>
    <xsl:variable name="author2_fn" select="'Элизабет'"/>
    <xsl:variable name="author2_ln" select="'Шеллер'"/>
    <xsl:variable name="author2_gender" select="'f'"/>
    <xsl:variable name="author2_nat" select="'German'"/>
    <xsl:variable name="author2_born" select="'1977-08-04'"/>
    <!-- in what format do we need dates?-->
    <xsl:variable name="author3_fn" select="''"/>
    <xsl:variable name="author3_ln" select="''"/>
    <xsl:variable name="author3_gender" select="''"/>
    <xsl:variable name="author3_nat" select="''"/>
    <xsl:variable name="author3_born" select="''"/>
    <xsl:variable name="author4_fn" select="''"/>
    <xsl:variable name="author4_ln" select="''"/>
    <xsl:variable name="author4_gender" select="''"/>
    <xsl:variable name="author4_nat" select="''"/>
    <xsl:variable name="author4_born" select="''"/>
    <xsl:variable name="publisher" select="'Suomalais-ugrilainen Seura'"/>
    <xsl:variable name="publChannel" select="'book'"/>
    <xsl:variable name="year" select="'2011'"/>
    <xsl:variable name="ISBN" select="''"/>
    <xsl:variable name="ISSN" select="''"/>
    <xsl:variable name="place" select="'Helsinki'"/>
    <xsl:variable name="genre" select="'science'"/>
    <xsl:variable name="collection" select="'Ethnic and linguistic context of identity: Finno-Ugric minorities'"/>
    <xsl:variable name="translated_from" select="''"/>
    <xsl:variable name="translator_fn" select="''"/>
    <xsl:variable name="translator_ln" select="''"/>
    <xsl:variable name="translator_gender" select="'unknown'"/>
    <!-- this text is not a translation, why do we need this value 'unknwon'?-->
    <xsl:variable name="translator_born" select="''"/>
    <xsl:variable name="translator_nat" select="''"/>
    <!-- select license type: free, standard or other -->
    <xsl:variable name="license_type" select="''"/>
    <xsl:variable name="sub_name" select="'Ciprian-Virgil Gerstenberger'"/>
    <xsl:variable name="sub_email" select="'ciprian.gerstenberger@uit.no'"/>
    <xsl:variable name="wordcount" select="''"/>
    <!-- Set this variable to 1 if the source for this doc is OCR -->
    <!-- Those docs typically contain lots of orthographic errors and need special treatment -->
    <xsl:variable name="conversion_status" select="''"/>
    <xsl:variable name="metadata" select="'uncomplete'"/>
    <xsl:variable name="template_version" select="'$Revision: 104790 $'"/>
    <xsl:variable name="current_version" select="'Revision'"/>
    <!-- Free text field for notes -->
    <xsl:variable name="note" select="''"/>

    <!-- The main language of the document -->
    <xsl:variable name="mainlang" select="'sjd'"/>

    <!-- In the case of a multilingual document, we may want to check for
     other languages. Set the variable monolingual to '1' to turn off
     language recognition (treating everything as mainlang) -->
    <xsl:variable name="monolingual" select="'1'"/>
    

<!-- If monolingual is not set, the language is multilingual.
     Uncomment the languages you want to check for (or add new lines
     with the right ISO-639-3 language codes).

     If *no* languages are uncommented (and monolingual is not 1),
     then the document is checked for all supported languages.
-->
<xsl:variable name="mlangs">
	</xsl:variable>

<!-- Add the locations of the parallel files to the variables-->
    

<!-- If the document has parallel texts, uncomment the right languages
     (or add new lines with the right ISO-639-3 language codes) and
     add the filename of the parallel files to the 'location'
     variables.

     Don't write the full directory; we expect the file to be in the
     same directory as this file, with only the language code and
     filename changed.
     -->
<xsl:variable name="parallels">
	</xsl:variable>

<!-- For page oriented documents, mark which pages should be ignored -->
    <xsl:variable name="skip_pages" select="''"/>
    <!-- Text outside these margins will be ignored.
These are defaults, that are settable documentwise -->
    <xsl:variable name="right_margin" select="''"/>
    <xsl:variable name="left_margin" select="''"/>
    <xsl:variable name="top_margin" select="''"/>
    <xsl:variable name="bottom_margin" select="''"/>


    <!-- Add all paragraphs that should have xml:lang=X           -->
    <!-- Uncomment the following and add the paths, for example:  -->
    <!-- <xsl:template match="/root/section[2]/paragraph[5] |
                      /root/section[3]/paragraph[2] ">        -->
    <!--
<xsl:template match="//body/p[5]">
	<xsl:element name="p">
	<xsl:attribute name="xml:lang">
		<xsl:value-of select="$smelang"/>
	</xsl:attribute>
	<xsl:apply-templates/>
</xsl:element>
 </xsl:template>
-->

    <!-- Change or remove problematic characters from the text.   -->
    <!-- Specify the elements to match (here all p's within       -->
    <!-- //body, that do contain text, but do NOT contain em and  -->
    <!-- span elements), and specify the characters               -->
    <!-- to be replaced and the replacements. If needed,          -->
    <!-- copy this template and target several different elements,-->
    <!-- but don't make several templates that match the same set -->
    <!-- of elements - then only one of them will apply. Also try -->
    <!-- to restrict the template to nodes that do not contain    -->
    <!-- other markup, as such markup otherwise will be removed.  -->
    <!--
<xsl:template match="p[parent::body][not(./em | ./span)][text()]">
    <xsl:variable name="text" select='current()' />
    <xsl:variable name="type" select='@type' />
    <xsl:variable name="lang" select='@xml:lang' />
    <xsl:element name="p">
        <xsl:if test="$type">
            <xsl:attribute name="type">
                <xsl:value-of select="$type"/>
            </xsl:attribute>
        </xsl:if>
        <xsl:if test="$lang">
            <xsl:attribute name="xml:lang">
                <xsl:value-of select="$lang"/>
            </xsl:attribute>
        </xsl:if>

        <xsl:call-template name="globalTextReplace">
            <xsl:with-param name="inputString" select="$text"/>
            <xsl:with-param name="target" select="'str1/str2/str3/'"/>
            <xsl:with-param name="replacement" select="'rpl1/rpl2/rpl3/'"/>
            <xsl:with-param name="continue" select="0"/>
        </xsl:call-template>
    </xsl:element>
</xsl:template>
-->

</xsl:stylesheet>