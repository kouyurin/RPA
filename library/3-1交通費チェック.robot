<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.3.0.2</version>
    </saved-by-versions>
    <referenced-types>
      <type name="交通費チェック情報"/>
    </referenced-types>
    <referenced-snippets/>
    <triggers/>
    <typed-variables>
      <typed-variable name="交通費チェック情報" type-name="交通費チェック情報"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables>
      <variable name="交通費チェック情報"/>
    </return-variables>
    <store-in-database-variables/>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">交通費チェック情報</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">交通費チェック情報</property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean" id="1">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="1"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="2">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">DIRECT</property>
  </property>
  <property name="avoidExternalReExecution" idref="1"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="3"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="3" id="4">
        <property name="name" class="String" id="5">Write File</property>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">C:\Users\Student\Desktop\交通費チェック結果.csv</property>
          </property>
          <property name="fileContentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="AddToCSV" serializationversion="1">
                <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
                  <property name="name" class="String">交通費チェック情報</property>
                </property>
                <property name="createHeader" class="Boolean">true</property>
                <property name="locale" class="String">ja_JP</property>
                <property name="dateFormatPattern" class="String">yyyy/MM/dd</property>
              </element>
            </property>
          </property>
          <property name="fileEncoding" class="Encoding" id="6">
            <property name="encoding" class="String">windows-31j</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="7">
        <property name="name" class="String">Load File</property>
        <property name="stepAction" class="LoadFile">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.FileNameValueStringExpression">
            <property name="value" class="String">C:\Users\Student\Desktop\交通費申請データ.xlsx</property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep" id="8"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="9"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Group" id="10">
        <name class="String">申請データ</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="11"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="12">
            <property name="name" class="String">View as Excel</property>
            <property name="stepAction" class="ViewAsExcel"/>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="13">
            <property name="name" class="String">Loop Rows</property>
            <property name="stepAction" class="LoopInExcel">
              <property name="loopDirection" class="LoopInExcel$LoopDirection">
                <property name="enum-name" class="String">ROWS</property>
              </property>
              <property name="firstIndex" class="Integer">2</property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="SpecifiedRangeCellFinderDetail">
                  <property name="range" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">交通費申請データ!</property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="14">
            <property name="name" class="String">Extract 日付</property>
            <property name="stepAction" class="ExtractCell">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractDate">
                  <property name="formats" class="BeanList">
                    <object class="kapow.robot.plugin.common.stringprocessor.datefetcher.PatternBasedDateFormatSpecification">
                      <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.DateExtractorPatternValueStringExpression">
                        <property name="value" class="String">yyyy/MM/dd</property>
                      </property>
                    </object>
                  </property>
                </element>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">交通費チェック情報.日付</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange"/>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="15">
            <property name="name" class="String">Extract 出発駅</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">交通費チェック情報.出発駅</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">2</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="16">
            <property name="name" class="String">Extract 到着駅</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">交通費チェック情報.到着駅</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">3</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="17">
            <property name="name" class="String">Extract 申請金額</property>
            <property name="stepAction" class="ExtractCell">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractNumber"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">交通費チェック情報.申請金額</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">4</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="18"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="11"/>
            <to idref="12"/>
          </object>
          <object class="TransitionEdge">
            <from idref="12"/>
            <to idref="13"/>
          </object>
          <object class="TransitionEdge">
            <from idref="13"/>
            <to idref="14"/>
          </object>
          <object class="TransitionEdge">
            <from idref="14"/>
            <to idref="15"/>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="16"/>
          </object>
          <object class="TransitionEdge">
            <from idref="16"/>
            <to idref="17"/>
          </object>
          <object class="TransitionEdge">
            <from idref="17"/>
            <to idref="18"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="19">
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ValueURLProvider2">
            <property name="URL" class="String">https://transit.yahoo.co.jp/</property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
            <property name="ancestorProvider" idref="8"/>
          </property>
        </property>
        <property name="elementFinders" idref="9"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Group" id="20">
        <name class="String">経路</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="21"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="22">
            <property name="name" class="String">Select Option</property>
            <property name="stepAction" class="SelectOption">
              <property name="optionValueExpression" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="GetVariable" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">交通費チェック情報.日付</property>
                    </property>
                  </element>
                  <element class="ReplacePattern">
                    <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                      <property name="value" class="String">(.*)-(.*)-(.*).*</property>
                    </property>
                  </element>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.select</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">y</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="23">
            <property name="name" class="String">Select Option</property>
            <property name="stepAction" class="SelectOption">
              <property name="optionValueExpression" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="GetVariable" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">交通費チェック情報.日付</property>
                    </property>
                  </element>
                  <element class="ReplacePattern">
                    <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                      <property name="value" class="String">(.*)-(.*)-(.*).*</property>
                    </property>
                    <property name="replaceExp" class="String">$2</property>
                  </element>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.select</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">m</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="24">
            <property name="name" class="String">Select Radio Button</property>
            <property name="stepAction" class="SelectRadioButton">
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">tsAvr</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="25">
            <property name="name" class="String">Enter 出発駅</property>
            <property name="stepAction" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">交通費チェック情報.出発駅</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">sfrom</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="26">
            <property name="name" class="String">Enter 到着駅</property>
            <property name="stepAction" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">交通費チェック情報.到着駅</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">sto</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="27">
            <property name="name" class="String">Click 検索</property>
            <property name="stepAction" class="Click" serializationversion="0">
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">searchModuleSubmit</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="28">
            <property name="name" class="String">Select Option</property>
            <property name="stepAction" class="SelectOption">
              <property name="optionValueExpression" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="GetVariable" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">交通費チェック情報.日付</property>
                    </property>
                  </element>
                  <element class="ReplacePattern">
                    <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                      <property name="value" class="String">(.*)-(.*)-(.*) .*</property>
                    </property>
                    <property name="replaceExp" class="String">$3</property>
                  </element>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.select</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">d</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="29">
            <property name="name" class="String">Extract 経路 1</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractNumber"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">交通費チェック情報.経路1</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div.div.div.div.div.div.div.ul.li.dl.dd.ul.li</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">fare</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="30">
            <property name="name" class="String">Extract 経路 2</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractNumber"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">交通費チェック情報.経路2</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div.div.div.div.div.div.div.ul.li[1].dl.dd.ul.li</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">fare</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="31">
            <property name="name" class="String">Extract 経路 3</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractNumber"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">交通費チェック情報.経路3</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div.div.div.div.div.div.div.ul.li[2].dl.dd.ul.li</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">fare</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="32"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="21"/>
            <to idref="22"/>
          </object>
          <object class="TransitionEdge">
            <from idref="22"/>
            <to idref="23"/>
          </object>
          <object class="TransitionEdge">
            <from idref="23"/>
            <to idref="24"/>
          </object>
          <object class="TransitionEdge">
            <from idref="24"/>
            <to idref="25"/>
          </object>
          <object class="TransitionEdge">
            <from idref="25"/>
            <to idref="26"/>
          </object>
          <object class="TransitionEdge">
            <from idref="26"/>
            <to idref="27"/>
          </object>
          <object class="TransitionEdge">
            <from idref="27"/>
            <to idref="28"/>
          </object>
          <object class="TransitionEdge">
            <from idref="28"/>
            <to idref="29"/>
          </object>
          <object class="TransitionEdge">
            <from idref="29"/>
            <to idref="30"/>
          </object>
          <object class="TransitionEdge">
            <from idref="30"/>
            <to idref="31"/>
          </object>
          <object class="TransitionEdge">
            <from idref="31"/>
            <to idref="32"/>
          </object>
        </edges>
      </object>
      <object class="Try" id="33"/>
      <object class="Transition" serializationversion="3" id="34">
        <property name="name" class="String">Test Value</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">交通費チェック情報.申請金額 &lt;= 交通費チェック情報.経路1 || 
