
L
vector_observationPlaceholder*
dtype0*
shape:?????????
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
trainer_patch_versionConst*
dtype0*
value	B : 
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
value?B?"?ata???????	?6???K??????%???2?h?^??X?>YS?????JmZ>i??>e???y2?>????8??sO?=p]*?D?ؽX?=>?????
???????9$??\>?a?=9????*?^????>ƾ?n???n>&?K??3???Y???>2l??2??):??Qؾ???=??뼿FǾ??֘$??Ǽ?K?kq???x???.??????1?{B?????????K?????>s| ????=??žO?X?|tV??N?????>R???GH??N?2????=찰=㢊>fh ?w<H????UP?jI>l?T??y2>?x??W??YM??R???k+>?r?>????????p??!뾆IP>4p\???L??PD?0???~?>2L?>%@??(?
?
(policy/main_graph_0/hidden_0/kernel/readIdentity#policy/main_graph_0/hidden_0/kernel*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
?
!policy/main_graph_0/hidden_0/biasConst*
dtype0*e
value\BZ"P?>???=?*<?>?8
>~^>?>??>?X?=Tr>n>f?$>>>?>?ި=??O=???=?- >?? >F ?=
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
value?B?"?X4V?c(?=o?۽S???s??x>?z?=?Z<蘉????;?x	>4??-X??	?s?@? >?ɘ??????S?=D}??~?=<]L???A9??F=?z??E =???;#????=ⴷ??Ν??b?|??=?Ȝ?n国???=җ:?]??=FA??4?r??S?=?۽ʽ??f??r?=)Wȼ}?x=?ˣ??ٻ??M?=??*?O????~????=ɣz??v?C?>?I;???=?*??
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
dtype0*
valueB"       
S
policy_1/strided_slice/stack_2Const*
dtype0*
valueB"      
?
policy_1/strided_sliceStridedSliceaction_maskspolicy_1/strided_slice/stackpolicy_1/strided_slice/stack_1policy_1/strided_slice/stack_2*
shrink_axis_mask *
end_mask*
Index0*

begin_mask*
T0*
new_axis_mask *
ellipsis_mask 
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
T0*

Tidx0*
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