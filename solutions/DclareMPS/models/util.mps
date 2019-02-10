<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1a96ceaa-2946-43e0-af3f-cd05d77ee6d1(DclareMPSRuntime.util)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
  </languages>
  <imports>
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="t4tl" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.dclare.mps(DclareMPSRuntime/)" />
    <import index="dy39" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.transactions(DclareMPSRuntime/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="42m3" ref="55d6b6f5-8095-4cd0-a39b-779da8d12940/java:org.modelingvalue.collections.util(DclareMPSRuntime/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="30fQumnG8Au">
    <property role="TrG5h" value="DclareUtil" />
    <node concept="2tJIrI" id="29R9$zZo$v9" role="jymVt" />
    <node concept="2YIFZL" id="4Y8BM43o88y" role="jymVt">
      <property role="TrG5h" value="getAttributes" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="4Y8BM43o88_" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="4Y8BM43o88A" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="4Y8BM43o88B" role="3clF47">
        <node concept="3clFbF" id="4Y8BM43o9KK" role="3cqZAp">
          <node concept="10QFUN" id="4Y8BM43oaMd" role="3clFbG">
            <node concept="2OqwBi" id="4Y8BM43oaqz" role="10QFUP">
              <node concept="1eOMI4" id="4Y8BM43oadw" role="2Oq$k0">
                <node concept="10QFUN" id="4Y8BM43oagw" role="1eOMHV">
                  <node concept="3uibUv" id="4wbMdoJv1ie" role="10QFUM">
                    <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                  </node>
                  <node concept="37vLTw" id="4Y8BM43o9KJ" role="10QFUP">
                    <ref role="3cqZAo" node="4Y8BM43o88_" resolve="object" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4Y8BM43oaxi" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DObject.getNonSyntheticAttributes():java.util.List" resolve="getNonSyntheticAttributes" />
              </node>
            </node>
            <node concept="A3Dl8" id="4Y8BM43oaMe" role="10QFUM">
              <node concept="3uibUv" id="4Y8BM43odSo" role="A3Ik2">
                <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Y8BM43o88M" role="1B3o_S" />
      <node concept="A3Dl8" id="4Y8BM43o9lz" role="3clF45">
        <node concept="3uibUv" id="4Y8BM43oeiT" role="A3Ik2">
          <ref role="3uigEE" to="t4tl:~DAttribute" resolve="DAttribute" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Y8BM43o7rh" role="jymVt" />
    <node concept="2YIFZL" id="1lQ5DPQts7D" role="jymVt">
      <property role="TrG5h" value="getAttributeValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="1lQ5DPQtstn" role="3clF46">
        <property role="TrG5h" value="attributeId" />
        <node concept="3uibUv" id="1lQ5DPQtsvD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4wbMdoJjOKU" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4wbMdoJjOZH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7S$pNDLrlg4" role="3clF46">
        <property role="TrG5h" value="synthetic" />
        <node concept="10P_77" id="7S$pNDLrltX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="79VROD27cJk" role="3clF46">
        <property role="TrG5h" value="optional" />
        <node concept="10P_77" id="79VROD27cMO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3Qetf3dxTNo" role="3clF46">
        <property role="TrG5h" value="composite" />
        <node concept="10P_77" id="3Qetf3dxTRx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2UEyDf69Y8Q" role="3clF46">
        <property role="TrG5h" value="identityIndex" />
        <node concept="10Oyi0" id="2UEyDf69Yag" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4Bl8LN15CN3" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="4Bl8LN15Dij" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
          <node concept="3uibUv" id="4Bl8LN15EeV" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1th4WYI8axt" role="3clF46">
        <property role="TrG5h" value="function" />
        <node concept="3uibUv" id="1th4WYI8aEi" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="16syzq" id="1th4WYI8b8I" role="11_B2D">
            <ref role="16sUi3" node="1th4WYI7A9p" resolve="O" />
          </node>
          <node concept="16syzq" id="1th4WYI8bdq" role="11_B2D">
            <ref role="16sUi3" node="1lQ5DPQtsqI" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1lQ5DPQtsij" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="16syzq" id="1th4WYI7BXB" role="1tU5fm">
          <ref role="16sUi3" node="1th4WYI7A9p" resolve="O" />
        </node>
      </node>
      <node concept="3clFbS" id="1lQ5DPQts7G" role="3clF47">
        <node concept="3clFbF" id="1lQ5DPQtwf3" role="3cqZAp">
          <node concept="2OqwBi" id="1lQ5DPQtwTS" role="3clFbG">
            <node concept="2YIFZM" id="7byyZgEhYNP" role="2Oq$k0">
              <ref role="1Pybhc" to="t4tl:~DAttribute" resolve="DAttribute" />
              <ref role="37wK5l" to="t4tl:~DAttribute.of(java.lang.Object,java.lang.String,boolean,boolean,boolean,int,java.util.function.Supplier,java.util.function.Function):org.modelingvalue.dclare.mps.DAttribute" resolve="of" />
              <node concept="37vLTw" id="7byyZgEhYNQ" role="37wK5m">
                <ref role="3cqZAo" node="1lQ5DPQtstn" resolve="attributeId" />
              </node>
              <node concept="37vLTw" id="7byyZgEhYNR" role="37wK5m">
                <ref role="3cqZAo" node="4wbMdoJjOKU" resolve="name" />
              </node>
              <node concept="37vLTw" id="7S$pNDLrl$M" role="37wK5m">
                <ref role="3cqZAo" node="7S$pNDLrlg4" resolve="synthetic" />
              </node>
              <node concept="37vLTw" id="79VROD27e4S" role="37wK5m">
                <ref role="3cqZAo" node="79VROD27cJk" resolve="optional" />
              </node>
              <node concept="37vLTw" id="7byyZgEhYNS" role="37wK5m">
                <ref role="3cqZAo" node="3Qetf3dxTNo" resolve="composite" />
              </node>
              <node concept="37vLTw" id="7byyZgEhYNT" role="37wK5m">
                <ref role="3cqZAo" node="2UEyDf69Y8Q" resolve="identityIndex" />
              </node>
              <node concept="37vLTw" id="4Bl8LN15FZH" role="37wK5m">
                <ref role="3cqZAo" node="4Bl8LN15CN3" resolve="source" />
              </node>
              <node concept="37vLTw" id="1th4WYI8bZK" role="37wK5m">
                <ref role="3cqZAo" node="1th4WYI8axt" resolve="function" />
              </node>
              <node concept="16syzq" id="1th4WYI7AAc" role="3PaCim">
                <ref role="16sUi3" node="1th4WYI7A9p" resolve="O" />
              </node>
              <node concept="16syzq" id="7byyZgEi0VK" role="3PaCim">
                <ref role="16sUi3" node="1lQ5DPQtsqI" resolve="T" />
              </node>
            </node>
            <node concept="liA8E" id="1lQ5DPQtxzb" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DAttribute.get(java.lang.Object):java.lang.Object" resolve="get" />
              <node concept="37vLTw" id="1lQ5DPQtxFz" role="37wK5m">
                <ref role="3cqZAo" node="1lQ5DPQtsij" resolve="object" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1lQ5DPQtrW5" role="1B3o_S" />
      <node concept="16syzq" id="1lQ5DPQt_Nc" role="3clF45">
        <ref role="16sUi3" node="1lQ5DPQtsqI" resolve="T" />
      </node>
      <node concept="16euLQ" id="1th4WYI7A9p" role="16eVyc">
        <property role="TrG5h" value="O" />
      </node>
      <node concept="16euLQ" id="1lQ5DPQtsqI" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="1lQ5DPQt_c7" role="jymVt" />
    <node concept="2YIFZL" id="1lQ5DPQt_o8" role="jymVt">
      <property role="TrG5h" value="setAttributeValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="1lQ5DPQt_o9" role="3clF46">
        <property role="TrG5h" value="attributeId" />
        <node concept="3uibUv" id="1lQ5DPQt_oa" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4wbMdoJjOTa" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4wbMdoJjOXu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7S$pNDLrkV9" role="3clF46">
        <property role="TrG5h" value="synthetic" />
        <node concept="10P_77" id="7S$pNDLrl6L" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="79VROD27cNV" role="3clF46">
        <property role="TrG5h" value="optional" />
        <node concept="10P_77" id="79VROD27cR8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3Qetf3dxVkN" role="3clF46">
        <property role="TrG5h" value="composite" />
        <node concept="10P_77" id="3Qetf3dxVoy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4Bl8LN15Gwj" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="4Bl8LN15GZb" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
          <node concept="3uibUv" id="4Bl8LN15HVT" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1lQ5DPQt_ob" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="1lQ5DPQ_8op" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1lQ5DPQtAgA" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="1lQ5DPQtAji" role="1tU5fm">
          <ref role="16sUi3" node="1lQ5DPQt_oo" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="1lQ5DPQt_od" role="3clF47">
        <node concept="3clFbF" id="1lQ5DPQt_oe" role="3cqZAp">
          <node concept="2OqwBi" id="1lQ5DPQt_of" role="3clFbG">
            <node concept="2YIFZM" id="7byyZgEh$kv" role="2Oq$k0">
              <ref role="1Pybhc" to="t4tl:~DAttribute" resolve="DAttribute" />
              <ref role="37wK5l" to="t4tl:~DAttribute.of(java.lang.Object,java.lang.String,boolean,boolean,boolean,int,java.util.function.Supplier,java.util.function.Function):org.modelingvalue.dclare.mps.DAttribute" resolve="of" />
              <node concept="37vLTw" id="7byyZgEh$kw" role="37wK5m">
                <ref role="3cqZAo" node="1lQ5DPQt_o9" resolve="attributeId" />
              </node>
              <node concept="37vLTw" id="7byyZgEh$kx" role="37wK5m">
                <ref role="3cqZAo" node="4wbMdoJjOTa" resolve="name" />
              </node>
              <node concept="37vLTw" id="7S$pNDLrldx" role="37wK5m">
                <ref role="3cqZAo" node="7S$pNDLrkV9" resolve="synthetic" />
              </node>
              <node concept="37vLTw" id="79VROD27d$p" role="37wK5m">
                <ref role="3cqZAo" node="79VROD27cNV" resolve="optional" />
              </node>
              <node concept="37vLTw" id="7byyZgEh$ky" role="37wK5m">
                <ref role="3cqZAo" node="3Qetf3dxVkN" resolve="composite" />
              </node>
              <node concept="3cmrfG" id="1th4WYI7EvC" role="37wK5m">
                <property role="3cmrfH" value="-1" />
              </node>
              <node concept="37vLTw" id="4Bl8LN15JDW" role="37wK5m">
                <ref role="3cqZAo" node="4Bl8LN15Gwj" resolve="source" />
              </node>
              <node concept="10Nm6u" id="1th4WYI7EgZ" role="37wK5m" />
              <node concept="3uibUv" id="7byyZgEhZ1J" role="3PaCim">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="16syzq" id="7byyZgEhZ9w" role="3PaCim">
                <ref role="16sUi3" node="1lQ5DPQt_oo" resolve="T" />
              </node>
            </node>
            <node concept="liA8E" id="1lQ5DPQt_oi" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DAttribute.set(java.lang.Object,java.lang.Object):java.lang.Object" resolve="set" />
              <node concept="37vLTw" id="1lQ5DPQt_oj" role="37wK5m">
                <ref role="3cqZAo" node="1lQ5DPQt_ob" resolve="object" />
              </node>
              <node concept="37vLTw" id="1lQ5DPQtAs1" role="37wK5m">
                <ref role="3cqZAo" node="1lQ5DPQtAgA" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1lQ5DPQt_ok" role="1B3o_S" />
      <node concept="3cqZAl" id="1lQ5DPQt_ol" role="3clF45" />
      <node concept="16euLQ" id="1lQ5DPQt_oo" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="6QNGPTyqSNj" role="jymVt" />
    <node concept="2YIFZL" id="2v4o0zdF2x_" role="jymVt">
      <property role="TrG5h" value="setRootNodes" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2v4o0zdF2xC" role="3clF47">
        <node concept="3clFbJ" id="7cw6wiN1ne4" role="3cqZAp">
          <node concept="3clFbS" id="7cw6wiN1ne6" role="3clFbx">
            <node concept="3clFbF" id="2v4o0zdF645" role="3cqZAp">
              <node concept="2OqwBi" id="2v4o0zdF6q$" role="3clFbG">
                <node concept="1eOMI4" id="2v4o0zdF643" role="2Oq$k0">
                  <node concept="10QFUN" id="2v4o0zdF640" role="1eOMHV">
                    <node concept="3uibUv" id="2v4o0zdF64q" role="10QFUM">
                      <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                    </node>
                    <node concept="37vLTw" id="2v4o0zdF6by" role="10QFUP">
                      <ref role="3cqZAo" node="2v4o0zdF5Y0" resolve="model" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2v4o0zdF6NA" role="2OqNvi">
                  <ref role="37wK5l" to="t4tl:~DModel.setRootNodes(org.jetbrains.mps.openapi.language.SAbstractConcept,java.util.Collection):void" resolve="setRootNodes" />
                  <node concept="37vLTw" id="2v4o0zdGzaE" role="37wK5m">
                    <ref role="3cqZAo" node="2v4o0zdGz0T" resolve="concept" />
                  </node>
                  <node concept="37vLTw" id="2v4o0zdF6Ry" role="37wK5m">
                    <ref role="3cqZAo" node="2v4o0zdF5ZA" resolve="roots" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7cw6wiN1nud" role="3clFbw">
            <node concept="10Nm6u" id="7cw6wiN1nxS" role="3uHU7w" />
            <node concept="37vLTw" id="7cw6wiN1nhZ" role="3uHU7B">
              <ref role="3cqZAo" node="2v4o0zdF5Y0" resolve="model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2v4o0zdF1Sr" role="1B3o_S" />
      <node concept="3cqZAl" id="2v4o0zdF2wN" role="3clF45" />
      <node concept="37vLTG" id="2v4o0zdF5Y0" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2v4o0zdF5XZ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="2v4o0zdGz0T" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="2v4o0zdGz2W" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="2v4o0zdF5ZA" role="3clF46">
        <property role="TrG5h" value="roots" />
        <node concept="3uibUv" id="2v4o0zdF60S" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3qUE_q" id="2v4o0zdFeLu" role="11_B2D">
            <node concept="3uibUv" id="2v4o0zdFeN9" role="3qUE_r">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2v4o0zdF1gQ" role="jymVt" />
    <node concept="2YIFZL" id="6QNGPTyqUHH" role="jymVt">
      <property role="TrG5h" value="setFeatureValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6QNGPTyqUHK" role="3clF47">
        <node concept="3clFbF" id="2v4o0zdEWvc" role="3cqZAp">
          <node concept="2OqwBi" id="2v4o0zdEXze" role="3clFbG">
            <node concept="1eOMI4" id="2v4o0zdEWva" role="2Oq$k0">
              <node concept="10QFUN" id="2v4o0zdEWv7" role="1eOMHV">
                <node concept="3uibUv" id="2v4o0zdEWY9" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                </node>
                <node concept="37vLTw" id="2v4o0zdEXbf" role="10QFUP">
                  <ref role="3cqZAo" node="6QNGPTyqVlX" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2v4o0zdEXQ8" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DNode.setFeature(org.jetbrains.mps.openapi.language.SConceptFeature,java.lang.Object):void" resolve="setFeature" />
              <node concept="37vLTw" id="2v4o0zdEXYw" role="37wK5m">
                <ref role="3cqZAo" node="6QNGPTyqVnp" resolve="feature" />
              </node>
              <node concept="37vLTw" id="2v4o0zdEY8J" role="37wK5m">
                <ref role="3cqZAo" node="6QNGPTyqYXx" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6QNGPTyqHYV" role="1B3o_S" />
      <node concept="3cqZAl" id="6QNGPTyqUGV" role="3clF45" />
      <node concept="37vLTG" id="6QNGPTyqVlX" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="6QNGPTyqVlW" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6QNGPTyqVnp" role="3clF46">
        <property role="TrG5h" value="feature" />
        <node concept="3uibUv" id="2v4o0zdEWoJ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConceptFeature" resolve="SConceptFeature" />
        </node>
      </node>
      <node concept="37vLTG" id="6QNGPTyqYXx" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="6QNGPTyqYYP" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1lQ5DPQtrAA" role="jymVt" />
    <node concept="2YIFZL" id="29R9$zZq4Ie" role="jymVt">
      <property role="TrG5h" value="getOpposite" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="29R9$zZq4Ig" role="3clF47">
        <node concept="3clFbF" id="29R9$zZq4Ih" role="3cqZAp">
          <node concept="10QFUN" id="29R9$zZq4Ii" role="3clFbG">
            <node concept="2OqwBi" id="29R9$zZq4Ij" role="10QFUP">
              <node concept="1eOMI4" id="29R9$zZq4Ik" role="2Oq$k0">
                <node concept="10QFUN" id="29R9$zZq4Il" role="1eOMHV">
                  <node concept="3uibUv" id="29R9$zZq4Im" role="10QFUM">
                    <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                  </node>
                  <node concept="37vLTw" id="29R9$zZq4In" role="10QFUP">
                    <ref role="3cqZAo" node="29R9$zZq4Iv" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="29R9$zZq4Io" role="2OqNvi">
                <ref role="37wK5l" to="t4tl:~DNode.getReferenceSources(org.jetbrains.mps.openapi.language.SReferenceLink):java.lang.Iterable" resolve="getReferenceSources" />
                <node concept="37vLTw" id="29R9$zZq4Ip" role="37wK5m">
                  <ref role="3cqZAo" node="29R9$zZq4Ix" resolve="oppos" />
                </node>
              </node>
            </node>
            <node concept="A3Dl8" id="29R9$zZq4Iq" role="10QFUM" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="29R9$zZq4It" role="3clF45">
        <node concept="3Tqbb2" id="29R9$zZq4Iu" role="A3Ik2" />
      </node>
      <node concept="37vLTG" id="29R9$zZq4Iv" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="29R9$zZq4Iw" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="29R9$zZq4Ix" role="3clF46">
        <property role="TrG5h" value="oppos" />
        <node concept="3uibUv" id="29R9$zZq4Iy" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="29R9$zZq4Is" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5hwIp2JLcq3" role="jymVt" />
    <node concept="2YIFZL" id="5hwIp2JLc$d" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="findSibling" />
      <node concept="37vLTG" id="5hwIp2JMqup" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="56O9viirrC9" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="5hwIp2JLeCm" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5hwIp2JLeCP" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5hwIp2JLc$h" role="3clF47">
        <node concept="3clFbF" id="5hwIp2JLeQW" role="3cqZAp">
          <node concept="1rXfSq" id="7fAqG1ajx4" role="3clFbG">
            <ref role="37wK5l" node="7fAqG1ai8G" resolve="findModel" />
            <node concept="2OqwBi" id="7fAqG1ajHx" role="37wK5m">
              <node concept="37vLTw" id="7fAqG1ajAx" role="2Oq$k0">
                <ref role="3cqZAo" node="5hwIp2JMqup" resolve="model" />
              </node>
              <node concept="liA8E" id="7fAqG1ajPn" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
            <node concept="37vLTw" id="7fAqG1ajSU" role="37wK5m">
              <ref role="3cqZAo" node="5hwIp2JLeCm" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="H_c77" id="5hwIp2JLc$f" role="3clF45" />
      <node concept="3Tm1VV" id="5hwIp2JLc$g" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7fAqG1ahZU" role="jymVt" />
    <node concept="2YIFZL" id="7fAqG1ai8G" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="findModel" />
      <node concept="37vLTG" id="7fAqG1ai8H" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="7fAqG1aj0Z" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="7fAqG1ai8J" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7fAqG1ai8K" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7fAqG1ai8L" role="3clF47">
        <node concept="1DcWWT" id="7fAqG1ai8M" role="3cqZAp">
          <node concept="3cpWsn" id="7fAqG1ai8N" role="1Duv9x">
            <property role="TrG5h" value="target" />
            <node concept="H_c77" id="7fAqG1ai8O" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="7fAqG1ai8P" role="2LFqv$">
            <node concept="3clFbJ" id="7fAqG1ai8Q" role="3cqZAp">
              <node concept="17R0WA" id="7fAqG1ai8R" role="3clFbw">
                <node concept="2OqwBi" id="7fAqG1ai8S" role="3uHU7B">
                  <node concept="37vLTw" id="7fAqG1ai8T" role="2Oq$k0">
                    <ref role="3cqZAo" node="7fAqG1ai8N" resolve="target" />
                  </node>
                  <node concept="LkI2h" id="7fAqG1ai8U" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="7fAqG1ai8V" role="3uHU7w">
                  <ref role="3cqZAo" node="7fAqG1ai8J" resolve="name" />
                </node>
              </node>
              <node concept="3clFbS" id="7fAqG1ai8W" role="3clFbx">
                <node concept="3cpWs6" id="7fAqG1ai8X" role="3cqZAp">
                  <node concept="37vLTw" id="7fAqG1ai8Y" role="3cqZAk">
                    <ref role="3cqZAo" node="7fAqG1ai8N" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7fAqG1ai8Z" role="1DdaDG">
            <node concept="37vLTw" id="7fAqG1ai91" role="2Oq$k0">
              <ref role="3cqZAo" node="7fAqG1ai8H" resolve="module" />
            </node>
            <node concept="liA8E" id="7fAqG1ai93" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModule.getModels():java.lang.Iterable" resolve="getModels" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7fAqG1ai94" role="3cqZAp">
          <node concept="10Nm6u" id="7fAqG1ai95" role="3clFbG" />
        </node>
      </node>
      <node concept="H_c77" id="7fAqG1ai96" role="3clF45" />
      <node concept="3Tm1VV" id="7fAqG1ai97" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2_8jVv8mtqm" role="jymVt" />
    <node concept="2YIFZL" id="6ndASaeS_ln" role="jymVt">
      <property role="TrG5h" value="getFromMPS" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6ndASaeS_lq" role="3clF47">
        <node concept="3clFbF" id="6ndASaeSBKb" role="3cqZAp">
          <node concept="2OqwBi" id="acrA1QgTkG" role="3clFbG">
            <node concept="2YIFZM" id="acrA1QgPEd" role="2Oq$k0">
              <ref role="37wK5l" to="t4tl:~DClareMPS.instance():org.modelingvalue.dclare.mps.DClareMPS" resolve="instance" />
              <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
            </node>
            <node concept="liA8E" id="acrA1QgTEd" role="2OqNvi">
              <ref role="37wK5l" to="t4tl:~DClareMPS.read(java.util.function.Supplier):java.lang.Object" resolve="read" />
              <node concept="2ShNRf" id="acrA1QgPEe" role="37wK5m">
                <node concept="YeOm9" id="acrA1QgPEf" role="2ShVmc">
                  <node concept="1Y3b0j" id="acrA1QgPEg" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="acrA1QgPEh" role="1B3o_S" />
                    <node concept="3clFb_" id="acrA1QgPEi" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="get" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="acrA1QgPEj" role="1B3o_S" />
                      <node concept="16syzq" id="acrA1QgPEk" role="3clF45">
                        <ref role="16sUi3" node="6ndASaeSBGc" resolve="T" />
                      </node>
                      <node concept="3clFbS" id="acrA1QgPEl" role="3clF47">
                        <node concept="3clFbF" id="acrA1QgPEm" role="3cqZAp">
                          <node concept="2OqwBi" id="acrA1QgPEn" role="3clFbG">
                            <node concept="37vLTw" id="acrA1QgPEo" role="2Oq$k0">
                              <ref role="3cqZAo" node="6ndASaeSBHo" resolve="getter" />
                            </node>
                            <node concept="1Bd96e" id="acrA1QgPEp" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16syzq" id="acrA1QgPEq" role="2Ghqu4">
                      <ref role="16sUi3" node="6ndASaeSBGc" resolve="T" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6ndASaeS$yK" role="1B3o_S" />
      <node concept="16euLQ" id="6ndASaeSBGc" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="6ndASaeSBGP" role="3clF45">
        <ref role="16sUi3" node="6ndASaeSBGc" resolve="T" />
      </node>
      <node concept="37vLTG" id="6ndASaeSBHo" role="3clF46">
        <property role="TrG5h" value="getter" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="6ndASaeSBHm" role="1tU5fm">
          <node concept="16syzq" id="6ndASaeSBIn" role="1ajl9A">
            <ref role="16sUi3" node="6ndASaeSBGc" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5vtCMlZQqXc" role="jymVt" />
    <node concept="2YIFZL" id="5vtCMlZQq1E" role="jymVt">
      <property role="TrG5h" value="dCopy" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="4wJaMXfcFVP" role="3clF46">
        <property role="TrG5h" value="copy" />
        <node concept="3uibUv" id="4wJaMXfcFXY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5vtCMlZQq1F" role="3clF46">
        <property role="TrG5h" value="copied" />
        <node concept="3uibUv" id="5vtCMlZQq1G" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="5vtCMlZQq1H" role="3clF47">
        <node concept="3clFbF" id="4wJaMXe_PVN" role="3cqZAp">
          <node concept="10QFUN" id="4wJaMXe_UbJ" role="3clFbG">
            <node concept="2YIFZM" id="4wJaMXe_Q06" role="10QFUP">
              <ref role="1Pybhc" to="t4tl:~DCopy" resolve="DCopy" />
              <ref role="37wK5l" to="t4tl:~DCopy.of(org.jetbrains.mps.openapi.model.SNode,org.modelingvalue.dclare.mps.DNode):org.modelingvalue.dclare.mps.DCopy" resolve="of" />
              <node concept="37vLTw" id="4wJaMXfcJQa" role="37wK5m">
                <ref role="3cqZAo" node="4wJaMXfcFVP" resolve="copy" />
              </node>
              <node concept="1eOMI4" id="18FLjWqjYZM" role="37wK5m">
                <node concept="10QFUN" id="18FLjWqjYZJ" role="1eOMHV">
                  <node concept="3uibUv" id="18FLjWqjZwf" role="10QFUM">
                    <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                  </node>
                  <node concept="37vLTw" id="4wJaMXe_SOG" role="10QFUP">
                    <ref role="3cqZAo" node="5vtCMlZQq1F" resolve="copied" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="16syzq" id="4wJaMXe_UbK" role="10QFUM">
              <ref role="16sUi3" node="5vtCMlZQq1J" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5vtCMlZQq1I" role="1B3o_S" />
      <node concept="16euLQ" id="5vtCMlZQq1J" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3Tqbb2" id="5vtCMlZQq1K" role="3ztrMU" />
      </node>
      <node concept="16syzq" id="5vtCMlZQq1L" role="3clF45">
        <ref role="16sUi3" node="5vtCMlZQq1J" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="4wJaMXe_MyE" role="jymVt" />
    <node concept="2YIFZL" id="4wJaMXe_OUl" role="jymVt">
      <property role="TrG5h" value="dCopy" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="5vtCMlZPMVo" role="3clF46">
        <property role="TrG5h" value="reader" />
        <node concept="1ajhzC" id="5vtCMlZPMVp" role="1tU5fm">
          <node concept="3uibUv" id="5vtCMlZPMVq" role="1ajl9A">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5vtCMlZPN2q" role="3clF46">
        <property role="TrG5h" value="attr" />
        <node concept="_YKpA" id="5vtCMlZPN2r" role="1tU5fm">
          <node concept="16syzq" id="5vtCMlZPN2s" role="_ZDj9">
            <ref role="16sUi3" node="4wJaMXe_PHK" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4wJaMXe_PK4" role="3clF46">
        <property role="TrG5h" value="copied" />
        <node concept="3uibUv" id="4wJaMXfcFUm" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5vtCMlZPNaN" role="3clF46">
        <property role="TrG5h" value="creator" />
        <node concept="1ajhzC" id="5vtCMlZPNaO" role="1tU5fm">
          <node concept="16syzq" id="5vtCMlZPNaP" role="1ajl9A">
            <ref role="16sUi3" node="4wJaMXe_PHK" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5vtCMlZPNdg" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="_YKpA" id="5vtCMlZPNdh" role="1tU5fm">
          <node concept="16syzq" id="5vtCMlZPNdi" role="_ZDj9">
            <ref role="16sUi3" node="4wJaMXe_PHK" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4wJaMXe_OUo" role="3clF47">
        <node concept="3cpWs6" id="5vtCMlZQ83L" role="3cqZAp">
          <node concept="1rXfSq" id="5vtCMlZQ83M" role="3cqZAk">
            <ref role="37wK5l" node="5vtCMlZPOey" resolve="dNode" />
            <node concept="37vLTw" id="5vtCMlZQ83N" role="37wK5m">
              <ref role="3cqZAo" node="5vtCMlZPMVo" resolve="reader" />
            </node>
            <node concept="37vLTw" id="5vtCMlZQ83O" role="37wK5m">
              <ref role="3cqZAo" node="5vtCMlZPN2q" resolve="attr" />
            </node>
            <node concept="1bVj0M" id="5vtCMlZQ83P" role="37wK5m">
              <node concept="3clFbS" id="5vtCMlZQ83Q" role="1bW5cS">
                <node concept="3clFbF" id="5vtCMlZQ83R" role="3cqZAp">
                  <node concept="1Wc70l" id="5vtCMlZQaHU" role="3clFbG">
                    <node concept="2ZW3vV" id="5vtCMlZQ9Ev" role="3uHU7B">
                      <node concept="3uibUv" id="5vtCMlZQ9Ro" role="2ZW6by">
                        <ref role="3uigEE" to="t4tl:~DCopy" resolve="DCopy" />
                      </node>
                      <node concept="37vLTw" id="5vtCMlZQ9iH" role="2ZW6bz">
                        <ref role="3cqZAo" node="5vtCMlZQ83X" resolve="n" />
                      </node>
                    </node>
                    <node concept="17R0WA" id="5vtCMlZQkRt" role="3uHU7w">
                      <node concept="37vLTw" id="5vtCMlZQltO" role="3uHU7w">
                        <ref role="3cqZAo" node="4wJaMXe_PK4" resolve="copied" />
                      </node>
                      <node concept="2OqwBi" id="5vtCMlZQjuK" role="3uHU7B">
                        <node concept="1eOMI4" id="5vtCMlZQbMQ" role="2Oq$k0">
                          <node concept="10QFUN" id="5vtCMlZQcwb" role="1eOMHV">
                            <node concept="3uibUv" id="5vtCMlZQcFT" role="10QFUM">
                              <ref role="3uigEE" to="t4tl:~DCopy" resolve="DCopy" />
                            </node>
                            <node concept="37vLTw" id="5vtCMlZQcbz" role="10QFUP">
                              <ref role="3cqZAo" node="5vtCMlZQ83X" resolve="n" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5vtCMlZQk2Y" role="2OqNvi">
                          <ref role="37wK5l" to="t4tl:~DCopy.getCopied():org.modelingvalue.dclare.mps.DNode" resolve="getCopied" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="5vtCMlZQ83X" role="1bW2Oz">
                <property role="TrG5h" value="n" />
                <node concept="3uibUv" id="5vtCMlZQ83Y" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5vtCMlZQ83Z" role="37wK5m">
              <ref role="3cqZAo" node="5vtCMlZPNaN" resolve="creator" />
            </node>
            <node concept="37vLTw" id="5vtCMlZQ840" role="37wK5m">
              <ref role="3cqZAo" node="5vtCMlZPNdg" resolve="var" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4wJaMXe_O7f" role="1B3o_S" />
      <node concept="16euLQ" id="4wJaMXe_PHK" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3Tqbb2" id="4wJaMXe_PIZ" role="3ztrMU" />
      </node>
      <node concept="16syzq" id="4wJaMXe_PJa" role="3clF45">
        <ref role="16sUi3" node="4wJaMXe_PHK" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ndASaeSzK_" role="jymVt" />
    <node concept="2YIFZL" id="MxZDaxdenI" role="jymVt">
      <property role="TrG5h" value="dNode" />
      <node concept="3Tm1VV" id="MxZDaxdenX" role="1B3o_S" />
      <node concept="3clFbS" id="MxZDaxdenY" role="3clF47">
        <node concept="3cpWs6" id="5Kzc4YGPAWn" role="3cqZAp">
          <node concept="1rXfSq" id="5vtCMlZPWrg" role="3cqZAk">
            <ref role="37wK5l" node="5vtCMlZPOey" resolve="dNode" />
            <node concept="37vLTw" id="5vtCMlZPYra" role="37wK5m">
              <ref role="3cqZAo" node="2eWEc5crCrP" resolve="reader" />
            </node>
            <node concept="37vLTw" id="5vtCMlZPYTx" role="37wK5m">
              <ref role="3cqZAo" node="5Kzc4YGPtOS" resolve="attr" />
            </node>
            <node concept="1bVj0M" id="5vtCMlZPZRl" role="37wK5m">
              <node concept="3clFbS" id="5vtCMlZPZRn" role="1bW5cS">
                <node concept="3clFbF" id="5vtCMlZQ1b5" role="3cqZAp">
                  <node concept="17R0WA" id="5vtCMlZQ2LT" role="3clFbG">
                    <node concept="37vLTw" id="5vtCMlZQ3lR" role="3uHU7w">
                      <ref role="3cqZAo" node="MxZDaxdf8Z" resolve="concept" />
                    </node>
                    <node concept="2OqwBi" id="5vtCMlZQ1z8" role="3uHU7B">
                      <node concept="37vLTw" id="5vtCMlZQ1b4" role="2Oq$k0">
                        <ref role="3cqZAo" node="5vtCMlZQ0h6" resolve="n" />
                      </node>
                      <node concept="liA8E" id="5vtCMlZQ22E" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="5vtCMlZQ0h6" role="1bW2Oz">
                <property role="TrG5h" value="n" />
                <node concept="3uibUv" id="5vtCMlZQ0h5" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5vtCMlZQ3PX" role="37wK5m">
              <ref role="3cqZAo" node="2eWEc5crZCT" resolve="creator" />
            </node>
            <node concept="37vLTw" id="5vtCMlZQ4Qg" role="37wK5m">
              <ref role="3cqZAo" node="6qybuMC5a3k" resolve="var" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="MxZDaxdeoH" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3Tqbb2" id="MxZDaxdf5R" role="3ztrMU" />
      </node>
      <node concept="16syzq" id="MxZDaxdf4t" role="3clF45">
        <ref role="16sUi3" node="MxZDaxdeoH" resolve="T" />
      </node>
      <node concept="37vLTG" id="2eWEc5crCrP" role="3clF46">
        <property role="TrG5h" value="reader" />
        <node concept="1ajhzC" id="2eWEc5cKlGy" role="1tU5fm">
          <node concept="3uibUv" id="2eWEc5cKn9D" role="1ajl9A">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Kzc4YGPtOS" role="3clF46">
        <property role="TrG5h" value="attr" />
        <node concept="_YKpA" id="1RJvVmuk8Ko" role="1tU5fm">
          <node concept="16syzq" id="1RJvVmuk8Kp" role="_ZDj9">
            <ref role="16sUi3" node="MxZDaxdeoH" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="MxZDaxdf8Z" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="2eWEc5crOhW" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="2eWEc5crZCT" role="3clF46">
        <property role="TrG5h" value="creator" />
        <node concept="1ajhzC" id="2eWEc5cs0Np" role="1tU5fm">
          <node concept="16syzq" id="2eWEc5cs1Lt" role="1ajl9A">
            <ref role="16sUi3" node="MxZDaxdeoH" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qybuMC5a3k" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="_YKpA" id="1RJvVmuk9ik" role="1tU5fm">
          <node concept="16syzq" id="1RJvVmuk9il" role="_ZDj9">
            <ref role="16sUi3" node="MxZDaxdeoH" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Qetf3dy94$" role="jymVt" />
    <node concept="2YIFZL" id="5vtCMlZPOey" role="jymVt">
      <property role="TrG5h" value="dNode" />
      <node concept="3Tm6S6" id="5vtCMlZPPrU" role="1B3o_S" />
      <node concept="3clFbS" id="5vtCMlZPOe$" role="3clF47">
        <node concept="3cpWs8" id="5vtCMlZPOe_" role="3cqZAp">
          <node concept="3cpWsn" id="5vtCMlZPOeA" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="16syzq" id="5vtCMlZPOeB" role="1tU5fm">
              <ref role="16sUi3" node="5vtCMlZPOgr" resolve="T" />
            </node>
            <node concept="3K4zz7" id="5vtCMlZPOeC" role="33vP2m">
              <node concept="1y4W85" id="5vtCMlZPOeD" role="3K4E3e">
                <node concept="2OqwBi" id="5vtCMlZPOeE" role="1y58nS">
                  <node concept="37vLTw" id="5vtCMlZPOeF" role="2Oq$k0">
                    <ref role="3cqZAo" node="5vtCMlZPOgD" resolve="var" />
                  </node>
                  <node concept="34oBXx" id="5vtCMlZPOeG" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="5vtCMlZPOeH" role="1y566C">
                  <ref role="3cqZAo" node="5vtCMlZPOgx" resolve="attr" />
                </node>
              </node>
              <node concept="10Nm6u" id="5vtCMlZPOeI" role="3K4GZi" />
              <node concept="1Wc70l" id="5vtCMlZPOeJ" role="3K4Cdx">
                <node concept="3y3z36" id="5vtCMlZPOeK" role="3uHU7B">
                  <node concept="10Nm6u" id="5vtCMlZPOeL" role="3uHU7w" />
                  <node concept="37vLTw" id="5vtCMlZPOeM" role="3uHU7B">
                    <ref role="3cqZAo" node="5vtCMlZPOgx" resolve="attr" />
                  </node>
                </node>
                <node concept="3eOVzh" id="5vtCMlZPOeN" role="3uHU7w">
                  <node concept="2OqwBi" id="5vtCMlZPOeO" role="3uHU7B">
                    <node concept="37vLTw" id="5vtCMlZPOeP" role="2Oq$k0">
                      <ref role="3cqZAo" node="5vtCMlZPOgD" resolve="var" />
                    </node>
                    <node concept="34oBXx" id="5vtCMlZPOeQ" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="5vtCMlZPOeR" role="3uHU7w">
                    <node concept="37vLTw" id="5vtCMlZPOeS" role="2Oq$k0">
                      <ref role="3cqZAo" node="5vtCMlZPOgx" resolve="attr" />
                    </node>
                    <node concept="34oBXx" id="5vtCMlZPOeT" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5vtCMlZPOeU" role="3cqZAp">
          <node concept="3clFbS" id="5vtCMlZPOeV" role="3clFbx">
            <node concept="3clFbF" id="7oDAKVzQtfu" role="3cqZAp">
              <node concept="37vLTI" id="7oDAKVzQtvi" role="3clFbG">
                <node concept="10Nm6u" id="7oDAKVzQtKj" role="37vLTx" />
                <node concept="37vLTw" id="7oDAKVzQtfs" role="37vLTJ">
                  <ref role="3cqZAo" node="5vtCMlZPOeA" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5vtCMlZPOeW" role="3cqZAp">
              <node concept="3cpWsn" id="5vtCMlZPOeX" role="3cpWs9">
                <property role="TrG5h" value="ist" />
                <node concept="3uibUv" id="5vtCMlZPOeY" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="1rXfSq" id="5vtCMlZPOeZ" role="33vP2m">
                  <ref role="37wK5l" node="3HLMRNkuJ6J" resolve="pre" />
                  <node concept="37vLTw" id="5vtCMlZPOf0" role="37wK5m">
                    <ref role="3cqZAo" node="5vtCMlZPOgu" resolve="reader" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5vtCMlZPOf1" role="3cqZAp">
              <node concept="3clFbS" id="5vtCMlZPOf2" role="3clFbx">
                <node concept="1DcWWT" id="5vtCMlZPOf3" role="3cqZAp">
                  <node concept="3clFbS" id="5vtCMlZPOf4" role="2LFqv$">
                    <node concept="3clFbJ" id="5vtCMlZPOf5" role="3cqZAp">
                      <node concept="3clFbS" id="5vtCMlZPOf6" role="3clFbx">
                        <node concept="3clFbF" id="5vtCMlZPOf7" role="3cqZAp">
                          <node concept="37vLTI" id="5vtCMlZPOf8" role="3clFbG">
                            <node concept="10QFUN" id="5vtCMlZPOf9" role="37vLTx">
                              <node concept="37vLTw" id="5vtCMlZPOfa" role="10QFUP">
                                <ref role="3cqZAo" node="5vtCMlZPOfy" resolve="e" />
                              </node>
                              <node concept="16syzq" id="5vtCMlZPOfb" role="10QFUM">
                                <ref role="16sUi3" node="5vtCMlZPOgr" resolve="T" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="5vtCMlZPOfc" role="37vLTJ">
                              <ref role="3cqZAo" node="5vtCMlZPOeA" resolve="node" />
                            </node>
                          </node>
                        </node>
                        <node concept="3zACq4" id="5vtCMlZPOfd" role="3cqZAp" />
                      </node>
                      <node concept="1Wc70l" id="5vtCMlZPOfe" role="3clFbw">
                        <node concept="1Wc70l" id="5vtCMlZPOff" role="3uHU7B">
                          <node concept="2ZW3vV" id="5vtCMlZPOfg" role="3uHU7B">
                            <node concept="3uibUv" id="5vtCMlZPOfh" role="2ZW6by">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="37vLTw" id="5vtCMlZPOfi" role="2ZW6bz">
                              <ref role="3cqZAo" node="5vtCMlZPOfy" resolve="e" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5vtCMlZPTpz" role="3uHU7w">
                            <node concept="37vLTw" id="5vtCMlZPTbJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="5vtCMlZPOg$" resolve="checker" />
                            </node>
                            <node concept="1Bd96e" id="5vtCMlZPTzf" role="2OqNvi">
                              <node concept="10QFUN" id="5vtCMlZPUur" role="1BdPVh">
                                <node concept="37vLTw" id="5vtCMlZPUuq" role="10QFUP">
                                  <ref role="3cqZAo" node="5vtCMlZPOfy" resolve="e" />
                                </node>
                                <node concept="3uibUv" id="5vtCMlZPU$a" role="10QFUM">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="5vtCMlZPOfr" role="3uHU7w">
                          <node concept="2OqwBi" id="5vtCMlZPOfs" role="3fr31v">
                            <node concept="37vLTw" id="5vtCMlZPOft" role="2Oq$k0">
                              <ref role="3cqZAo" node="5vtCMlZPOgD" resolve="var" />
                            </node>
                            <node concept="3JPx81" id="5vtCMlZPOfu" role="2OqNvi">
                              <node concept="10QFUN" id="5vtCMlZPOfv" role="25WWJ7">
                                <node concept="16syzq" id="5vtCMlZPOfw" role="10QFUM">
                                  <ref role="16sUi3" node="5vtCMlZPOgr" resolve="T" />
                                </node>
                                <node concept="37vLTw" id="5vtCMlZPOfx" role="10QFUP">
                                  <ref role="3cqZAo" node="5vtCMlZPOfy" resolve="e" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="5vtCMlZPOfy" role="1Duv9x">
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="5vtCMlZPOfz" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                  <node concept="10QFUN" id="5vtCMlZPOf$" role="1DdaDG">
                    <node concept="3uibUv" id="5vtCMlZPOf_" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                    </node>
                    <node concept="37vLTw" id="5vtCMlZPOfA" role="10QFUP">
                      <ref role="3cqZAo" node="5vtCMlZPOeX" resolve="ist" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="5vtCMlZPOfB" role="3clFbw">
                <node concept="3uibUv" id="5vtCMlZPOfC" role="2ZW6by">
                  <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                </node>
                <node concept="37vLTw" id="5vtCMlZPOfD" role="2ZW6bz">
                  <ref role="3cqZAo" node="5vtCMlZPOeX" resolve="ist" />
                </node>
              </node>
              <node concept="3eNFk2" id="5vtCMlZPOfE" role="3eNLev">
                <node concept="3clFbS" id="5vtCMlZPOfF" role="3eOfB_">
                  <node concept="3clFbF" id="5vtCMlZPOfG" role="3cqZAp">
                    <node concept="37vLTI" id="5vtCMlZPOfH" role="3clFbG">
                      <node concept="10QFUN" id="5vtCMlZPOfI" role="37vLTx">
                        <node concept="16syzq" id="5vtCMlZPOfJ" role="10QFUM">
                          <ref role="16sUi3" node="5vtCMlZPOgr" resolve="T" />
                        </node>
                        <node concept="37vLTw" id="5vtCMlZPOfK" role="10QFUP">
                          <ref role="3cqZAo" node="5vtCMlZPOeX" resolve="ist" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5vtCMlZPOfL" role="37vLTJ">
                        <ref role="3cqZAo" node="5vtCMlZPOeA" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="5vtCMlZPOfM" role="3eO9$A">
                  <node concept="1Wc70l" id="5vtCMlZPOfN" role="3uHU7B">
                    <node concept="2ZW3vV" id="5vtCMlZPOfO" role="3uHU7B">
                      <node concept="3uibUv" id="5vtCMlZPOfP" role="2ZW6by">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="37vLTw" id="5vtCMlZPOfQ" role="2ZW6bz">
                        <ref role="3cqZAo" node="5vtCMlZPOeX" resolve="ist" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5vtCMlZPVhW" role="3uHU7w">
                      <node concept="37vLTw" id="5vtCMlZPV47" role="2Oq$k0">
                        <ref role="3cqZAo" node="5vtCMlZPOg$" resolve="checker" />
                      </node>
                      <node concept="1Bd96e" id="5vtCMlZPVrC" role="2OqNvi">
                        <node concept="10QFUN" id="5vtCMlZPOfU" role="1BdPVh">
                          <node concept="3uibUv" id="5vtCMlZPOfV" role="10QFUM">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="37vLTw" id="5vtCMlZPOfW" role="10QFUP">
                            <ref role="3cqZAo" node="5vtCMlZPOeX" resolve="ist" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="5vtCMlZPOfZ" role="3uHU7w">
                    <node concept="2OqwBi" id="5vtCMlZPOg0" role="3fr31v">
                      <node concept="37vLTw" id="5vtCMlZPOg1" role="2Oq$k0">
                        <ref role="3cqZAo" node="5vtCMlZPOgD" resolve="var" />
                      </node>
                      <node concept="3JPx81" id="5vtCMlZPOg2" role="2OqNvi">
                        <node concept="10QFUN" id="5vtCMlZPOg3" role="25WWJ7">
                          <node concept="16syzq" id="5vtCMlZPOg4" role="10QFUM">
                            <ref role="16sUi3" node="5vtCMlZPOgr" resolve="T" />
                          </node>
                          <node concept="37vLTw" id="5vtCMlZPOg5" role="10QFUP">
                            <ref role="3cqZAo" node="5vtCMlZPOeX" resolve="ist" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5vtCMlZPOg6" role="3cqZAp">
              <node concept="3clFbS" id="5vtCMlZPOg7" role="3clFbx">
                <node concept="3clFbF" id="5vtCMlZPOg8" role="3cqZAp">
                  <node concept="37vLTI" id="5vtCMlZPOg9" role="3clFbG">
                    <node concept="37vLTw" id="5vtCMlZPOga" role="37vLTJ">
                      <ref role="3cqZAo" node="5vtCMlZPOeA" resolve="node" />
                    </node>
                    <node concept="2OqwBi" id="5vtCMlZPOgb" role="37vLTx">
                      <node concept="37vLTw" id="5vtCMlZPOgc" role="2Oq$k0">
                        <ref role="3cqZAo" node="5vtCMlZPOgA" resolve="creator" />
                      </node>
                      <node concept="1Bd96e" id="5vtCMlZPOgd" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="5vtCMlZPOge" role="3clFbw">
                <node concept="10Nm6u" id="5vtCMlZPOgf" role="3uHU7w" />
                <node concept="37vLTw" id="5vtCMlZPOgg" role="3uHU7B">
                  <ref role="3cqZAo" node="5vtCMlZPOeA" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="7oDAKVzQqFj" role="3clFbw">
            <node concept="3fqX7Q" id="7oDAKVzQsuN" role="3uHU7w">
              <node concept="2OqwBi" id="7oDAKVzQsuP" role="3fr31v">
                <node concept="37vLTw" id="7oDAKVzQsuQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5vtCMlZPOg$" resolve="checker" />
                </node>
                <node concept="1Bd96e" id="7oDAKVzQsuR" role="2OqNvi">
                  <node concept="37vLTw" id="7oDAKVzQsuS" role="1BdPVh">
                    <ref role="3cqZAo" node="5vtCMlZPOeA" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5vtCMlZPOgh" role="3uHU7B">
              <node concept="37vLTw" id="5vtCMlZPOgi" role="3uHU7B">
                <ref role="3cqZAo" node="5vtCMlZPOeA" resolve="node" />
              </node>
              <node concept="10Nm6u" id="5vtCMlZPOgj" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5vtCMlZPOgk" role="3cqZAp">
          <node concept="2OqwBi" id="5vtCMlZPOgl" role="3clFbG">
            <node concept="37vLTw" id="5vtCMlZPOgm" role="2Oq$k0">
              <ref role="3cqZAo" node="5vtCMlZPOgD" resolve="var" />
            </node>
            <node concept="TSZUe" id="5vtCMlZPOgn" role="2OqNvi">
              <node concept="37vLTw" id="5vtCMlZPOgo" role="25WWJ7">
                <ref role="3cqZAo" node="5vtCMlZPOeA" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5vtCMlZPOgp" role="3cqZAp">
          <node concept="37vLTw" id="5vtCMlZPOgq" role="3cqZAk">
            <ref role="3cqZAo" node="5vtCMlZPOeA" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="5vtCMlZPOgr" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3Tqbb2" id="5vtCMlZPOgs" role="3ztrMU" />
      </node>
      <node concept="16syzq" id="5vtCMlZPOgt" role="3clF45">
        <ref role="16sUi3" node="5vtCMlZPOgr" resolve="T" />
      </node>
      <node concept="37vLTG" id="5vtCMlZPOgu" role="3clF46">
        <property role="TrG5h" value="reader" />
        <node concept="1ajhzC" id="5vtCMlZPOgv" role="1tU5fm">
          <node concept="3uibUv" id="5vtCMlZPOgw" role="1ajl9A">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5vtCMlZPOgx" role="3clF46">
        <property role="TrG5h" value="attr" />
        <node concept="_YKpA" id="5vtCMlZPOgy" role="1tU5fm">
          <node concept="16syzq" id="5vtCMlZPOgz" role="_ZDj9">
            <ref role="16sUi3" node="5vtCMlZPOgr" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5vtCMlZPOg$" role="3clF46">
        <property role="TrG5h" value="checker" />
        <node concept="1ajhzC" id="5vtCMlZPRNa" role="1tU5fm">
          <node concept="10P_77" id="5vtCMlZPS0E" role="1ajl9A" />
          <node concept="3uibUv" id="5vtCMlZPSe7" role="1ajw0F">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5vtCMlZPOgA" role="3clF46">
        <property role="TrG5h" value="creator" />
        <node concept="1ajhzC" id="5vtCMlZPOgB" role="1tU5fm">
          <node concept="16syzq" id="5vtCMlZPOgC" role="1ajl9A">
            <ref role="16sUi3" node="5vtCMlZPOgr" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5vtCMlZPOgD" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="_YKpA" id="5vtCMlZPOgE" role="1tU5fm">
          <node concept="16syzq" id="5vtCMlZPOgF" role="_ZDj9">
            <ref role="16sUi3" node="5vtCMlZPOgr" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5vtCMlZPNiE" role="jymVt" />
    <node concept="2tJIrI" id="5vtCMlZPNrW" role="jymVt" />
    <node concept="2YIFZL" id="3Qetf3dBkKx" role="jymVt">
      <property role="TrG5h" value="sClass" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3Qetf3dBkK$" role="3clF47">
        <node concept="3clFbF" id="3Qetf3dBlui" role="3cqZAp">
          <node concept="2YIFZM" id="3Qetf3dBlvO" role="3clFbG">
            <ref role="37wK5l" to="t4tl:~SClass.of(java.lang.Object,java.lang.String,org.modelingvalue.dclare.mps.SClass...):org.modelingvalue.dclare.mps.SClass" resolve="of" />
            <ref role="1Pybhc" to="t4tl:~SClass" resolve="SClass" />
            <node concept="37vLTw" id="3Qetf3dBlyc" role="37wK5m">
              <ref role="3cqZAo" node="3Qetf3dBlad" resolve="classId" />
            </node>
            <node concept="37vLTw" id="3Qetf3dBlBV" role="37wK5m">
              <ref role="3cqZAo" node="3Qetf3dBlcn" resolve="name" />
            </node>
            <node concept="37vLTw" id="3Qetf3dBlFm" role="37wK5m">
              <ref role="3cqZAo" node="3Qetf3dBljs" resolve="supers" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3Qetf3dBklf" role="1B3o_S" />
      <node concept="3uibUv" id="3Qetf3dBkJ3" role="3clF45">
        <ref role="3uigEE" to="t4tl:~SClass" resolve="SClass" />
      </node>
      <node concept="37vLTG" id="3Qetf3dBlad" role="3clF46">
        <property role="TrG5h" value="classId" />
        <node concept="3uibUv" id="3Qetf3dBlac" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3Qetf3dBlcn" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3Qetf3dBloA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3Qetf3dBljs" role="3clF46">
        <property role="TrG5h" value="supers" />
        <node concept="10Q1$e" id="3Qetf3dBlmk" role="1tU5fm">
          <node concept="3uibUv" id="3Qetf3dBlmm" role="10Q1$1">
            <ref role="3uigEE" to="t4tl:~SClass" resolve="SClass" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7byyZgEomtg" role="jymVt" />
    <node concept="2YIFZL" id="3Qetf3dya9w" role="jymVt">
      <property role="TrG5h" value="dObject" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3Qetf3dya9z" role="3clF47">
        <node concept="3clFbF" id="3Qetf3dya$d" role="3cqZAp">
          <node concept="2YIFZM" id="3Qetf3dymIp" role="3clFbG">
            <ref role="37wK5l" to="t4tl:~DClassObject.wrap(org.modelingvalue.dclare.mps.SClassObject):org.modelingvalue.dclare.mps.DClassObject" resolve="wrap" />
            <ref role="1Pybhc" to="t4tl:~DClassObject" resolve="DClassObject" />
            <node concept="2ShNRf" id="3Qetf3dymIq" role="37wK5m">
              <node concept="YeOm9" id="3Qetf3dymIr" role="2ShVmc">
                <node concept="1Y3b0j" id="3Qetf3dymIs" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="t4tl:~SClassObject" resolve="SClassObject" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="3Qetf3dymIt" role="1B3o_S" />
                  <node concept="2tJIrI" id="745HIYNJXfc" role="jymVt" />
                  <node concept="3clFb_" id="3Qetf3dymIu" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getDClass" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tm1VV" id="3Qetf3dymIv" role="1B3o_S" />
                    <node concept="3uibUv" id="3Qetf3dymIw" role="3clF45">
                      <ref role="3uigEE" to="t4tl:~SClass" resolve="SClass" />
                    </node>
                    <node concept="3clFbS" id="3Qetf3dymIx" role="3clF47">
                      <node concept="3clFbF" id="3Qetf3dymIy" role="3cqZAp">
                        <node concept="37vLTw" id="3Qetf3dymIz" role="3clFbG">
                          <ref role="3cqZAo" node="3Qetf3dyi_B" resolve="cls" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="745HIYNJXFi" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="745HIYNJWRT" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getIdentity" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tm1VV" id="745HIYNJWRU" role="1B3o_S" />
                    <node concept="10Q1$e" id="745HIYNJWRW" role="3clF45">
                      <node concept="3uibUv" id="745HIYNJWRX" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="745HIYNJWRZ" role="3clF47">
                      <node concept="3clFbF" id="745HIYNK3u6" role="3cqZAp">
                        <node concept="37vLTw" id="745HIYNK3u5" role="3clFbG">
                          <ref role="3cqZAo" node="745HIYNJMII" resolve="identity" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="745HIYNJWS0" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2tJIrI" id="745HIYNJXLK" role="jymVt" />
                  <node concept="3clFb_" id="745HIYNJN1C" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="equals" />
                    <property role="od$2w" value="false" />
                    <property role="DiZV1" value="false" />
                    <property role="2aFKle" value="false" />
                    <node concept="3clFbS" id="745HIYNJN1F" role="3clF47">
                      <node concept="3clFbJ" id="745HIYNJNco" role="3cqZAp">
                        <node concept="3clFbC" id="745HIYNJNto" role="3clFbw">
                          <node concept="37vLTw" id="745HIYNJNwV" role="3uHU7w">
                            <ref role="3cqZAo" node="745HIYNJN4K" resolve="other" />
                          </node>
                          <node concept="Xjq3P" id="745HIYNJNdE" role="3uHU7B" />
                        </node>
                        <node concept="3clFbS" id="745HIYNJNcq" role="3clFbx">
                          <node concept="3cpWs6" id="745HIYNJN$y" role="3cqZAp">
                            <node concept="3clFbT" id="745HIYNJN_N" role="3cqZAk">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="745HIYNJNFG" role="3eNLev">
                          <node concept="3clFbS" id="745HIYNJNFI" role="3eOfB_">
                            <node concept="3cpWs6" id="745HIYNJOmA" role="3cqZAp">
                              <node concept="3clFbT" id="745HIYNJOnT" role="3cqZAk">
                                <property role="3clFbU" value="false" />
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="745HIYNJOhu" role="3eO9$A">
                            <node concept="1eOMI4" id="745HIYNJOhw" role="3fr31v">
                              <node concept="2ZW3vV" id="745HIYNJOhx" role="1eOMHV">
                                <node concept="3uibUv" id="745HIYNJOjK" role="2ZW6by">
                                  <ref role="3uigEE" to="t4tl:~SClassObject" resolve="SClassObject" />
                                </node>
                                <node concept="37vLTw" id="745HIYNJOhz" role="2ZW6bz">
                                  <ref role="3cqZAo" node="745HIYNJN4K" resolve="other" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="745HIYNJOt3" role="9aQIa">
                          <node concept="3clFbS" id="745HIYNJOt4" role="9aQI4">
                            <node concept="3cpWs8" id="37k3L2JKzoE" role="3cqZAp">
                              <node concept="3cpWsn" id="37k3L2JKzoF" role="3cpWs9">
                                <property role="TrG5h" value="ocs" />
                                <node concept="3uibUv" id="37k3L2JKzoD" role="1tU5fm">
                                  <ref role="3uigEE" to="t4tl:~SClassObject" resolve="SClassObject" />
                                </node>
                                <node concept="10QFUN" id="37k3L2JKzoG" role="33vP2m">
                                  <node concept="3uibUv" id="37k3L2JKzoH" role="10QFUM">
                                    <ref role="3uigEE" to="t4tl:~SClassObject" resolve="SClassObject" />
                                  </node>
                                  <node concept="37vLTw" id="37k3L2JKzoI" role="10QFUP">
                                    <ref role="3cqZAo" node="745HIYNJN4K" resolve="other" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="745HIYNJYO9" role="3cqZAp">
                              <node concept="1Wc70l" id="37k3L2JKxGx" role="3cqZAk">
                                <node concept="17R0WA" id="37k3L2JKyT6" role="3uHU7B">
                                  <node concept="2OqwBi" id="37k3L2JK_N0" role="3uHU7w">
                                    <node concept="37vLTw" id="37k3L2JK_fU" role="2Oq$k0">
                                      <ref role="3cqZAo" node="37k3L2JKzoF" resolve="ocs" />
                                    </node>
                                    <node concept="liA8E" id="37k3L2JKAm0" role="2OqNvi">
                                      <ref role="37wK5l" to="t4tl:~SClassObject.getDClass():org.modelingvalue.dclare.mps.SClass" resolve="getDClass" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="37k3L2JKydJ" role="3uHU7B">
                                    <ref role="3cqZAo" node="3Qetf3dyi_B" resolve="cls" />
                                  </node>
                                </node>
                                <node concept="2YIFZM" id="745HIYNJRJ1" role="3uHU7w">
                                  <ref role="37wK5l" to="33ny:~Arrays.equals(java.lang.Object[],java.lang.Object[]):boolean" resolve="equals" />
                                  <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                                  <node concept="37vLTw" id="745HIYNJRKJ" role="37wK5m">
                                    <ref role="3cqZAo" node="745HIYNJMII" resolve="identity" />
                                  </node>
                                  <node concept="2OqwBi" id="745HIYNJSI1" role="37wK5m">
                                    <node concept="37vLTw" id="37k3L2JKzoJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="37k3L2JKzoF" resolve="ocs" />
                                    </node>
                                    <node concept="liA8E" id="745HIYNJYEC" role="2OqNvi">
                                      <ref role="37wK5l" to="t4tl:~SClassObject.getIdentity():java.lang.Object[]" resolve="getIdentity" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="745HIYNJMXY" role="1B3o_S" />
                    <node concept="10P_77" id="745HIYNJN0s" role="3clF45" />
                    <node concept="37vLTG" id="745HIYNJN4K" role="3clF46">
                      <property role="TrG5h" value="other" />
                      <node concept="3uibUv" id="745HIYNJN4J" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                  </node>
                  <node concept="2tJIrI" id="745HIYNJZ2O" role="jymVt" />
                  <node concept="3clFb_" id="745HIYNJZpL" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="hashCode" />
                    <property role="od$2w" value="false" />
                    <property role="DiZV1" value="false" />
                    <property role="2aFKle" value="false" />
                    <node concept="3clFbS" id="745HIYNJZpO" role="3clF47">
                      <node concept="3cpWs6" id="745HIYNJZyj" role="3cqZAp">
                        <node concept="3cpWs3" id="745HIYNK1Mc" role="3cqZAk">
                          <node concept="2YIFZM" id="745HIYNK2jr" role="3uHU7w">
                            <ref role="37wK5l" to="33ny:~Arrays.hashCode(java.lang.Object[]):int" resolve="hashCode" />
                            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                            <node concept="1rXfSq" id="745HIYNK2E6" role="37wK5m">
                              <ref role="37wK5l" node="745HIYNJWRT" resolve="getIdentity" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="745HIYNJZKu" role="3uHU7B">
                            <node concept="1rXfSq" id="745HIYNJZ$r" role="2Oq$k0">
                              <ref role="37wK5l" node="3Qetf3dymIu" resolve="getDClass" />
                            </node>
                            <node concept="liA8E" id="745HIYNJZWS" role="2OqNvi">
                              <ref role="37wK5l" to="t4tl:~SClass.hashCode():int" resolve="hashCode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="745HIYNJZgB" role="1B3o_S" />
                    <node concept="10Oyi0" id="745HIYNJZn$" role="3clF45" />
                  </node>
                  <node concept="2tJIrI" id="5Kzc4YFpJb5" role="jymVt" />
                  <node concept="3clFb_" id="5Kzc4YFpKZM" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="toString" />
                    <property role="od$2w" value="false" />
                    <property role="DiZV1" value="false" />
                    <property role="2aFKle" value="false" />
                    <node concept="3clFbS" id="5Kzc4YFpKZP" role="3clF47">
                      <node concept="3cpWs6" id="5Kzc4YFpLId" role="3cqZAp">
                        <node concept="3cpWs3" id="5Kzc4YFpR8H" role="3cqZAk">
                          <node concept="2YIFZM" id="5Kzc4YFpS8l" role="3uHU7w">
                            <ref role="37wK5l" to="33ny:~Arrays.toString(java.lang.Object[]):java.lang.String" resolve="toString" />
                            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                            <node concept="1rXfSq" id="5Kzc4YFpSDr" role="37wK5m">
                              <ref role="37wK5l" node="745HIYNJWRT" resolve="getIdentity" />
                            </node>
                          </node>
                          <node concept="1rXfSq" id="5Kzc4YFpM78" role="3uHU7B">
                            <ref role="37wK5l" node="3Qetf3dymIu" resolve="getDClass" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="5Kzc4YFpKCX" role="1B3o_S" />
                    <node concept="17QB3L" id="5Kzc4YFqdRo" role="3clF45" />
                  </node>
                  <node concept="2tJIrI" id="5Kzc4YFpTfQ" role="jymVt" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3Qetf3dy9Mh" role="1B3o_S" />
      <node concept="3uibUv" id="3vqpjyc2zvB" role="3clF45">
        <ref role="3uigEE" to="t4tl:~SClassObject" resolve="SClassObject" />
      </node>
      <node concept="37vLTG" id="3Qetf3dyi_B" role="3clF46">
        <property role="TrG5h" value="cls" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3Qetf3dyi_A" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SClass" resolve="SClass" />
        </node>
      </node>
      <node concept="37vLTG" id="745HIYNJMII" role="3clF46">
        <property role="TrG5h" value="identity" />
        <property role="3TUv4t" value="true" />
        <node concept="10Q1$e" id="745HIYNJMNd" role="1tU5fm">
          <node concept="3uibUv" id="745HIYNJMLW" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7S$pNDLb5pd" role="jymVt" />
    <node concept="2YIFZL" id="7S$pNDLb3TY" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="7S$pNDLb3TZ" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="7S$pNDLb6z9" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3clFbS" id="7S$pNDLb3U1" role="3clF47">
        <node concept="3clFbF" id="7S$pNDLb3U2" role="3cqZAp">
          <node concept="10QFUN" id="7S$pNDLb3U3" role="3clFbG">
            <node concept="2OqwBi" id="7S$pNDLb3U4" role="10QFUP">
              <node concept="10M0yZ" id="7S$pNDLb3U5" role="2Oq$k0">
                <ref role="3cqZAo" to="t4tl:~DObject.PARENT" resolve="PARENT" />
                <ref role="1PxDUh" to="t4tl:~DRepository" resolve="DRepository" />
              </node>
              <node concept="liA8E" id="7S$pNDLb3U6" role="2OqNvi">
                <ref role="37wK5l" to="dy39:~Getable.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="10QFUN" id="7S$pNDLb3U7" role="37wK5m">
                  <node concept="3uibUv" id="7S$pNDLb6Nj" role="10QFUM">
                    <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
                  </node>
                  <node concept="37vLTw" id="7S$pNDLb3U9" role="10QFUP">
                    <ref role="3cqZAo" node="7S$pNDLb3TZ" resolve="module" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="7S$pNDLb72l" role="10QFUM">
              <ref role="3uigEE" to="t4tl:~DRepository" resolve="DRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7S$pNDLb3Ub" role="1B3o_S" />
      <node concept="3uibUv" id="7S$pNDLb75$" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DRepository" resolve="DRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="7S$pNDL7t9v" role="jymVt" />
    <node concept="2YIFZL" id="7S$pNDL7zVA" role="jymVt">
      <property role="TrG5h" value="getModule" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="7S$pNDL7zVB" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="7S$pNDL7_pq" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="7S$pNDL7zVD" role="3clF47">
        <node concept="3clFbF" id="7S$pNDL7zVE" role="3cqZAp">
          <node concept="10QFUN" id="7S$pNDL7A9G" role="3clFbG">
            <node concept="2OqwBi" id="7S$pNDL7zVF" role="10QFUP">
              <node concept="10M0yZ" id="7S$pNDL7_Sl" role="2Oq$k0">
                <ref role="3cqZAo" to="t4tl:~DObject.PARENT" resolve="PARENT" />
                <ref role="1PxDUh" to="t4tl:~DModel" resolve="DModel" />
              </node>
              <node concept="liA8E" id="7S$pNDL7zVH" role="2OqNvi">
                <ref role="37wK5l" to="dy39:~Getable.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="10QFUN" id="7S$pNDL7zVI" role="37wK5m">
                  <node concept="3uibUv" id="7S$pNDL7_Ev" role="10QFUM">
                    <ref role="3uigEE" to="t4tl:~DModel" resolve="DModel" />
                  </node>
                  <node concept="37vLTw" id="7S$pNDL7zVK" role="10QFUP">
                    <ref role="3cqZAo" node="7S$pNDL7zVB" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="7S$pNDL7AD3" role="10QFUM">
              <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7S$pNDL7zVL" role="1B3o_S" />
      <node concept="3uibUv" id="7S$pNDL7Axk" role="3clF45">
        <ref role="3uigEE" to="t4tl:~DModule" resolve="DModule" />
      </node>
    </node>
    <node concept="2tJIrI" id="7S$pNDL7yEh" role="jymVt" />
    <node concept="2YIFZL" id="7S$pNDL7wyu" role="jymVt">
      <property role="TrG5h" value="getModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="7S$pNDL7xeO" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="7S$pNDL7xh0" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="7S$pNDL7wyx" role="3clF47">
        <node concept="3clFbF" id="7S$pNDL7xjX" role="3cqZAp">
          <node concept="2OqwBi" id="7S$pNDL7xI9" role="3clFbG">
            <node concept="10M0yZ" id="7S$pNDL7xod" role="2Oq$k0">
              <ref role="3cqZAo" to="t4tl:~DNode.MODEL" resolve="MODEL" />
              <ref role="1PxDUh" to="t4tl:~DNode" resolve="DNode" />
            </node>
            <node concept="liA8E" id="7S$pNDL7ybr" role="2OqNvi">
              <ref role="37wK5l" to="dy39:~Getable.get(java.lang.Object):java.lang.Object" resolve="get" />
              <node concept="10QFUN" id="7S$pNDL7yy6" role="37wK5m">
                <node concept="3uibUv" id="7S$pNDL7yBL" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DNode" resolve="DNode" />
                </node>
                <node concept="37vLTw" id="7S$pNDL7yhO" role="10QFUP">
                  <ref role="3cqZAo" node="7S$pNDL7xeO" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7S$pNDL7uvW" role="1B3o_S" />
      <node concept="3uibUv" id="7S$pNDLb79z" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="67uyCwCOVLl" role="jymVt" />
    <node concept="2YIFZL" id="67uyCwCP1zP" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="67uyCwCP2su" role="3clF46">
        <property role="TrG5h" value="obj" />
        <node concept="3uibUv" id="67uyCwCP2tB" role="1tU5fm">
          <ref role="3uigEE" to="t4tl:~SClassObject" resolve="SClassObject" />
        </node>
      </node>
      <node concept="3clFbS" id="67uyCwCP1zS" role="3clF47">
        <node concept="3clFbF" id="67uyCwCP2y$" role="3cqZAp">
          <node concept="2OqwBi" id="67uyCwCP2OD" role="3clFbG">
            <node concept="10M0yZ" id="67uyCwCP2$f" role="2Oq$k0">
              <ref role="3cqZAo" to="t4tl:~DObject.PARENT" resolve="PARENT" />
              <ref role="1PxDUh" to="t4tl:~DObject" resolve="DObject" />
            </node>
            <node concept="liA8E" id="67uyCwCP38x" role="2OqNvi">
              <ref role="37wK5l" to="dy39:~Getable.get(java.lang.Object):java.lang.Object" resolve="get" />
              <node concept="10QFUN" id="67uyCwCP4nE" role="37wK5m">
                <node concept="3uibUv" id="67uyCwCP4uI" role="10QFUM">
                  <ref role="3uigEE" to="t4tl:~DObject" resolve="DObject" />
                </node>
                <node concept="37vLTw" id="67uyCwCP3em" role="10QFUP">
                  <ref role="3cqZAo" node="67uyCwCP2su" resolve="obj" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="67uyCwCP0IF" role="1B3o_S" />
      <node concept="3uibUv" id="67uyCwCP2oO" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HLMRNkuEYi" role="jymVt" />
    <node concept="2YIFZL" id="3HLMRNkuJ6J" role="jymVt">
      <property role="TrG5h" value="pre" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="3HLMRNkuJKS" role="3clF46">
        <property role="TrG5h" value="supplier" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="3HLMRNkuJM8" role="1tU5fm">
          <node concept="16syzq" id="3HLMRNkuJMH" role="1ajl9A">
            <ref role="16sUi3" node="3HLMRNkuJIW" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3HLMRNkuJ6M" role="3clF47">
        <node concept="3clFbF" id="3HLMRNkuN9V" role="3cqZAp">
          <node concept="2YIFZM" id="3HLMRNkuNg3" role="3clFbG">
            <ref role="37wK5l" to="t4tl:~DClareMPS.pre(java.util.function.Supplier):java.lang.Object" resolve="pre" />
            <ref role="1Pybhc" to="t4tl:~DClareMPS" resolve="DClareMPS" />
            <node concept="2ShNRf" id="3HLMRNkuNkF" role="37wK5m">
              <node concept="YeOm9" id="3HLMRNkuRHf" role="2ShVmc">
                <node concept="1Y3b0j" id="3HLMRNkuRHi" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="82uw:~Supplier" resolve="Supplier" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="3HLMRNkuRHj" role="1B3o_S" />
                  <node concept="3clFb_" id="3HLMRNkuRHk" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="get" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tm1VV" id="3HLMRNkuRHl" role="1B3o_S" />
                    <node concept="16syzq" id="3HLMRNkuRTJ" role="3clF45">
                      <ref role="16sUi3" node="3HLMRNkuJIW" resolve="T" />
                    </node>
                    <node concept="3clFbS" id="3HLMRNkuRHo" role="3clF47">
                      <node concept="3clFbF" id="3HLMRNkuRZK" role="3cqZAp">
                        <node concept="2OqwBi" id="3HLMRNkuS2b" role="3clFbG">
                          <node concept="37vLTw" id="3HLMRNkuRZJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="3HLMRNkuJKS" resolve="supplier" />
                          </node>
                          <node concept="1Bd96e" id="3HLMRNkuS3H" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="16syzq" id="3HLMRNkuRP6" role="2Ghqu4">
                    <ref role="16sUi3" node="3HLMRNkuJIW" resolve="T" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3HLMRNkuGGP" role="1B3o_S" />
      <node concept="16euLQ" id="3HLMRNkuJIW" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="3HLMRNkuJJY" role="3clF45">
        <ref role="16sUi3" node="3HLMRNkuJIW" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HLMRNkuIuJ" role="jymVt" />
    <node concept="2tJIrI" id="7byyZgEoqkH" role="jymVt" />
    <node concept="3Tm1VV" id="30fQumnG8Av" role="1B3o_S" />
  </node>
</model>