交通費チェック情報.申請金額 &lt;= 交通費チェック情報.経路2 ||
交通費チェック情報.申請金額 &lt;= 交通費チェック情報.経路3</property>
          </property>
        </property>
        <property name="elementFinders" idref="9"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="35">
        <property name="name" class="String">チェック結果 の割り当て</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">○</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">交通費チェック情報.チェック結果</property>
          </property>
        </property>
        <property name="elementFinders" idref="9"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="36">
        <property name="name" class="String">Return Value</property>
        <property name="stepAction" class="ReturnVariable" serializationversion="1">
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="elementFinders" idref="9"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="37">
        <property name="name" idref="5"/>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">C:\Users\Student\Desktop\交通費チェック結果.csv</property>
          </property>
          <property name="fileContentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="AddToCSV" serializationversion="1">
                <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
                  <property name="name" idref="0"/>
                </property>
                <property name="locale" class="String">ja_JP</property>
                <property name="dateFormatPattern" class="String">yyyy/MM/dd</property>
              </element>
            </property>
          </property>
          <property name="fileEncoding" idref="6"/>
          <property name="appendToFile" class="Boolean">true</property>
        </property>
        <property name="elementFinders" idref="9"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="38"/>
      <object class="Transition" serializationversion="3" id="39">
        <property name="name" class="String">チェック結果 の割り当て</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">×</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">交通費チェック情報.チェック結果</property>
          </property>
        </property>
        <property name="elementFinders" idref="9"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="4"/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="7"/>
      </object>
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="10"/>
      </object>
      <object class="TransitionEdge">
        <from idref="10"/>
        <to idref="19"/>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="20"/>
      </object>
      <object class="TransitionEdge">
        <from idref="20"/>
        <to idref="33"/>
      </object>
      <object class="TransitionEdge">
        <from idref="33"/>
        <to idref="34"/>
      </object>
      <object class="TransitionEdge">
        <from idref="33"/>
        <to idref="39"/>
      </object>
      <object class="TransitionEdge">
        <from idref="34"/>
        <to idref="35"/>
      </object>
      <object class="TransitionEdge">
        <from idref="35"/>
        <to idref="36"/>
      </object>
      <object class="TransitionEdge">
        <from idref="36"/>
        <to idref="37"/>
      </object>
      <object class="TransitionEdge">
        <from idref="37"/>
        <to idref="38"/>
      </object>
      <object class="TransitionEdge">
        <from idref="39"/>
        <to idref="36"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
    <property name="SSLUsage" class="com.kapowtech.net.ssl.SSLUsage">
      <property name="enum-name" class="String">TLS12_TLSHello</property>
    </property>
  </property>
</object>
