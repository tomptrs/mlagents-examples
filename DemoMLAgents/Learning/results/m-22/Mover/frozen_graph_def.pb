
L
vector_observationPlaceholder*
shape:?????????*
dtype0
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
#policy/main_graph_0/hidden_0/kernelConst*
dtype0*?
value?B?"?&????>t|ž??{>????@,???>???+o?>???>\2>???ٹ?q]?????>嬝>?\&?:?'>u<??W??????E5???	!t??i?>???>3fj>??a?!?	??A?>8$J???=?r?>p?????>[6?=?6?=???=?lc>:w>??Z????=??y????^?>>??|I?=0?'???p?p	???>?|???????~P/?aΞ????}??"?(9??>???b?<>???????J??<?X?oF?JS??E>>?>?.???唽t?!?y????H??\???p?=??u>?%#>???>?3.?<e???;?>v????F?????q	?.'w?/佭AO???Ǿ?$??9?N<^?>?}?>????'?????`A6??e&=
?
(policy/main_graph_0/hidden_0/kernel/readIdentity#policy/main_graph_0/hidden_0/kernel*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
T0
?
!policy/main_graph_0/hidden_0/biasConst*
dtype0*e
value\BZ"P֎?????6;^?h;8?=?w?<#f???S???=#???[??<|?<k?M=]??;L?;S?J<.??<m??<?m??????
?
&policy/main_graph_0/hidden_0/bias/readIdentity!policy/main_graph_0/hidden_0/bias*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias
?
#policy/main_graph_0/hidden_0/MatMulMatMulvector_observation(policy/main_graph_0/hidden_0/kernel/read*
transpose_b( *
transpose_a( *
T0
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
value?B?"??Ż<)<_?=??4??[??<???<??9???5=ާ.???<?#????<?@G=??׼wf;?ʯ;#???ɲ?<Y}?????;???<e?o??㻬?<???=`?<:?l?q0'<2}B??c????<JU(????q??<3??@f(;??=Dk???٠?N<&<?m???)<Ln<???<޳#?ݸ??`)9A?=???='???"??	B?:??????1?
?6????0?;P?<?<??F<*
dtype0
j
policy/dense/kernel/readIdentitypolicy/dense/kernel*
T0*&
_class
loc:@policy/dense/kernel
?
policy_1/dense/MatMulMatMul policy/main_graph_0/hidden_0/Mulpolicy/dense/kernel/read*
transpose_a( *
transpose_b( *
T0
Q
policy_1/strided_slice/stackConst*
valueB"        *
dtype0
S
policy_1/strided_slice/stack_1Const*
dtype0*
valueB"       
S
policy_1/strided_slice/stack_2Const*
valueB"      *
dtype0
?
policy_1/strided_sliceStridedSliceaction_maskspolicy_1/strided_slice/stackpolicy_1/strided_slice/stack_1policy_1/strided_slice/stack_2*
Index0*
shrink_axis_mask *
end_mask*
T0*
new_axis_mask *
ellipsis_mask *

begin_mask
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