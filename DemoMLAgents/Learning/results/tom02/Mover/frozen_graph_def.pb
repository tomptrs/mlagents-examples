
L
vector_observationPlaceholder*
shape:?????????*
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
version_numberConst*
value	B :*
dtype0
5
memory_sizeConst*
value	B : *
dtype0
=
action_output_shapeConst*
dtype0*
value	B :
?
#policy/main_graph_0/hidden_0/kernelConst*?
value?B?"?b?\???}??'?>??^?l??>a?Һ??9??=?,??b?җ??Q?<??I?A???,P?CR&??;?>??Z?_>oڽT &=>?&?>?/*??V??+
?d?>)???.5|?Q???	?>?s.?.??g?>E"???n?!4n>Ѫ???<A????1 >?U>l?$??c6??J?rP5?:?d;?2y?2?>??G??C?~???O?>?????9{?$??7;??Jx?6???5???H?>?L??n????>į?0ڇ???_??m@=4?a>G#?????=???>??%?????M?>????`????;Ý???f>*
dtype0
?
(policy/main_graph_0/hidden_0/kernel/readIdentity#policy/main_graph_0/hidden_0/kernel*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
?
!policy/main_graph_0/hidden_0/biasConst*
dtype0*e
value\BZ"P?M>??*>"x>o"???s?=$?%>?9>?.\>Ś'>4?>?? >W?
>??|=$I>?u?=?????=S?!>?฽
?
&policy/main_graph_0/hidden_0/bias/readIdentity!policy/main_graph_0/hidden_0/bias*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias
?
#policy/main_graph_0/hidden_0/MatMulMatMulvector_observation(policy/main_graph_0/hidden_0/kernel/read*
transpose_a( *
transpose_b( *
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
value?B?"??F????=?$ǽ'?޽˛?=}???g-j=Ð??{BĽ?ӽ??U?ވ">???=<<'?R|=c??b.ս	.>&*M?끫?hD>????????9>]\p??N>	޽>v?????=p/???????,???>??? ???F<>>!???p?'>?ͼ???g?G????.?=$:}????=?J??ȥ???&???/?=e?=?dy?/???ɏ????=????}Ag??5?=nP??U??=#??ʽ*
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
policy_1/strided_sliceStridedSliceaction_maskspolicy_1/strided_slice/stackpolicy_1/strided_slice/stack_1policy_1/strided_slice/stack_2*
ellipsis_mask *
shrink_axis_mask *
Index0*
end_mask*
T0*

begin_mask*
new_axis_mask 
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
policy_1/SumSumpolicy_1/Mulpolicy_1/Sum/reduction_indices*

Tidx0*
	keep_dims(*
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