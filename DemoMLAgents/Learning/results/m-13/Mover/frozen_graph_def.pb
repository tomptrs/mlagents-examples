
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
#policy/main_graph_0/hidden_0/kernelConst*?
value?B?"?k?>?B:????>???>򒦽?t?,?G>fN?ӢK>^v/>??7>)
?>??1?????? i> /??7?????>9?*??>?Xe?lv>?}??	?>?.>zǉ>&??}i3????>R?Ⱦ?bо??j??=????/??{?????c??B????oR???/??9???>?)u?Ί?>??(>?a???>??U?? ?=?0_????C?>!?Ia????M?5??i>?*?=??;??;!,+?`t>?@???uݾI.j?#ˏ=??>]??>;mv>Q?Ս>?????c>??>????>mB??h?>?1?r???u??B??>?a?>ţ?=K????=?0??c??ۑ=??j??K???2?? ?=: 
>T>Kn????A??̍>?L>???*
dtype0
?
(policy/main_graph_0/hidden_0/kernel/readIdentity#policy/main_graph_0/hidden_0/kernel*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
T0
?
!policy/main_graph_0/hidden_0/biasConst*
dtype0*e
value\BZ"P??J?
V<x??<x??:?????U=??W?N^??????g<S?v<?qE<YxA??Tr<??U??7?9??<F?U<???<???
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
policy/dense/kernelConst*?
value?B?"?O?.??
=??J???e???%??z2<#?{?\?(:;??<??˻??G_<???<yV?;4L??6?\?]G?<?J??n?<I??oL:=4b??+?޻ݷûWr?<??<:?ҼlO$?MÈ?4X???*?9??/=߽s??????L<}7g????<???;??<????U?<M???b?<I-?ͨ???u?<t? =m?ȼ}?X?ϯ/=?@??5???dU?<^Dx<?]??V=Σ?Џ;???*
dtype0
j
policy/dense/kernel/readIdentitypolicy/dense/kernel*&
_class
loc:@policy/dense/kernel*
T0
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
valueB"       *
dtype0
S
policy_1/strided_slice/stack_2Const*
dtype0*
valueB"      
?
policy_1/strided_sliceStridedSliceaction_maskspolicy_1/strided_slice/stackpolicy_1/strided_slice/stack_1policy_1/strided_slice/stack_2*
T0*

begin_mask*
ellipsis_mask *
end_mask*
Index0*
shrink_axis_mask *
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
policy_1/Sum/reduction_indicesConst*
dtype0*
value	B :
g
policy_1/SumSumpolicy_1/Mulpolicy_1/Sum/reduction_indices*

Tidx0*
T0*
	keep_dims(
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