
L
vector_observationPlaceholder*
shape:?????????*
dtype0
?
is_continuous_controlConst*
dtype0*
value	B : 
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
?
#policy/main_graph_0/hidden_0/kernelConst*
dtype0*?
value?B?"???i?|?->?~%?[\>X?ý&?.??i??tp???ľZ?>?*?mؾ?.ʾ??>???>?h??????$???M\?b?F????<N?1??"??I??/}>????A?=????!C!??$&?3ǅ???g?H???@???TR?{Z=3C?>w?w?????b\p???=??N??#?M???>?\?gLF?]??	?A?????k?<??x>'????????d?>R????f_=?"??&)?=l????G=[$????>쑎?????B??BW>S???;B??O[4??z???<'?~?޽?????=?X?>???<
?
(policy/main_graph_0/hidden_0/kernel/readIdentity#policy/main_graph_0/hidden_0/kernel*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
T0
?
!policy/main_graph_0/hidden_0/biasConst*e
value\BZ"P?l>?lX>x?=>׫t>BX >| >cq>5?>u>??]>?=1>??<??>???=?Շ>?V>5?[=?%>N?>pjJ>*
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
shape:?????????*
dtype0
?
policy/dense/kernelConst*
dtype0*?
value?B?"???g??5>?ꭽ{?????>dм?????Wﲽ??>?g?ĕ>#????5???㽋??=r?X?i3'?,d?=????g>2n:???z?de??3w>I????^"?Y?>
?ݽ??*>????????)?>3????=a?ɽ? B=nM??2̼0!?=@̓?,????Z>?ɽ?H>?ҽ??4??y??.>?2C???ѻr?=???UX???>?Ǌ??J?Q??=??м??ٽ?TT>
j
policy/dense/kernel/readIdentitypolicy/dense/kernel*
T0*&
_class
loc:@policy/dense/kernel
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
policy_1/strided_sliceStridedSliceaction_maskspolicy_1/strided_slice/stackpolicy_1/strided_slice/stack_1policy_1/strided_slice/stack_2*
Index0*
new_axis_mask *
T0*
ellipsis_mask *
end_mask*
shrink_axis_mask *

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