
L
vector_observationPlaceholder*
dtype0*
shape:?????????
?
is_continuous_controlConst*
value	B : *
dtype0
?
trainer_major_versionConst*
value	B : *
dtype0
?
trainer_minor_versionConst*
value	B :*
dtype0
?
trainer_patch_versionConst*
value	B : *
dtype0
8
version_numberConst*
value	B :*
dtype0
5
memory_sizeConst*
dtype0*
value	B : 
=
action_output_shapeConst*
dtype0*
value	B :
?
#policy/main_graph_0/hidden_0/kernelConst*?
value?B?"?x?~??#P<e????0???>?V+?65?<?̾t4>i>????Kד??V	>-{??AZ4> ?Q???D???о??>?7?k??<?v??ٞ>????/?u??{?J??+V>?C?>? '>4Ȑ>??ڽ?
??j?X?c(m?`F?)P?<6?͂X?6!???/???>~???p???>?y>??/??J?? ?????>ѻ>%T?/$վ?96???????????>6J>X?(?G?0??O??@C??B??le?a;>v&_>>}?=㬽??½>ښ?v-?k?!>A???|?>Zm(><?_>??^?o[?>?7T=~????8?>d?-:.?e>???w???_?ZrQ?x?>??I?'??>??????'1>l?>@t<??dѾ6???u>??[[?*
dtype0
?
(policy/main_graph_0/hidden_0/kernel/readIdentity#policy/main_graph_0/hidden_0/kernel*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
?
!policy/main_graph_0/hidden_0/biasConst*e
value\BZ"Pd???A??Y? ????:?2?:?X?k??9p%<}?[?{????&??6<#d5<?;?a?;??????;u??x2<H?4<*
dtype0
?
&policy/main_graph_0/hidden_0/bias/readIdentity!policy/main_graph_0/hidden_0/bias*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
T0
?
#policy/main_graph_0/hidden_0/MatMulMatMulvector_observation(policy/main_graph_0/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
$policy/main_graph_0/hidden_0/BiasAddBiasAdd#policy/main_graph_0/hidden_0/MatMul&policy/main_graph_0/hidden_0/bias/read*
T0*
data_formatNHWC
^
$policy/main_graph_0/hidden_0/SigmoidSigmoid$policy/main_graph_0/hidden_0/BiasAdd*
T0
|
 policy/main_graph_0/hidden_0/MulMul$policy/main_graph_0/hidden_0/BiasAdd$policy/main_graph_0/hidden_0/Sigmoid*
T0
F
action_masksPlaceholder*
dtype0*
shape:?????????
?
policy/dense/kernelConst*
dtype0*?
value?B?"??C0??.????o?W??pA)<m?z<_???X?< ??<.?N?#;?????????/??ӻ??)??H7??+??u<RYz:o?;z???ׂ*<`ps7?B?<?x?<tO=??*?
|?;P??<Vw?<;#ӻh;??p2?Sb?<?\??5?޼??<Z?I<,=9?[< g?<O?? @?;???;Wr?y걼"{??gd<?)???F<?&=Q4??!Bu???!?^{r<*??ʞ?I??<
j
policy/dense/kernel/readIdentitypolicy/dense/kernel*
T0*&
_class
loc:@policy/dense/kernel
?
policy_1/dense/MatMulMatMul policy/main_graph_0/hidden_0/Mulpolicy/dense/kernel/read*
transpose_b( *
transpose_a( *
T0
Q
policy_1/strided_slice/stackConst*
valueB"        *
dtype0
S
policy_1/strided_slice/stack_1Const*
valueB"       *
dtype0
S
policy_1/strided_slice/stack_2Const*
valueB"      *
dtype0
?
policy_1/strided_sliceStridedSliceaction_maskspolicy_1/strided_slice/stackpolicy_1/strided_slice/stack_1policy_1/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
new_axis_mask *
Index0*
ellipsis_mask *
end_mask*
T0
;
policy_1/SoftmaxSoftmaxpolicy_1/dense/MatMul*
T0
;
policy_1/add/yConst*
dtype0*
valueB
 *???3
@
policy_1/addAddV2policy_1/Softmaxpolicy_1/add/y*
T0
B
policy_1/MulMulpolicy_1/addpolicy_1/strided_slice*
T0
H
policy_1/Sum/reduction_indicesConst*
value	B :*
dtype0
g
policy_1/SumSumpolicy_1/Mulpolicy_1/Sum/reduction_indices*
T0*
	keep_dims(*

Tidx0
@
policy_1/truedivRealDivpolicy_1/Mulpolicy_1/Sum*
T0
=
policy_1/add_2/yConst*
valueB
 *???3*
dtype0
D
policy_1/add_2AddV2policy_1/truedivpolicy_1/add_2/y*
T0
.
policy_1/Log_1Logpolicy_1/add_2*
T0
=
policy_1/concat_2/concatIdentitypolicy_1/Log_1*
T0
5
actionIdentitypolicy_1/concat_2/concat*
T0 " 