
L
vector_observationPlaceholder*
dtype0*
shape:?????????
?
is_continuous_controlConst*
value	B : *
dtype0
?
trainer_major_versionConst*
value	B : *
dtype0
?
trainer_minor_versionConst*
dtype0*
value	B :
?
trainer_patch_versionConst*
dtype0*
value	B : 
8
version_numberConst*
value	B :*
dtype0
5
memory_sizeConst*
value	B : *
dtype0
=
action_output_shapeConst*
value	B :*
dtype0
?
#policy/main_graph_0/hidden_0/kernelConst*?
value?B?"??)??%?>?+=??ߍ9<?ϰF???:<9[W????=?f??`>6????y????jc=?????~???*??P(>??r>?N:>??9?k	??%?2???"??????PX?P?"?2?>?tX>ixs?ڢ?>n??<????m?>gT;?3??????z???>Z?U????e??>'???Ԉ??]:?=2???{?!>?A?=Ј>?`????Ϣ?Ü???Ck??.r???A??T?>bC,?????Ac?TC?>O??a$4??.??? ???????=_?????$??y	>LNӾ'?=B???<=!??(?|?&?c?*
dtype0
?
(policy/main_graph_0/hidden_0/kernel/readIdentity#policy/main_graph_0/hidden_0/kernel*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
T0
?
!policy/main_graph_0/hidden_0/biasConst*e
value\BZ"P?~0>n??=O?J>N>?t>	2>?>?hQ>?>E??=??0>Ok?f?>??>2?T>G?>,?>C
:>?o>???=*
dtype0
?
&policy/main_graph_0/hidden_0/bias/readIdentity!policy/main_graph_0/hidden_0/bias*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias
?
#policy/main_graph_0/hidden_0/MatMulMatMulvector_observation(policy/main_graph_0/hidden_0/kernel/read*
transpose_a( *
T0*
transpose_b( 
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
dtype0*
shape:?????????
?
policy/dense/kernelConst*
dtype0*?
value?B?"? ?o?k玽???=k?ּ3??=????ٶ?]?֨$>?ҽ8]F>?r??MĽ??C?|??=?????˜?/Z?=?????^e>?#)?????2 >>????5???*???,>m?(?W??=.?e??z߽f?^=B/?=Ԭ=[??????nغ?e>?????W"??C???-
>?j?6=??p=>????JJ?s??=N?,#,>??p?D????5>?8ý9z??ġ?=??C??̽h3?=?|??
j
policy/dense/kernel/readIdentitypolicy/dense/kernel*&
_class
loc:@policy/dense/kernel*
T0
?
policy_1/dense/MatMulMatMul policy/main_graph_0/hidden_0/Mulpolicy/dense/kernel/read*
T0*
transpose_a( *
transpose_b( 
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
dtype0*
valueB"      
?
policy_1/strided_sliceStridedSliceaction_maskspolicy_1/strided_slice/stackpolicy_1/strided_slice/stack_1policy_1/strided_slice/stack_2*
ellipsis_mask *
end_mask*

begin_mask*
shrink_axis_mask *
T0*
Index0*
new_axis_mask 
;
policy_1/SoftmaxSoftmaxpolicy_1/dense/MatMul*
T0
;
policy_1/add/yConst*
valueB
 *???3*
dtype0
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
policy_1/SumSumpolicy_1/Mulpolicy_1/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
@
policy_1/truedivRealDivpolicy_1/Mulpolicy_1/Sum*
T0
=
policy_1/add_2/yConst*
dtype0*
valueB
 *???3
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