
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
memory_sizeConst*
value	B : *
dtype0
=
action_output_shapeConst*
value	B :*
dtype0
?
#policy/main_graph_0/hidden_0/kernelConst*
dtype0*?
value?B?"? ??>???>?De< ?3?ٕ???_???ͱվ??z/??0g>J??=d߄>p??na>???>?????.??<?=???>?,&????=(?>[z=i?ᾌj>@+??&>?3???2?E???0?u>Yux>N?ؾ?n?>2?2?rWt?U?A>?ؼv?>??z?T??>????b????H???"?Mr_?n??>?;?>?k??T\?R?)?]5u??}??<??$%????s?a?Z?v??ܻ?M?????????????? ??鲽?Jo?Y?Ҿ??T????>??`????X>?>7???D??>{??>>?&=????H?jz\?ͷо??̾???= ???H5;????4Ⓘ?`;=?6r>??:?n???;??F??ux?<?8????D??)?{??"?>?i?
?
(policy/main_graph_0/hidden_0/kernel/readIdentity#policy/main_graph_0/hidden_0/kernel*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
?
!policy/main_graph_0/hidden_0/biasConst*
dtype0*e
value\BZ"P?R(????;ܑ<շ?<?<hJ<?O<}y?b???<b?p<??<×?<???????ϙ<?'???n<o/üR <
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
value?B?"?}?????B??;0N?:??;E??G??;7ޢ?q?
=????????%?=j&=??;(??;?f=c?&=F<0O??}??#pؼ(?ż"?f<?8ۺ?q?????t??@3??M?<??C=˚$=?
	?f\???%???]z?P??<]??q???<???
=#?t<????ϖ????;?E??Z?<SG]=???]?,?Y? ;?c??]wY?v??;C?;U񼑗B?R?<i?8???
j
policy/dense/kernel/readIdentitypolicy/dense/kernel*&
_class
loc:@policy/dense/kernel*
T0
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
dtype0*
valueB"       
S
policy_1/strided_slice/stack_2Const*
valueB"      *
dtype0
?
policy_1/strided_sliceStridedSliceaction_maskspolicy_1/strided_slice/stackpolicy_1/strided_slice/stack_1policy_1/strided_slice/stack_2*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask *
Index0*

begin_mask*
T0
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