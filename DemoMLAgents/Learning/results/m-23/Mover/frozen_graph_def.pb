
L
vector_observationPlaceholder*
dtype0*
shape:?????????
?
is_continuous_controlConst*
value	B : *
dtype0
?
trainer_major_versionConst*
dtype0*
value	B : 
?
trainer_minor_versionConst*
dtype0*
value	B :
?
trainer_patch_versionConst*
dtype0*
value	B : 
8
version_numberConst*
dtype0*
value	B :
5
memory_sizeConst*
value	B : *
dtype0
=
action_output_shapeConst*
dtype0*
value	B :
?
#policy/main_graph_0/hidden_0/kernelConst*?
value?B?"??ж>G?8?=?f?@)&?K𐿚c?>?k	?Q???A???(???????o??mt?t??>o|p????CB???|<?m??,??>??u????e?=1??sP?>^I?????鿓??F??*?????I:?ʔ?Z??>=׿?K ???f????7b??&i??⑿*
dtype0
?
(policy/main_graph_0/hidden_0/kernel/readIdentity#policy/main_graph_0/hidden_0/kernel*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
T0
?
!policy/main_graph_0/hidden_0/biasConst*
dtype0*e
value\BZ"P?Q?=?TG???=A???K訽?j?? R)??ܳ=?c?=??=?ԣ? 8???ߣ????=?;?????װ?<0??=???=??=
?
&policy/main_graph_0/hidden_0/bias/readIdentity!policy/main_graph_0/hidden_0/bias*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
T0
?
#policy/main_graph_0/hidden_0/MatMulMatMulvector_observation(policy/main_graph_0/hidden_0/kernel/read*
transpose_b( *
transpose_a( *
T0
?
$policy/main_graph_0/hidden_0/BiasAddBiasAdd#policy/main_graph_0/hidden_0/MatMul&policy/main_graph_0/hidden_0/bias/read*
data_formatNHWC*
T0
^
$policy/main_graph_0/hidden_0/SigmoidSigmoid$policy/main_graph_0/hidden_0/BiasAdd*
T0
|
 policy/main_graph_0/hidden_0/MulMul$policy/main_graph_0/hidden_0/BiasAdd$policy/main_graph_0/hidden_0/Sigmoid*
T0
F
action_masksPlaceholder*
shape:?????????*
dtype0
?
policy/dense/kernelConst*
dtype0*?
value?B?"?BEԽ{??=A=DM?<?W??dlt??Z???0?=??=F??=??0?I?c?2??=KG???u?4?=?ů???O?? 5=?? ?p_?k???&?=qp?=?I????<=??6= B?=?o??ol????=.?m??.??y??=	?P?cOJ???=???l?|??~L????=-!?=?9T=?b ?E?!????=c=???9[??={n??e?򼁃???0~=?? =9Ƚ???<H? =fW?=@ʣ?B?
j
policy/dense/kernel/readIdentitypolicy/dense/kernel*&
_class
loc:@policy/dense/kernel*
T0
?
policy_1/dense/MatMulMatMul policy/main_graph_0/hidden_0/Mulpolicy/dense/kernel/read*
transpose_b( *
T0*
transpose_a( 
Q
policy_1/strided_slice/stackConst*
dtype0*
valueB"        
S
policy_1/strided_slice/stack_1Const*
valueB"       *
dtype0
S
policy_1/strided_slice/stack_2Const*
valueB"      *
dtype0
?
policy_1/strided_sliceStridedSliceaction_maskspolicy_1/strided_slice/stackpolicy_1/strided_slice/stack_1policy_1/strided_slice/stack_2*
new_axis_mask *
Index0*
T0*

begin_mask*
end_mask*
ellipsis_mask *
shrink_axis_mask 
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
policy_1/Sum/reduction_indicesConst*
dtype0*
value	B :
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