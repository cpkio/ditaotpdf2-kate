<?xml version='1.0'?>

<!--
Copyright © 2004-2006 by Idiom Technologies, Inc. All rights reserved.
IDIOM is a registered trademark of Idiom Technologies, Inc. and WORLDSERVER
and WORLDSTART are trademarks of Idiom Technologies, Inc. All other
trademarks are the property of their respective owners.

IDIOM TECHNOLOGIES, INC. IS DELIVERING THE SOFTWARE "AS IS," WITH
ABSOLUTELY NO WARRANTIES WHATSOEVER, WHETHER EXPRESS OR IMPLIED,  AND IDIOM
TECHNOLOGIES, INC. DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE AND WARRANTY OF NON-INFRINGEMENT. IDIOM TECHNOLOGIES, INC. SHALL NOT
BE LIABLE FOR INDIRECT, INCIDENTAL, SPECIAL, COVER, PUNITIVE, EXEMPLARY,
RELIANCE, OR CONSEQUENTIAL DAMAGES (INCLUDING BUT NOT LIMITED TO LOSS OF
ANTICIPATED PROFIT), ARISING FROM ANY CAUSE UNDER OR RELATED TO  OR ARISING
OUT OF THE USE OF OR INABILITY TO USE THE SOFTWARE, EVEN IF IDIOM
TECHNOLOGIES, INC. HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

Idiom Technologies, Inc. and its licensors shall not be liable for any
damages suffered by any person as a result of using and/or modifying the
Software or its derivatives. In no event shall Idiom Technologies, Inc.'s
liability for any damages hereunder exceed the amounts received by Idiom
Technologies, Inc. as a result of this transaction.

These terms and conditions supersede the terms and conditions in any
licensing agreement to the extent that such terms and conditions conflict
with those set forth herein.

This file is part of the DITA Open Toolkit project.
See the accompanying LICENSE file for applicable license.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:rx="http://www.renderx.com/XSL/Extensions"
    version="2.0">

    <xsl:attribute-set name="note" use-attribute-sets="common.block">
        <xsl:attribute name="padding-top">6pt</xsl:attribute>
        <xsl:attribute name="padding-bottom">6pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__table" use-attribute-sets="common.block">
        <!-- <xsl:attribute name="width">416pt</xsl:attribute> -->
        <xsl:attribute name="border-top">2pt solid</xsl:attribute>
        <xsl:attribute name="border-bottom">2pt solid</xsl:attribute>
    </xsl:attribute-set>

    <!-- Колонка ВНЕШНЕЙ таблицы с иконкой -->
    <xsl:attribute-set name="note__image__column">
        <xsl:attribute name="column-number">1</xsl:attribute>
    </xsl:attribute-set>

    <!-- Колонка ВНЕШНЕЙ таблицы в которую вложена вторичная таблица -->
    <xsl:attribute-set name="note__text__column">
      <xsl:attribute name="column-number">2</xsl:attribute>
    </xsl:attribute-set>

    <!-- Ячейка ВНЕШНЕЙ таблицы в которую вложена внутренняя таблица -->
    <xsl:attribute-set name="note__text__entry">
        <xsl:attribute name="padding-top">2pt</xsl:attribute>
        <xsl:attribute name="display-align">center</xsl:attribute>
        <xsl:attribute name="alignment-adjust">middle</xsl:attribute>
        <xsl:attribute name="vertical-align">middle</xsl:attribute>
    </xsl:attribute-set>

    <!-- Ячейка ВНЕШНЕЙ таблицы с иконкой -->
    <xsl:attribute-set name="note__image__entry">
        <xsl:attribute name="padding-end">5pt</xsl:attribute>
        <xsl:attribute name="start-indent">0pt</xsl:attribute>
        <xsl:attribute name="width">24pt</xsl:attribute>
        <xsl:attribute name="display-align">center</xsl:attribute>
        <xsl:attribute name="alignment-adjust">middle</xsl:attribute>
        <xsl:attribute name="vertical-align">middle</xsl:attribute>
    </xsl:attribute-set>

    <!-- Настройки для иконки предупреждений -->
    <xsl:attribute-set name="note__image">
        <xsl:attribute name="width">100%</xsl:attribute>
        <xsl:attribute name="content-width">scale-up-to-fit</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__table__inner">
        <xsl:attribute name="margin-top">6pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">6pt</xsl:attribute>
        <xsl:attribute name="padding-top">6pt</xsl:attribute>
        <xsl:attribute name="padding-bottom">6pt</xsl:attribute>
    </xsl:attribute-set>

    <!-- Колонка ВНУТРЕННЕЙ таблицы с текстовой меткой предупреждения -->
    <xsl:attribute-set name="note__inner__admonition__column">
        <xsl:attribute name="column-number">1</xsl:attribute>
        <xsl:attribute name="column-width">112pt</xsl:attribute>
    </xsl:attribute-set>

    <!-- Колонка ВНУТРЕННЕЙ таблицы с самим текстом -->
    <xsl:attribute-set name="note__inner__text__column">
        <xsl:attribute name="column-number">2</xsl:attribute>
    </xsl:attribute-set>

    <!-- Ячейка ВНУТРЕННЕЙ таблицы с текстовой меткой предупреждения -->
    <xsl:attribute-set name="note__inner__admonition__entry">
        <xsl:attribute name="padding-right">0.5em</xsl:attribute>
        <xsl:attribute name="text-align">right</xsl:attribute>
        <xsl:attribute name="display-align">center</xsl:attribute>
        <xsl:attribute name="alignment-adjust">middle</xsl:attribute>
        <xsl:attribute name="vertical-align">middle</xsl:attribute>
    </xsl:attribute-set>

    <!-- Ячейка ВНУТРЕННЕЙ таблицы с собственно текстом -->
    <xsl:attribute-set name="note__inner__text__entry">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__note">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__notice">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__tip">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__fastpath">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__restriction">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__important">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__remember">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__attention">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__caution">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__danger">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__warning">
        <xsl:attribute name="text-transform">uppercase</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__trouble">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__other">
    </xsl:attribute-set>

    <xsl:attribute-set name="image__inline">
        <xsl:attribute name="baseline-shift">-15%</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>
