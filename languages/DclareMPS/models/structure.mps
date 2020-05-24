<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:38c3b7db-3776-47fb-ba27-a4f002c4edc7(DclareMPS.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="2756621024541681841" name="jetbrains.mps.lang.resources.structure.Primitive" flags="ng" index="1irPi6">
        <child id="1860120738943552529" name="fillColor" index="3PKjn_" />
      </concept>
      <concept id="2756621024541681849" name="jetbrains.mps.lang.resources.structure.Text" flags="ng" index="1irPie">
        <property id="2756621024541681854" name="text" index="1irPi9" />
        <child id="1860120738943552534" name="color" index="3PKjny" />
      </concept>
      <concept id="2756621024541674821" name="jetbrains.mps.lang.resources.structure.TextIcon" flags="ng" index="1irR5M">
        <property id="1358878980655415353" name="iconId" index="2$rrk2" />
        <child id="2756621024541675110" name="layers" index="1irR9h" />
      </concept>
      <concept id="2756621024541675104" name="jetbrains.mps.lang.resources.structure.Circle" flags="ng" index="1irR9n" />
      <concept id="1860120738943552477" name="jetbrains.mps.lang.resources.structure.ColorLiteral" flags="ng" index="3PKj8D">
        <property id="1860120738943552481" name="val" index="3PKj8l" />
      </concept>
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1224240836180" name="jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation" flags="ig" index="asaX9" />
      <concept id="6054523464627964745" name="jetbrains.mps.lang.structure.structure.AttributeInfo_AttributedConcept" flags="ng" index="trNpa">
        <reference id="6054523464627965081" name="concept" index="trN6q" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="2992811758677295509" name="jetbrains.mps.lang.structure.structure.AttributeInfo" flags="ng" index="M6xJ_">
        <property id="7588428831955550663" name="role" index="Hh88m" />
        <child id="7588428831947959310" name="attributed" index="EQaZv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="8842732777748464990" name="jetbrains.mps.lang.structure.structure.RefPresentationTemplate" flags="ng" index="ROjv2">
        <property id="4307758654697524060" name="suffix" index="1W_73K" />
        <property id="4307758654697524057" name="prefix" index="1W_73P" />
      </concept>
      <concept id="8842732777748207592" name="jetbrains.mps.lang.structure.structure.SmartReferenceAttribute" flags="ng" index="RPilO">
        <reference id="8842732777748207597" name="charactersticReference" index="RPilL" />
        <child id="8842732777748474935" name="refPresentationTemplate" index="ROhUF" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="5404671619616246344" name="staticScope" index="2_RsDV" />
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="6327362524875300597" name="icon" index="rwd14" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599698500" name="specializedLink" index="20ksaX" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="jVwYUSPLKM">
    <property role="EcuMT" value="359025656632646706" />
    <property role="TrG5h" value="ThisExpression" />
    <property role="34LRSv" value="this" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="3qVwZ8sHWnm">
    <property role="EcuMT" value="3943890974580131286" />
    <property role="TrG5h" value="Equation" />
    <property role="34LRSv" value=":=" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpee:fz7vLUm" resolve="AssignmentExpression" />
  </node>
  <node concept="1TIwiD" id="29R9$zYWiFR">
    <property role="EcuMT" value="2483495814474836727" />
    <property role="TrG5h" value="OppositeLinkAccess" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" to="tp25:gzTsc4p" resolve="SLinkListAccess" />
    <node concept="RPilO" id="29R9$zZN5nE" role="lGtFl">
      <ref role="RPilL" to="tp25:gzTtc_y" resolve="link" />
      <node concept="ROjv2" id="29R9$zZN5nH" role="ROhUF">
        <property role="1W_73P" value="~" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="29R9$zZUovC">
    <property role="EcuMT" value="2483495814491113448" />
    <property role="TrG5h" value="Rule" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="34LRSv" value="rule" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6HWpSUFcW9N" role="1TKVEi">
      <property role="IQ2ns" value="7745179321625723507" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statement" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fzclF8l" resolve="Statement" />
    </node>
    <node concept="PrWs8" id="6_R8J$2CjE7" role="PzmwI">
      <ref role="PrY4T" node="6_R8J$2CjE3" resolve="RuleSetMember" />
    </node>
    <node concept="PrWs8" id="4WFClUM1rST" role="PzmwI">
      <ref role="PrY4T" node="4WFClUM1rSw" resolve="Feature" />
    </node>
    <node concept="1TJgyi" id="u5SXqxk1i$" role="1TKVEl">
      <property role="IQ2nx" value="542089841136899236" />
      <property role="TrG5h" value="initialLowPriority" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="3I0pf1O7QPM" role="1TKVEl">
      <property role="IQ2nx" value="4287537829159857522" />
      <property role="TrG5h" value="modelDeriver" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="29R9$zZUovD">
    <property role="EcuMT" value="2483495814491113449" />
    <property role="TrG5h" value="RuleSet" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5g4xL_rywoH" role="1TKVEl">
      <property role="IQ2nx" value="6054112342072493613" />
      <property role="TrG5h" value="synthetic" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="5g4xL_rywoD" role="1TKVEi">
      <property role="IQ2ns" value="6054112342072493609" />
      <property role="20kJfa" value="source" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1TJgyj" id="6_R8J$2ChSl" role="1TKVEi">
      <property role="IQ2ns" value="7599581349097315861" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="members" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6_R8J$2CjE3" resolve="RuleSetMember" />
    </node>
    <node concept="1TJgyj" id="6HWpSUEu3U8" role="1TKVEi">
      <property role="IQ2ns" value="7745179321613434504" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="old_attributes" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4$MeK2bmw9s" resolve="Attribute" />
      <node concept="asaX9" id="6_R8J$2E2Cz" role="lGtFl" />
    </node>
    <node concept="1TJgyj" id="6HWpSUEu3U6" role="1TKVEi">
      <property role="IQ2ns" value="7745179321613434502" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="old_rules" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="29R9$zZUovC" resolve="Rule" />
      <node concept="asaX9" id="6_R8J$2E2C_" role="lGtFl" />
    </node>
    <node concept="PrWs8" id="6HWpSUEu3Ut" role="PzmwI">
      <ref role="PrY4T" node="61p65V8x$6I" resolve="ThisContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="61p65V8x$6I">
    <property role="EcuMT" value="6942607095938564526" />
    <property role="TrG5h" value="ThisContext" />
    <node concept="PrWs8" id="4WFClUM1rSP" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="4$MeK2bmw9s">
    <property role="EcuMT" value="5274342987128242780" />
    <property role="TrG5h" value="Attribute" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="34LRSv" value="attribute" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1TJDcQ" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
    <node concept="PrWs8" id="6_R8J$2CjEe" role="PzmwI">
      <ref role="PrY4T" node="6_R8J$2CjE3" resolve="RuleSetMember" />
    </node>
    <node concept="PrWs8" id="4WFClUM1rSC" role="PzmwI">
      <ref role="PrY4T" node="4WFClUM1rSw" resolve="Feature" />
    </node>
    <node concept="1TJgyi" id="3Qetf3dy0jT" role="1TKVEl">
      <property role="IQ2nx" value="4435611260595733753" />
      <property role="TrG5h" value="composite" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="2UEyDf6lmL1" role="1TKVEl">
      <property role="IQ2nx" value="3362652439077809217" />
      <property role="TrG5h" value="identifying" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7byyZgEvBg3" role="1TKVEl">
      <property role="IQ2nx" value="8278332945861604355" />
      <property role="TrG5h" value="constant" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="79VROD26KQN" role="1TKVEl">
      <property role="IQ2nx" value="8249432652488838579" />
      <property role="TrG5h" value="optional" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="8xxOga2bl6" role="1TKVEl">
      <property role="IQ2nx" value="153552588603176262" />
      <property role="TrG5h" value="modelDeriver" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="4$MeK2bvRdy">
    <property role="EcuMT" value="5274342987130696546" />
    <property role="TrG5h" value="AttributeOperation" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1TJDcQ" to="tpee:fz7vLUo" resolve="VariableReference" />
    <node concept="PrWs8" id="4$MeK2bvUee" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="1TJgyj" id="4$MeK2bvUeg" role="1TKVEi">
      <property role="IQ2ns" value="5274342987130708880" />
      <property role="20kJfa" value="attribute" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4$MeK2bmw9s" resolve="Attribute" />
      <ref role="20ksaX" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="30GBB6Y$vTM">
    <property role="EcuMT" value="3471323624161541746" />
    <property role="TrG5h" value="NodeBuilderInitAttribute" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1TJDcQ" to="tp3r:4IP40Bi2KcT" resolve="NodeBuilderInitPart" />
    <node concept="1TJgyj" id="7$u7SPnnZ5x" role="1TKVEi">
      <property role="IQ2ns" value="8727447819807355233" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="initValue" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="30GBB6Y$wtJ" role="1TKVEi">
      <property role="IQ2ns" value="3471323624161544047" />
      <property role="20kJfa" value="attribute" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4$MeK2bmw9s" resolve="Attribute" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Y8BM43ogq1">
    <property role="EcuMT" value="5731005489968383617" />
    <property role="TrG5h" value="Attributes" />
    <property role="34LRSv" value="attributes" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4wbMdoKMetb" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="6HWpSUEu3T2">
    <property role="EcuMT" value="7745179321613434434" />
    <property role="TrG5h" value="ModelRuleSet" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Model RuleSet" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" node="29R9$zZUovD" resolve="RuleSet" />
    <node concept="1irR5M" id="4vjy7c4Qp9c" role="rwd14">
      <property role="2$rrk2" value="31" />
      <node concept="1irR9n" id="4vjy7c4Qp9j" role="1irR9h">
        <node concept="3PKj8D" id="4vjy7c4Qp9k" role="3PKjn_">
          <property role="3PKj8l" value="00ddff" />
        </node>
      </node>
      <node concept="1irPie" id="4vjy7c4Qpb3" role="1irR9h">
        <property role="1irPi9" value="m" />
        <node concept="3PKj8D" id="4vjy7c4Qpb4" role="3PKjny">
          <property role="3PKj8l" value="ffffff" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="6HWpSUEu3U0">
    <property role="EcuMT" value="7745179321613434496" />
    <property role="TrG5h" value="ModuleRuleSet" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Module RuleSet" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" node="29R9$zZUovD" resolve="RuleSet" />
    <node concept="1irR5M" id="4vjy7c4Qp9s" role="rwd14">
      <property role="2$rrk2" value="30" />
      <node concept="1irR9n" id="4vjy7c4Qp9z" role="1irR9h">
        <node concept="3PKj8D" id="4vjy7c4Qp9$" role="3PKjn_">
          <property role="3PKj8l" value="00ddff" />
        </node>
      </node>
      <node concept="1irPie" id="4vjy7c4QpaM" role="1irR9h">
        <property role="1irPi9" value="M" />
        <node concept="3PKj8D" id="4vjy7c4QpaN" role="3PKjny">
          <property role="3PKj8l" value="ffffff" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="6HWpSUEu3U3">
    <property role="EcuMT" value="7745179321613434499" />
    <property role="TrG5h" value="RepositoryRuleSet" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Repository RuleSet" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" node="29R9$zZUovD" resolve="RuleSet" />
    <node concept="1irR5M" id="4vjy7c4Qp9W" role="rwd14">
      <property role="2$rrk2" value="28" />
      <node concept="1irR9n" id="4vjy7c4Qpa3" role="1irR9h">
        <node concept="3PKj8D" id="4vjy7c4Qpa4" role="3PKjn_">
          <property role="3PKj8l" value="00ddff" />
        </node>
      </node>
      <node concept="1irPie" id="4vjy7c4Qpag" role="1irR9h">
        <property role="1irPi9" value="r" />
        <node concept="3PKj8D" id="4vjy7c4Qpah" role="3PKjny">
          <property role="3PKj8l" value="ffffff" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="6HWpSUEuark">
    <property role="EcuMT" value="7745179321613461204" />
    <property role="TrG5h" value="NodeRuleSet" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Node RuleSet" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" node="29R9$zZUovD" resolve="RuleSet" />
    <node concept="PrWs8" id="6HWpSUEuarl" role="PzmwI">
      <ref role="PrY4T" to="tpce:2hxg_BDjKM4" resolve="IConceptAspect" />
    </node>
    <node concept="1TJgyj" id="6HWpSUEuarY" role="1TKVEi">
      <property role="IQ2ns" value="7745179321613461246" />
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="1irR5M" id="4vjy7c4Qp9G" role="rwd14">
      <property role="2$rrk2" value="29" />
      <node concept="1irR9n" id="4vjy7c4Qp9N" role="1irR9h">
        <node concept="3PKj8D" id="4vjy7c4Qp9O" role="3PKjn_">
          <property role="3PKj8l" value="00ddff" />
        </node>
      </node>
      <node concept="1irPie" id="4vjy7c4Qpax" role="1irR9h">
        <property role="1irPi9" value="n" />
        <node concept="3PKj8D" id="4vjy7c4Qpay" role="3PKjny">
          <property role="3PKj8l" value="ffffff" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="35Jy4LMD1lX">
    <property role="TrG5h" value="AttributeImplicitSelect" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="EcuMT" value="3562215692195599741" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="35Jy4LMD1u3" role="1TKVEi">
      <property role="20kJfa" value="attribute" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="3562215692195600259" />
      <ref role="20lvS9" node="4$MeK2bmw9s" resolve="Attribute" />
    </node>
    <node concept="PrWs8" id="fZiK5FHvrE" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="4wbMdoKd7ev">
    <property role="EcuMT" value="5191463817731928991" />
    <property role="TrG5h" value="AttributeReference" />
    <property role="3GE5qa" value="attributes" />
    <ref role="1TJDcQ" to="tpee:fz7vLUo" resolve="VariableReference" />
    <node concept="1TJgyj" id="4wbMdoKd7ex" role="1TKVEi">
      <property role="IQ2ns" value="5191463817731928993" />
      <property role="20kJfa" value="attribute" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4$MeK2bmw9s" resolve="Attribute" />
      <ref role="20ksaX" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3Qetf3cPkTM">
    <property role="EcuMT" value="4435611260584021618" />
    <property role="TrG5h" value="StructRuleSet" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Struct RuleSet" />
    <property role="3GE5qa" value="structs" />
    <ref role="1TJDcQ" node="29R9$zZUovD" resolve="RuleSet" />
    <node concept="1TJgyj" id="3Qetf3cPp0s" role="1TKVEi">
      <property role="IQ2ns" value="4435611260584038428" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="extends" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3Qetf3dC4N5" resolve="StructRuleSetReference" />
    </node>
    <node concept="1irR5M" id="4vjy7c4KiqU" role="rwd14">
      <property role="2$rrk2" value="27" />
      <node concept="1irR9n" id="4vjy7c4QiFL" role="1irR9h">
        <node concept="3PKj8D" id="4vjy7c4Kir3" role="3PKjn_">
          <property role="3PKj8l" value="00ddff" />
        </node>
      </node>
      <node concept="1irPie" id="4vjy7c4QiG4" role="1irR9h">
        <property role="1irPi9" value="s" />
        <node concept="3PKj8D" id="4vjy7c4QiGf" role="3PKjny">
          <property role="3PKj8l" value="ffffff" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="3Qetf3cPPAL">
    <property role="EcuMT" value="4435611260584155569" />
    <property role="TrG5h" value="StructType" />
    <property role="3GE5qa" value="structs" />
    <property role="34LRSv" value="struct&lt;&gt;" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="3Qetf3cPPAM" role="1TKVEi">
      <property role="IQ2ns" value="4435611260584155570" />
      <property role="20kJfa" value="class" />
      <ref role="20lvS9" node="3Qetf3cPkTM" resolve="StructRuleSet" />
    </node>
    <node concept="RPilO" id="67uyCwD4I_y" role="lGtFl">
      <ref role="RPilL" node="3Qetf3cPPAM" resolve="class" />
      <node concept="ROjv2" id="67uyCwD4I_C" role="ROhUF">
        <property role="1W_73P" value="struct&lt;" />
        <property role="1W_73K" value="&gt;" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="3Qetf3d9slq">
    <property role="EcuMT" value="4435611260589294938" />
    <property role="TrG5h" value="Struct" />
    <property role="3GE5qa" value="structs" />
    <property role="34LRSv" value="struct" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="3Qetf3d9slr" role="1TKVEi">
      <property role="IQ2ns" value="4435611260589294939" />
      <property role="20kJfa" value="class" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3Qetf3cPkTM" resolve="StructRuleSet" />
    </node>
    <node concept="1TJgyj" id="745HIYNPcqg" role="1TKVEi">
      <property role="IQ2ns" value="8144116641799915152" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="identity" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="RPilO" id="67uyCwD0$6o" role="lGtFl">
      <ref role="RPilL" node="3Qetf3d9slr" resolve="class" />
      <node concept="ROjv2" id="67uyCwD0$6r" role="ROhUF">
        <property role="1W_73K" value="()" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="3Qetf3dC4N5">
    <property role="EcuMT" value="4435611260597324997" />
    <property role="TrG5h" value="StructRuleSetReference" />
    <property role="3GE5qa" value="structs" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3Qetf3dC4N6" role="1TKVEi">
      <property role="IQ2ns" value="4435611260597324998" />
      <property role="20kJfa" value="class" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3Qetf3cPkTM" resolve="StructRuleSet" />
    </node>
  </node>
  <node concept="1TIwiD" id="67uyCwCOEaZ">
    <property role="EcuMT" value="7052226383913853631" />
    <property role="3GE5qa" value="structs" />
    <property role="TrG5h" value="StructParent" />
    <property role="34LRSv" value="parent" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="67uyCwCOEb0" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="55IEyjJEeQU">
    <property role="EcuMT" value="5867814440126705082" />
    <property role="3GE5qa" value="models" />
    <property role="TrG5h" value="RootsImplicitSelect" />
    <property role="34LRSv" value="roots" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="55IEyjJEeR1" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="1TJgyj" id="55IEyjJEjgi" role="1TKVEi">
      <property role="IQ2ns" value="5867814440126723090" />
      <property role="20kJfa" value="concept" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="55IEyjJExwL">
    <property role="EcuMT" value="5867814440126781489" />
    <property role="3GE5qa" value="models" />
    <property role="TrG5h" value="Models" />
    <property role="34LRSv" value="models" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="55IEyjJExwM" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="18IIFqBx3QL">
    <property role="EcuMT" value="1310189835268668849" />
    <property role="TrG5h" value="OppositeLinkAccessImplicitSelect" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="RPilO" id="18IIFqBx3QM" role="lGtFl">
      <ref role="RPilL" node="18IIFqBH7Z$" resolve="link" />
      <node concept="ROjv2" id="18IIFqBx3QN" role="ROhUF">
        <property role="1W_73P" value="~" />
      </node>
    </node>
    <node concept="PrWs8" id="18IIFqBH7Zy" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="1TJgyj" id="18IIFqBH7Z$" role="1TKVEi">
      <property role="IQ2ns" value="1310189835271831524" />
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="76efOMRCHWM">
    <property role="TrG5h" value="ListBuilder" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="34LRSv" value="[list]" />
    <property role="EcuMT" value="8182547171709738802" />
    <property role="3GE5qa" value="expressions" />
    <property role="R4oN_" value="list builder of sequences and/or elements" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="4jp8R7C$k_N" role="1TKVEi">
      <property role="IQ2ns" value="4961035436665424243" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="2bORRGLUZYX">
    <property role="EcuMT" value="2518883811818471357" />
    <property role="TrG5h" value="ToSetOperation" />
    <property role="34LRSv" value="toSet" />
    <property role="R4oN_" value="convert to a set" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tp2q:u1zR62sAAH" resolve="NoArgumentsSequenceOperation" />
  </node>
  <node concept="1TIwiD" id="7S$pNDLbd0e">
    <property role="EcuMT" value="9089503448645029902" />
    <property role="3GE5qa" value="models" />
    <property role="TrG5h" value="RepositoryOperation" />
    <property role="34LRSv" value="repository" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7S$pNDLbd0f" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="7S$pNDLbgad">
    <property role="EcuMT" value="9089503448645042829" />
    <property role="3GE5qa" value="models" />
    <property role="TrG5h" value="Modules" />
    <property role="34LRSv" value="modules" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7S$pNDLbgae" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HLMRNkuBN1">
    <property role="EcuMT" value="4283428457607232705" />
    <property role="TrG5h" value="PreviousStateExpression" />
    <property role="34LRSv" value="pre(expr)" />
    <property role="R4oN_" value="previous state expression" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="3HLMRNkuYWy" role="1TKVEi">
      <property role="IQ2ns" value="4283428457607327522" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="PlHQZ" id="4WFClUM1rSw">
    <property role="EcuMT" value="5704830781080583712" />
    <property role="TrG5h" value="Feature" />
    <property role="3GE5qa" value="members" />
    <node concept="PrWs8" id="4WFClUM1rSK" role="PrDN$">
      <ref role="PrY4T" node="61p65V8x$6I" resolve="ThisContext" />
    </node>
    <node concept="1TJgyi" id="4WFClUM1rSz" role="1TKVEl">
      <property role="IQ2nx" value="5704830781080583715" />
      <property role="TrG5h" value="synthetic" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="4WFClUMuhCz" role="1TKVEi">
      <property role="IQ2ns" value="5704830781088143907" />
      <property role="20kJfa" value="source" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="rTfv3GWr7J">
    <property role="TrG5h" value="CopyImplicitSelect" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="EcuMT" value="502500938405229039" />
    <property role="34LRSv" value="copy" />
    <property role="3GE5qa" value="models" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="rTfv3GWr7L" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="45beoc8pRWf">
    <property role="EcuMT" value="4704917470663114511" />
    <property role="TrG5h" value="IssuesOperation" />
    <property role="34LRSv" value="issues" />
    <property role="3GE5qa" value="issues" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="45beoc8pRWg" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="41CotWWrJg$">
    <property role="EcuMT" value="4641067027424801828" />
    <property role="3GE5qa" value="issues" />
    <property role="TrG5h" value="Issue" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="7cCgEMkno8n" role="1TKVEi">
      <property role="IQ2ns" value="8297955622421103127" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="severity" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7cCgEMkno8i" resolve="SeverityDeclaration" />
    </node>
    <node concept="1TJgyj" id="41CotWWs4Oc" role="1TKVEi">
      <property role="IQ2ns" value="4641067027424890124" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="object" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="2iL65LTUI5t" role="1TKVEi">
      <property role="IQ2ns" value="2643921241704685917" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="message" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="25R3W" id="41CotWWs4Oo">
    <property role="3F6X1D" value="4641067027424890136" />
    <property role="3GE5qa" value="issues" />
    <property role="TrG5h" value="MessageSeverity" />
    <ref role="1H5jkz" node="41CotWWs4Op" resolve="error" />
    <node concept="25R33" id="41CotWWs4Op" role="25R1y">
      <property role="3tVfz5" value="4641067027424890137" />
      <property role="TrG5h" value="error" />
      <property role="1L1pqM" value="error" />
    </node>
    <node concept="25R33" id="41CotWWs4Oq" role="25R1y">
      <property role="3tVfz5" value="4641067027424890138" />
      <property role="TrG5h" value="warning" />
      <property role="1L1pqM" value="warning" />
    </node>
    <node concept="25R33" id="41CotWWs4Ot" role="25R1y">
      <property role="3tVfz5" value="4641067027424890141" />
      <property role="TrG5h" value="info" />
      <property role="1L1pqM" value="info" />
    </node>
  </node>
  <node concept="1TIwiD" id="2iL65LTVkBJ">
    <property role="EcuMT" value="2643921241704843759" />
    <property role="3GE5qa" value="issues" />
    <property role="TrG5h" value="NodeIssue" />
    <property role="34LRSv" value="&lt;node issue&gt;" />
    <ref role="1TJDcQ" node="41CotWWrJg$" resolve="Issue" />
    <node concept="1irR5M" id="rktk3X5CfR" role="rwd14">
      <property role="2$rrk2" value="1" />
      <node concept="1irPie" id="rktk3X5CfV" role="1irR9h">
        <property role="1irPi9" value="n" />
        <node concept="3PKj8D" id="rktk3X5Cg0" role="3PKjny">
          <property role="3PKj8l" value="ff7777" />
        </node>
      </node>
    </node>
    <node concept="1TJgyj" id="wH5jBlQug8" role="1TKVEi">
      <property role="IQ2ns" value="589150464400548872" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="feature" />
      <ref role="20lvS9" node="wH5jBlQuf1" resolve="FeatureDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="2iL65LTVkL0">
    <property role="EcuMT" value="2643921241704844352" />
    <property role="3GE5qa" value="issues" />
    <property role="TrG5h" value="ModelIssue" />
    <property role="34LRSv" value="&lt;model issue&gt;" />
    <ref role="1TJDcQ" node="41CotWWrJg$" resolve="Issue" />
    <node concept="1irR5M" id="rktk3X5Cgb" role="rwd14">
      <property role="2$rrk2" value="3" />
      <node concept="1irPie" id="rktk3X5Cgf" role="1irR9h">
        <property role="1irPi9" value="m" />
        <node concept="3PKj8D" id="rktk3X5Cgg" role="3PKjny">
          <property role="3PKj8l" value="ff7777" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="2iL65LTVkL1">
    <property role="EcuMT" value="2643921241704844353" />
    <property role="3GE5qa" value="issues" />
    <property role="TrG5h" value="ModuleIssue" />
    <property role="34LRSv" value="&lt;module issue&gt;" />
    <ref role="1TJDcQ" node="41CotWWrJg$" resolve="Issue" />
    <node concept="1irR5M" id="rktk3X5Cg3" role="rwd14">
      <property role="2$rrk2" value="2" />
      <node concept="1irPie" id="rktk3X5Cg7" role="1irR9h">
        <property role="1irPi9" value="M" />
        <node concept="3PKj8D" id="rktk3X5Cg8" role="3PKjny">
          <property role="3PKj8l" value="ff7777" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="6NLrHVVfXXx">
    <property role="EcuMT" value="7850177529460547425" />
    <property role="3GE5qa" value="issues" />
    <property role="TrG5h" value="MessageOperation" />
    <property role="34LRSv" value="message" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6NLrHVVfXXy" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="6NLrHVVggIG">
    <property role="EcuMT" value="7850177529460624300" />
    <property role="3GE5qa" value="issues.severity" />
    <property role="TrG5h" value="SeverityOperation" />
    <property role="34LRSv" value="severity" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6NLrHVVggIH" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="6NLrHVVgBIb">
    <property role="EcuMT" value="7850177529460718475" />
    <property role="3GE5qa" value="issues.feature" />
    <property role="TrG5h" value="FeatureOperation" />
    <property role="34LRSv" value="feature" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6NLrHVVgBIc" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="7cCgEMkno8i">
    <property role="EcuMT" value="8297955622421103122" />
    <property role="3GE5qa" value="issues.severity" />
    <property role="TrG5h" value="SeverityDeclaration" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="7cCgEMkno8j">
    <property role="EcuMT" value="8297955622421103123" />
    <property role="3GE5qa" value="issues.severity" />
    <property role="TrG5h" value="SeverityReference" />
    <ref role="1TJDcQ" node="7cCgEMkno8i" resolve="SeverityDeclaration" />
    <node concept="1TJgyi" id="7cCgEMkno8k" role="1TKVEl">
      <property role="IQ2nx" value="8297955622421103124" />
      <property role="TrG5h" value="severity" />
      <ref role="AX2Wp" node="41CotWWs4Oo" resolve="MessageSeverity" />
    </node>
  </node>
  <node concept="1TIwiD" id="7cCgEMkno8m">
    <property role="EcuMT" value="8297955622421103126" />
    <property role="3GE5qa" value="issues.severity" />
    <property role="TrG5h" value="SeverityExpression" />
    <ref role="1TJDcQ" node="7cCgEMkno8i" resolve="SeverityDeclaration" />
    <node concept="1TJgyj" id="7cCgEMkno8r" role="1TKVEi">
      <property role="IQ2ns" value="8297955622421103131" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="wH5jBlQuf1">
    <property role="EcuMT" value="589150464400548801" />
    <property role="3GE5qa" value="issues.feature" />
    <property role="TrG5h" value="FeatureDeclaration" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="wH5jBlQuf2">
    <property role="EcuMT" value="589150464400548802" />
    <property role="3GE5qa" value="issues.feature" />
    <property role="TrG5h" value="FeatureExpression" />
    <property role="34LRSv" value="#" />
    <property role="R4oN_" value="feature expression" />
    <ref role="1TJDcQ" node="wH5jBlQuf1" resolve="FeatureDeclaration" />
    <node concept="1TJgyj" id="wH5jBlQuf3" role="1TKVEi">
      <property role="IQ2ns" value="589150464400548803" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="wH5jBlQug7">
    <property role="EcuMT" value="589150464400548871" />
    <property role="3GE5qa" value="issues.feature" />
    <property role="TrG5h" value="FeatureReference" />
    <ref role="1TJDcQ" node="wH5jBlQuf1" resolve="FeatureDeclaration" />
    <node concept="1TJgyj" id="6NZFdbTNCZw" role="1TKVEi">
      <property role="IQ2ns" value="7854186297291608032" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="7x27w4ybBDN">
    <property role="EcuMT" value="8665521623231527539" />
    <property role="3GE5qa" value="models.builder" />
    <property role="TrG5h" value="ModelBuilder" />
    <property role="34LRSv" value="&lt;model&gt;" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="7x27w4ybBDU" role="1TKVEi">
      <property role="IQ2ns" value="8665521623231527546" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parts" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="lSgC6t_tvD" resolve="ModelBuilderPart" />
    </node>
    <node concept="1TJgyi" id="7x27w4yh6fK" role="1TKVEl">
      <property role="IQ2nx" value="8665521623232963568" />
      <property role="TrG5h" value="transient" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="lSgC6t_tvC">
    <property role="EcuMT" value="394138091856975848" />
    <property role="3GE5qa" value="models.builder" />
    <property role="TrG5h" value="ModelBuilderName" />
    <property role="34LRSv" value="name" />
    <ref role="1TJDcQ" node="lSgC6t_tvD" resolve="ModelBuilderPart" />
  </node>
  <node concept="1TIwiD" id="lSgC6t_tvD">
    <property role="EcuMT" value="394138091856975849" />
    <property role="3GE5qa" value="models.builder" />
    <property role="TrG5h" value="ModelBuilderPart" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="lSgC6t_ZNe" role="1TKVEi">
      <property role="IQ2ns" value="394138091857116366" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="lSgC6t_tvE">
    <property role="EcuMT" value="394138091856975850" />
    <property role="3GE5qa" value="models.builder" />
    <property role="TrG5h" value="ModelBuilderRoots" />
    <property role="34LRSv" value="roots" />
    <ref role="1TJDcQ" node="lSgC6t_tvD" resolve="ModelBuilderPart" />
    <node concept="1TJgyj" id="h2RRcAX" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="IQ2ns" value="1171315804605" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3jHaWB7tTnF">
    <property role="EcuMT" value="3813752605087602155" />
    <property role="3GE5qa" value="models" />
    <property role="TrG5h" value="UsedLanguages" />
    <property role="34LRSv" value="languages" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3jHaWB7tTnG" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="PlHQZ" id="6_R8J$2CjE3">
    <property role="EcuMT" value="7599581349097323138" />
    <property role="TrG5h" value="RuleSetMember" />
    <property role="3GE5qa" value="members" />
  </node>
  <node concept="1TIwiD" id="6_R8J$2CjEx">
    <property role="EcuMT" value="7599581349097323169" />
    <property role="TrG5h" value="PlaceholderRuleSetMember" />
    <property role="3GE5qa" value="members" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6_R8J$2CjEy" role="PzmwI">
      <ref role="PrY4T" node="6_R8J$2CjE3" resolve="RuleSetMember" />
    </node>
  </node>
  <node concept="1TIwiD" id="6_R8J$2K4_6">
    <property role="EcuMT" value="7599581349099358534" />
    <property role="3GE5qa" value="members" />
    <property role="TrG5h" value="RuleSetComment" />
    <property role="34LRSv" value="comment" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6_R8J$2K4_7" role="PzmwI">
      <ref role="PrY4T" node="6_R8J$2CjE3" resolve="RuleSetMember" />
    </node>
    <node concept="1TJgyi" id="6_R8J$2K4_d" role="1TKVEl">
      <property role="IQ2nx" value="7599581349099358541" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="7EeKZioUq_6">
    <property role="EcuMT" value="8831211374625007942" />
    <property role="TrG5h" value="TracingMarker" />
    <property role="3GE5qa" value="tracing" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="1TJgyi" id="7EeKZioUq_b" role="1TKVEl">
      <property role="IQ2nx" value="8831211374625007947" />
      <property role="TrG5h" value="message" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="M6xJ_" id="7EeKZioUq_7" role="lGtFl">
      <property role="Hh88m" value="traced" />
      <node concept="trNpa" id="7EeKZioUq_9" role="EQaZv">
        <ref role="trN6q" to="tpee:fz3vP1J" resolve="Expression" />
      </node>
    </node>
  </node>
</model>

