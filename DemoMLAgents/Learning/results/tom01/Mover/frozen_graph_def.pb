
L
vector_observationPlaceholder*
dtype0*
shape:?????????
?
is_continuous_controlConst*
dtype0*
value	B : 
?
trainer_major_versionConst*
dtype0*
value	B : 
?
trainer_minor_versionConst*
dtype0*
value	B :
?
trainer_patch_versionConst*
value	B : *
dtype0
8
version_numberConst*
dtype0*
value	B :
5
memory_sizeConst*
dtype0*
value	B : 
=
action_output_shapeConst*
dtype0*
value	B :
?
#policy/main_graph_0/hidden_0/kernelConst*?
value?B?"?	?t??T[=?/^?siH???`?H??>}?????>S?A???>????~?4??+ʾqr!??w?S?W?>?6?>Xkн?+:????kI=?,??<1?]?V^?!?/???8>}?ľ??¾?	?3A???p?~??=? 7??b?Pċ?Z,??????=?<???>s?ž?X8>??Ծ?K??UE?>?ď??????????־???=Њ?>D?Y?5gx>?_?Ze?{?s=?q<?R>??g??c8?>O???ے???m???G>??W??>f?>???ň?>q?׽?K(?VO(?6?u?½>??7>???Ж=?s??R??=h???*
dtype0
?
(policy/main_graph_0/hidden_0/kernel/readIdentity#policy/main_graph_0/hidden_0/kernel*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
T0
?
!policy/main_graph_0/hidden_0/biasConst*e
value\BZ"P=????H+< ??;?{?;?#?????~?:??<g)?x|?!??/?G܁;q&<??;9?????m??Q<&?<*
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
policy/dense/kernelConst*?
value?B?"??S?<7#??c??B??9??軙=?j=???ۻ峺<?$?????ߎ??OWǻ?=???s,\??؄???????4? W<??˻G??<Cݻ<??o???黭|>=1 $<?)ۻ??=??<רļ?y?<?ļ??|<f&,<????"???χ<(=?X=Ք>=????#@?<6??^??<;?=?.?<??<??=h?x<??=a卼X?<??)=:9??2;?="??;F1Y;?[i=*
dtype0
j
policy/dense/kernel/readIdentitypolicy/dense/kernel*
T0*&
_class
loc:@policy/dense/kernel
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
dtype0*
valueB"       
S
policy_1/strided_slice/stack_2Const*
dtype0*
valueB"      
?
policy_1/strided_sliceStridedSliceaction_maskspolicy_1/strided_slice/stackpolicy_1/strided_slice/stack_1policy_1/strided_slice/stack_2*
end_mask*

begin_mask*
new_axis_mask *
shrink_axis_mask *
T0*
ellipsis_mask *
Index0
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
policy_1/SumSumpolicy_1/Mulpolicy_1/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0
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