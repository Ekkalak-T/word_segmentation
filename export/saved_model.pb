в┬ 
ЎM╧M
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
ю
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

ControlTrigger
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
8
FloorMod
x"T
y"T
z"T"
Ttype:	
2	
М
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
З
Iterator

handle"
shared_namestring"
	containerstring"
output_types
list(type)(0" 
output_shapeslist(shape)(0И
Л
IteratorFromStringHandle
string_handle
resource_handle" 
output_types
list(type)
 (""
output_shapeslist(shape)
 (И
А
IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0И
C
IteratorToStringHandle
resource_handle
string_handleИ
2
L2Loss
t"T
output"T"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
\
ListDiff
x"T
y"T
out"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
$

LogicalAnd
x

y

z
Р
!
LoopCond	
input


output

,
MakeIterator
dataset
iteratorИ
│

MapDataset
input_dataset
other_arguments2
Targuments

handle"	
ffunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
М
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
М
Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
п
OneShotIterator

handle"
dataset_factoryfunc"
output_types
list(type)(0" 
output_shapeslist(shape)(0"
	containerstring "
shared_namestring И
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
╦
PaddedBatchDataset
input_dataset

batch_size	
padded_shapes	*N
padding_values2Toutput_types

handle"
Toutput_types
list(type)(0" 
output_shapeslist(shape)(0"
Nint(0
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
К
ReverseSequence

input"T
seq_lengths"Tlen
output"T"
seq_dimint"
	batch_dimint "	
Ttype"
Tlentype0	:
2	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
е

ScatterAdd
ref"TА
indices"Tindices
updates"T

output_ref"TА" 
Ttype:
2	"
Tindicestype:
2	"
use_lockingbool( 
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
-
Sqrt
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
A

StackPopV2

handle
elem"	elem_type"
	elem_typetypeИ
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( И
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring И
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
V
TFRecordDataset
	filenames
compression_type
buffer_size	

handleИ
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestringИ
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
▐
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
┴
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.6.02v1.6.0-0-gd2e24b6039▌э
i
	filenamesConst*,
value#B!B/tmp/training.tf_record*
dtype0*
_output_shapes
:
U
compression_typeConst*
valueB
 BZLIB*
dtype0*
_output_shapes
: 
O
buffer_sizeConst*
valueB		 RАА*
dtype0	*
_output_shapes
: 
Q
buffer_size_1Const*
valueB		 RЁУ	*
dtype0	*
_output_shapes
: 
F
seedConst*
value	B	 R *
dtype0	*
_output_shapes
: 
G
seed2Const*
value	B	 R *
dtype0	*
_output_shapes
: 
P
countConst*
valueB	 R
         *
dtype0	*
_output_shapes
: 
L

batch_sizeConst*
value	B	 R@*
dtype0	*
_output_shapes
: 
H
ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Z
Const_1Const*
valueB	R
         *
dtype0	*
_output_shapes
:
Z
Const_2Const*
valueB	R
         *
dtype0	*
_output_shapes
:
O
padding_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Q
padding_value_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
Q
padding_value_2Const*
value	B	 R *
dtype0	*
_output_shapes
: 
m
filenames_1Const*.
value%B#B/tmp/validation.tf_record*
dtype0*
_output_shapes
:
W
compression_type_1Const*
valueB
 BZLIB*
dtype0*
_output_shapes
: 
Q
buffer_size_2Const*
valueB		 RАА*
dtype0	*
_output_shapes
: 
N
batch_size_1Const*
value	B	 R@*
dtype0	*
_output_shapes
: 
J
Const_3Const*
valueB	 *
dtype0	*
_output_shapes
: 
Z
Const_4Const*
valueB	R
         *
dtype0	*
_output_shapes
:
Z
Const_5Const*
valueB	R
         *
dtype0	*
_output_shapes
:
Q
padding_value_3Const*
value	B	 R *
dtype0	*
_output_shapes
: 
Q
padding_value_4Const*
value	B	 R *
dtype0	*
_output_shapes
: 
Q
padding_value_5Const*
value	B	 R *
dtype0	*
_output_shapes
: 
L
PlaceholderPlaceholder*
dtype0*
shape: *
_output_shapes
: 
╬
IteratorFromStringHandleIteratorFromStringHandlePlaceholder*
output_types
2			*Z
output_shapesI
G:         :                  :                  *
_output_shapes
: 
b
IteratorToStringHandleIteratorToStringHandleIteratorFromStringHandle*
_output_shapes
: 
О
IteratorGetNextIteratorGetNextIteratorFromStringHandle*
output_types
2			*Z
output_shapesI
G:         :                  :                  *[
_output_shapesI
G:         :                  :                  
В
OneShotIteratorOneShotIterator*-
dataset_factoryR
_make_dataset_b3411f6d*
output_types
2			*Z
output_shapesI
G:         :                  :                  *
	container *
shared_name *
_output_shapes
: 
[
IteratorToStringHandle_1IteratorToStringHandleOneShotIterator*
_output_shapes
: 
┼
IteratorIterator*
shared_name *
	container *
output_types
2			*Z
output_shapesI
G:         :                  :                  *
_output_shapes
: 
З
TFRecordDatasetTFRecordDatasetfilenames_1compression_type_1buffer_size_2*
_class
loc:@Iterator*
_output_shapes
: 
▌

MapDataset
MapDatasetTFRecordDataset*
fR
tf_map_func_44a91aae*

Targuments
 *
output_types
2			*3
output_shapes"
 : :         :         *
_class
loc:@Iterator*
_output_shapes
: 
─
PaddedBatchDatasetPaddedBatchDataset
MapDatasetbatch_size_1Const_3Const_4Const_5padding_value_3padding_value_4padding_value_5*
Toutput_types
2			*Z
output_shapesI
G:         :                  :                  *
N*
_class
loc:@Iterator*
_output_shapes
: 
W
MakeIteratorMakeIteratorPaddedBatchDatasetIterator*
_class
loc:@Iterator
T
IteratorToStringHandle_2IteratorToStringHandleIterator*
_output_shapes
: 
N
Placeholder_1Placeholder*
dtype0
*
shape: *
_output_shapes
: 
K
CastCastPlaceholder_1*

SrcT0
*

DstT0*
_output_shapes
: 
J
mul/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
8
mulMulCastmul/y*
T0*
_output_shapes
: 
e
random_uniform/shapeConst*
valueB"▓   А   *
dtype0*
_output_shapes
:
W
random_uniform/minConst*
valueB
 *  А┐*
dtype0*
_output_shapes
: 
W
random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ф
random_uniform/RandomUniformRandomUniformrandom_uniform/shape*

seed *
seed2 *
dtype0*
T0* 
_output_shapes
:
▓А
b
random_uniform/subSubrandom_uniform/maxrandom_uniform/min*
T0*
_output_shapes
: 
v
random_uniform/mulMulrandom_uniform/RandomUniformrandom_uniform/sub*
T0* 
_output_shapes
:
▓А
h
random_uniformAddrandom_uniform/mulrandom_uniform/min*
T0* 
_output_shapes
:
▓А
А
Variable
VariableV2*
shape:
▓А*
dtype0*
	container *
shared_name * 
_output_shapes
:
▓А
д
Variable/AssignAssignVariablerandom_uniform*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable* 
_output_shapes
:
▓А
k
Variable/readIdentityVariable*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
╟
embedding_lookupGatherVariable/readIteratorGetNext:1*
validate_indices(*
Tparams0*
Tindices0	*
_class
loc:@Variable*5
_output_shapes#
!:                  А
J
sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
7
subSubsub/xmul*
T0*
_output_shapes
: 
]
DropoutWrapperInit/ConstConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
_
DropoutWrapperInit/Const_1Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
^
bidirectional_rnn/fw/fw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
e
#bidirectional_rnn/fw/fw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
e
#bidirectional_rnn/fw/fw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
╢
bidirectional_rnn/fw/fw/rangeRange#bidirectional_rnn/fw/fw/range/startbidirectional_rnn/fw/fw/Rank#bidirectional_rnn/fw/fw/range/delta*

Tidx0*
_output_shapes
:
x
'bidirectional_rnn/fw/fw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
e
#bidirectional_rnn/fw/fw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╤
bidirectional_rnn/fw/fw/concatConcatV2'bidirectional_rnn/fw/fw/concat/values_0bidirectional_rnn/fw/fw/range#bidirectional_rnn/fw/fw/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
н
!bidirectional_rnn/fw/fw/transpose	Transposeembedding_lookupbidirectional_rnn/fw/fw/concat*
T0*
Tperm0*5
_output_shapes#
!:                  А
u
bidirectional_rnn/fw/fw/ToInt32CastIteratorGetNext*

SrcT0	*

DstT0*#
_output_shapes
:         
В
'bidirectional_rnn/fw/fw/sequence_lengthIdentitybidirectional_rnn/fw/fw/ToInt32*
T0*#
_output_shapes
:         
~
bidirectional_rnn/fw/fw/ShapeShape!bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
u
+bidirectional_rnn/fw/fw/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-bidirectional_rnn/fw/fw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-bidirectional_rnn/fw/fw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ё
%bidirectional_rnn/fw/fw/strided_sliceStridedSlicebidirectional_rnn/fw/fw/Shape+bidirectional_rnn/fw/fw/strided_slice/stack-bidirectional_rnn/fw/fw/strided_slice/stack_1-bidirectional_rnn/fw/fw/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
С
Obidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
В
Kbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims
ExpandDims%bidirectional_rnn/fw/fw/strided_sliceObidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:
С
Fbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
О
Lbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ё
Gbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/concatConcatV2Kbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDimsFbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ConstLbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
С
Lbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
к
Fbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zerosFillGbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/concatLbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zeros/Const*
T0*

index_type0*(
_output_shapes
:         А
У
Qbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
Mbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims_1
ExpandDims%bidirectional_rnn/fw/fw/strided_sliceQbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims_1/dim*
T0*

Tdim0*
_output_shapes
:
У
Hbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
Ж
bidirectional_rnn/fw/fw/Shape_1Shape'bidirectional_rnn/fw/fw/sequence_length*
T0*
out_type0*
_output_shapes
:
Ж
bidirectional_rnn/fw/fw/stackPack%bidirectional_rnn/fw/fw/strided_slice*
N*
T0*

axis *
_output_shapes
:
Л
bidirectional_rnn/fw/fw/EqualEqualbidirectional_rnn/fw/fw/Shape_1bidirectional_rnn/fw/fw/stack*
T0*
_output_shapes
:
g
bidirectional_rnn/fw/fw/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Х
bidirectional_rnn/fw/fw/AllAllbidirectional_rnn/fw/fw/Equalbidirectional_rnn/fw/fw/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
м
$bidirectional_rnn/fw/fw/Assert/ConstConst*X
valueOBM BGExpected shape for Tensor bidirectional_rnn/fw/fw/sequence_length:0 is *
dtype0*
_output_shapes
: 
w
&bidirectional_rnn/fw/fw/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
┤
,bidirectional_rnn/fw/fw/Assert/Assert/data_0Const*X
valueOBM BGExpected shape for Tensor bidirectional_rnn/fw/fw/sequence_length:0 is *
dtype0*
_output_shapes
: 
}
,bidirectional_rnn/fw/fw/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
И
%bidirectional_rnn/fw/fw/Assert/AssertAssertbidirectional_rnn/fw/fw/All,bidirectional_rnn/fw/fw/Assert/Assert/data_0bidirectional_rnn/fw/fw/stack,bidirectional_rnn/fw/fw/Assert/Assert/data_2bidirectional_rnn/fw/fw/Shape_1*
T
2*
	summarize
о
#bidirectional_rnn/fw/fw/CheckSeqLenIdentity'bidirectional_rnn/fw/fw/sequence_length&^bidirectional_rnn/fw/fw/Assert/Assert*
T0*#
_output_shapes
:         
А
bidirectional_rnn/fw/fw/Shape_2Shape!bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
w
-bidirectional_rnn/fw/fw/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/bidirectional_rnn/fw/fw/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/fw/fw/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
√
'bidirectional_rnn/fw/fw/strided_slice_1StridedSlicebidirectional_rnn/fw/fw/Shape_2-bidirectional_rnn/fw/fw/strided_slice_1/stack/bidirectional_rnn/fw/fw/strided_slice_1/stack_1/bidirectional_rnn/fw/fw/strided_slice_1/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
А
bidirectional_rnn/fw/fw/Shape_3Shape!bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
w
-bidirectional_rnn/fw/fw/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/fw/fw/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/fw/fw/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
√
'bidirectional_rnn/fw/fw/strided_slice_2StridedSlicebidirectional_rnn/fw/fw/Shape_3-bidirectional_rnn/fw/fw/strided_slice_2/stack/bidirectional_rnn/fw/fw/strided_slice_2/stack_1/bidirectional_rnn/fw/fw/strided_slice_2/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
h
&bidirectional_rnn/fw/fw/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
▓
"bidirectional_rnn/fw/fw/ExpandDims
ExpandDims'bidirectional_rnn/fw/fw/strided_slice_2&bidirectional_rnn/fw/fw/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:
j
bidirectional_rnn/fw/fw/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
g
%bidirectional_rnn/fw/fw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╥
 bidirectional_rnn/fw/fw/concat_1ConcatV2"bidirectional_rnn/fw/fw/ExpandDimsbidirectional_rnn/fw/fw/Const_1%bidirectional_rnn/fw/fw/concat_1/axis*
N*
T0*

Tidx0*
_output_shapes
:
h
#bidirectional_rnn/fw/fw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
▒
bidirectional_rnn/fw/fw/zerosFill bidirectional_rnn/fw/fw/concat_1#bidirectional_rnn/fw/fw/zeros/Const*
T0*

index_type0*(
_output_shapes
:         А
i
bidirectional_rnn/fw/fw/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
ж
bidirectional_rnn/fw/fw/MinMin#bidirectional_rnn/fw/fw/CheckSeqLenbidirectional_rnn/fw/fw/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
i
bidirectional_rnn/fw/fw/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
ж
bidirectional_rnn/fw/fw/MaxMax#bidirectional_rnn/fw/fw/CheckSeqLenbidirectional_rnn/fw/fw/Const_3*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
^
bidirectional_rnn/fw/fw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
└
#bidirectional_rnn/fw/fw/TensorArrayTensorArrayV3'bidirectional_rnn/fw/fw/strided_slice_1*
dtype0*%
element_shape:         А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*C
tensor_array_name.,bidirectional_rnn/fw/fw/dynamic_rnn/output_0*
_output_shapes

:: 
┴
%bidirectional_rnn/fw/fw/TensorArray_1TensorArrayV3'bidirectional_rnn/fw/fw/strided_slice_1*
dtype0*%
element_shape:         А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*B
tensor_array_name-+bidirectional_rnn/fw/fw/dynamic_rnn/input_0*
_output_shapes

:: 
С
0bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeShape!bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
И
>bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
К
@bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
К
@bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╨
8bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceStridedSlice0bidirectional_rnn/fw/fw/TensorArrayUnstack/Shape>bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack@bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1@bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
x
6bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
x
6bidirectional_rnn/fw/fw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ф
0bidirectional_rnn/fw/fw/TensorArrayUnstack/rangeRange6bidirectional_rnn/fw/fw/TensorArrayUnstack/range/start8bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice6bidirectional_rnn/fw/fw/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:         
ц
Rbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3%bidirectional_rnn/fw/fw/TensorArray_10bidirectional_rnn/fw/fw/TensorArrayUnstack/range!bidirectional_rnn/fw/fw/transpose'bidirectional_rnn/fw/fw/TensorArray_1:1*
T0*4
_class*
(&loc:@bidirectional_rnn/fw/fw/transpose*
_output_shapes
: 
c
!bidirectional_rnn/fw/fw/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
Л
bidirectional_rnn/fw/fw/MaximumMaximum!bidirectional_rnn/fw/fw/Maximum/xbidirectional_rnn/fw/fw/Max*
T0*
_output_shapes
: 
Х
bidirectional_rnn/fw/fw/MinimumMinimum'bidirectional_rnn/fw/fw/strided_slice_1bidirectional_rnn/fw/fw/Maximum*
T0*
_output_shapes
: 
q
/bidirectional_rnn/fw/fw/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
щ
#bidirectional_rnn/fw/fw/while/EnterEnter/bidirectional_rnn/fw/fw/while/iteration_counter*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
╪
%bidirectional_rnn/fw/fw/while/Enter_1Enterbidirectional_rnn/fw/fw/time*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
с
%bidirectional_rnn/fw/fw/while/Enter_2Enter%bidirectional_rnn/fw/fw/TensorArray:1*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
Ф
%bidirectional_rnn/fw/fw/while/Enter_3EnterFbidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zeros*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations *(
_output_shapes
:         А
к
#bidirectional_rnn/fw/fw/while/MergeMerge#bidirectional_rnn/fw/fw/while/Enter+bidirectional_rnn/fw/fw/while/NextIteration*
T0*
N*
_output_shapes
: : 
░
%bidirectional_rnn/fw/fw/while/Merge_1Merge%bidirectional_rnn/fw/fw/while/Enter_1-bidirectional_rnn/fw/fw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
░
%bidirectional_rnn/fw/fw/while/Merge_2Merge%bidirectional_rnn/fw/fw/while/Enter_2-bidirectional_rnn/fw/fw/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
┬
%bidirectional_rnn/fw/fw/while/Merge_3Merge%bidirectional_rnn/fw/fw/while/Enter_3-bidirectional_rnn/fw/fw/while/NextIteration_3*
T0*
N**
_output_shapes
:         А: 
Ъ
"bidirectional_rnn/fw/fw/while/LessLess#bidirectional_rnn/fw/fw/while/Merge(bidirectional_rnn/fw/fw/while/Less/Enter*
T0*
_output_shapes
: 
ц
(bidirectional_rnn/fw/fw/while/Less/EnterEnter'bidirectional_rnn/fw/fw/strided_slice_1*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
а
$bidirectional_rnn/fw/fw/while/Less_1Less%bidirectional_rnn/fw/fw/while/Merge_1*bidirectional_rnn/fw/fw/while/Less_1/Enter*
T0*
_output_shapes
: 
р
*bidirectional_rnn/fw/fw/while/Less_1/EnterEnterbidirectional_rnn/fw/fw/Minimum*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
Ш
(bidirectional_rnn/fw/fw/while/LogicalAnd
LogicalAnd"bidirectional_rnn/fw/fw/while/Less$bidirectional_rnn/fw/fw/while/Less_1*
_output_shapes
: 
t
&bidirectional_rnn/fw/fw/while/LoopCondLoopCond(bidirectional_rnn/fw/fw/while/LogicalAnd*
_output_shapes
: 
╓
$bidirectional_rnn/fw/fw/while/SwitchSwitch#bidirectional_rnn/fw/fw/while/Merge&bidirectional_rnn/fw/fw/while/LoopCond*
T0*6
_class,
*(loc:@bidirectional_rnn/fw/fw/while/Merge*
_output_shapes
: : 
▄
&bidirectional_rnn/fw/fw/while/Switch_1Switch%bidirectional_rnn/fw/fw/while/Merge_1&bidirectional_rnn/fw/fw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/fw/while/Merge_1*
_output_shapes
: : 
▄
&bidirectional_rnn/fw/fw/while/Switch_2Switch%bidirectional_rnn/fw/fw/while/Merge_2&bidirectional_rnn/fw/fw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/fw/while/Merge_2*
_output_shapes
: : 
А
&bidirectional_rnn/fw/fw/while/Switch_3Switch%bidirectional_rnn/fw/fw/while/Merge_3&bidirectional_rnn/fw/fw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/fw/while/Merge_3*<
_output_shapes*
(:         А:         А
{
&bidirectional_rnn/fw/fw/while/IdentityIdentity&bidirectional_rnn/fw/fw/while/Switch:1*
T0*
_output_shapes
: 

(bidirectional_rnn/fw/fw/while/Identity_1Identity(bidirectional_rnn/fw/fw/while/Switch_1:1*
T0*
_output_shapes
: 

(bidirectional_rnn/fw/fw/while/Identity_2Identity(bidirectional_rnn/fw/fw/while/Switch_2:1*
T0*
_output_shapes
: 
С
(bidirectional_rnn/fw/fw/while/Identity_3Identity(bidirectional_rnn/fw/fw/while/Switch_3:1*
T0*(
_output_shapes
:         А
О
#bidirectional_rnn/fw/fw/while/add/yConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ц
!bidirectional_rnn/fw/fw/while/addAdd&bidirectional_rnn/fw/fw/while/Identity#bidirectional_rnn/fw/fw/while/add/y*
T0*
_output_shapes
: 
Х
/bidirectional_rnn/fw/fw/while/TensorArrayReadV3TensorArrayReadV35bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter(bidirectional_rnn/fw/fw/while/Identity_17bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:         А
ї
5bidirectional_rnn/fw/fw/while/TensorArrayReadV3/EnterEnter%bidirectional_rnn/fw/fw/TensorArray_1*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
а
7bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1EnterRbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
█
Kbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
_output_shapes
:
═
Ibidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/minConst*
valueB
 *╫│▌╜*
dtype0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
_output_shapes
: 
═
Ibidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/maxConst*
valueB
 *╫│▌=*
dtype0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
_output_shapes
: 
┴
Sbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformRandomUniformKbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
╞
Ibidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/subSubIbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/maxIbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
_output_shapes
: 
┌
Ibidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/mulMulSbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformIbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
╠
Ebidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniformAddIbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/mulIbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
с
*bidirectional_rnn/fw/gru_cell/gates/kernel
VariableV2*
shape:
АА*
dtype0*
	container *
shared_name *=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
┴
1bidirectional_rnn/fw/gru_cell/gates/kernel/AssignAssign*bidirectional_rnn/fw/gru_cell/gates/kernelEbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
Т
/bidirectional_rnn/fw/gru_cell/gates/kernel/readIdentity*bidirectional_rnn/fw/gru_cell/gates/kernel*
T0* 
_output_shapes
:
АА
╞
:bidirectional_rnn/fw/gru_cell/gates/bias/Initializer/ConstConst*
valueBА*  А?*
dtype0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
╙
(bidirectional_rnn/fw/gru_cell/gates/bias
VariableV2*
shape:А*
dtype0*
	container *
shared_name *;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
л
/bidirectional_rnn/fw/gru_cell/gates/bias/AssignAssign(bidirectional_rnn/fw/gru_cell/gates/bias:bidirectional_rnn/fw/gru_cell/gates/bias/Initializer/Const*
T0*
validate_shape(*
use_locking(*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
Й
-bidirectional_rnn/fw/gru_cell/gates/bias/readIdentity(bidirectional_rnn/fw/gru_cell/gates/bias*
T0*
_output_shapes	
:А
у
Obidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/shapeConst*
valueB"   А   *
dtype0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
_output_shapes
:
╒
Mbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/minConst*
valueB
 *   ╛*
dtype0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
_output_shapes
: 
╒
Mbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*
dtype0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
_output_shapes
: 
═
Wbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/RandomUniformRandomUniformObidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
╓
Mbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/subSubMbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/maxMbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/min*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
_output_shapes
: 
ъ
Mbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/mulMulWbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/RandomUniformMbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/sub*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
▄
Ibidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniformAddMbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/mulMbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform/min*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
щ
.bidirectional_rnn/fw/gru_cell/candidate/kernel
VariableV2*
shape:
АА*
dtype0*
	container *
shared_name *A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
╤
5bidirectional_rnn/fw/gru_cell/candidate/kernel/AssignAssign.bidirectional_rnn/fw/gru_cell/candidate/kernelIbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
Ъ
3bidirectional_rnn/fw/gru_cell/candidate/kernel/readIdentity.bidirectional_rnn/fw/gru_cell/candidate/kernel*
T0* 
_output_shapes
:
АА
┌
Nbidirectional_rnn/fw/gru_cell/candidate/bias/Initializer/zeros/shape_as_tensorConst*
valueB:А*
dtype0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes
:
╩
Dbidirectional_rnn/fw/gru_cell/candidate/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes
: 
╒
>bidirectional_rnn/fw/gru_cell/candidate/bias/Initializer/zerosFillNbidirectional_rnn/fw/gru_cell/candidate/bias/Initializer/zeros/shape_as_tensorDbidirectional_rnn/fw/gru_cell/candidate/bias/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
█
,bidirectional_rnn/fw/gru_cell/candidate/bias
VariableV2*
shape:А*
dtype0*
	container *
shared_name *?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
╗
3bidirectional_rnn/fw/gru_cell/candidate/bias/AssignAssign,bidirectional_rnn/fw/gru_cell/candidate/bias>bidirectional_rnn/fw/gru_cell/candidate/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
С
1bidirectional_rnn/fw/gru_cell/candidate/bias/readIdentity,bidirectional_rnn/fw/gru_cell/candidate/bias*
T0*
_output_shapes	
:А
Э
2bidirectional_rnn/fw/fw/while/gru_cell/concat/axisConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Р
-bidirectional_rnn/fw/fw/while/gru_cell/concatConcatV2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3(bidirectional_rnn/fw/fw/while/Identity_32bidirectional_rnn/fw/fw/while/gru_cell/concat/axis*
N*
T0*

Tidx0*(
_output_shapes
:         А
Ї
-bidirectional_rnn/fw/fw/while/gru_cell/MatMulMatMul-bidirectional_rnn/fw/fw/while/gru_cell/concat3bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:         А
Г
3bidirectional_rnn/fw/fw/while/gru_cell/MatMul/EnterEnter/bidirectional_rnn/fw/gru_cell/gates/kernel/read*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА
ш
.bidirectional_rnn/fw/fw/while/gru_cell/BiasAddBiasAdd-bidirectional_rnn/fw/fw/while/gru_cell/MatMul4bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:         А
¤
4bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/EnterEnter-bidirectional_rnn/fw/gru_cell/gates/bias/read*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes	
:А
Ь
.bidirectional_rnn/fw/fw/while/gru_cell/SigmoidSigmoid.bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd*
T0*(
_output_shapes
:         А
Ч
,bidirectional_rnn/fw/fw/while/gru_cell/ConstConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
б
6bidirectional_rnn/fw/fw/while/gru_cell/split/split_dimConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ї
,bidirectional_rnn/fw/fw/while/gru_cell/splitSplit6bidirectional_rnn/fw/fw/while/gru_cell/split/split_dim.bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid*
	num_split*
T0*<
_output_shapes*
(:         А:         А
╝
*bidirectional_rnn/fw/fw/while/gru_cell/mulMul,bidirectional_rnn/fw/fw/while/gru_cell/split(bidirectional_rnn/fw/fw/while/Identity_3*
T0*(
_output_shapes
:         А
Я
4bidirectional_rnn/fw/fw/while/gru_cell/concat_1/axisConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ц
/bidirectional_rnn/fw/fw/while/gru_cell/concat_1ConcatV2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3*bidirectional_rnn/fw/fw/while/gru_cell/mul4bidirectional_rnn/fw/fw/while/gru_cell/concat_1/axis*
N*
T0*

Tidx0*(
_output_shapes
:         А
·
/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1MatMul/bidirectional_rnn/fw/fw/while/gru_cell/concat_15bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:         А
Й
5bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/EnterEnter3bidirectional_rnn/fw/gru_cell/candidate/kernel/read*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА
ю
0bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1BiasAdd/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_16bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter*
T0*
data_formatNHWC*(
_output_shapes
:         А
Г
6bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/EnterEnter1bidirectional_rnn/fw/gru_cell/candidate/bias/read*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes	
:А
Ш
+bidirectional_rnn/fw/fw/while/gru_cell/TanhTanh0bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1*
T0*(
_output_shapes
:         А
└
,bidirectional_rnn/fw/fw/while/gru_cell/mul_1Mul.bidirectional_rnn/fw/fw/while/gru_cell/split:1(bidirectional_rnn/fw/fw/while/Identity_3*
T0*(
_output_shapes
:         А
Ъ
,bidirectional_rnn/fw/fw/while/gru_cell/sub/xConst'^bidirectional_rnn/fw/fw/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
┬
*bidirectional_rnn/fw/fw/while/gru_cell/subSub,bidirectional_rnn/fw/fw/while/gru_cell/sub/x.bidirectional_rnn/fw/fw/while/gru_cell/split:1*
T0*(
_output_shapes
:         А
┐
,bidirectional_rnn/fw/fw/while/gru_cell/mul_2Mul*bidirectional_rnn/fw/fw/while/gru_cell/sub+bidirectional_rnn/fw/fw/while/gru_cell/Tanh*
T0*(
_output_shapes
:         А
└
*bidirectional_rnn/fw/fw/while/gru_cell/addAdd,bidirectional_rnn/fw/fw/while/gru_cell/mul_1,bidirectional_rnn/fw/fw/while/gru_cell/mul_2*
T0*(
_output_shapes
:         А
Х
+bidirectional_rnn/fw/fw/while/dropout/ShapeShape*bidirectional_rnn/fw/fw/while/gru_cell/add*
T0*
out_type0*
_output_shapes
:
ж
8bidirectional_rnn/fw/fw/while/dropout/random_uniform/minConst'^bidirectional_rnn/fw/fw/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
8bidirectional_rnn/fw/fw/while/dropout/random_uniform/maxConst'^bidirectional_rnn/fw/fw/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
┘
Bbidirectional_rnn/fw/fw/while/dropout/random_uniform/RandomUniformRandomUniform+bidirectional_rnn/fw/fw/while/dropout/Shape*

seed *
seed2 *
dtype0*
T0*(
_output_shapes
:         А
╘
8bidirectional_rnn/fw/fw/while/dropout/random_uniform/subSub8bidirectional_rnn/fw/fw/while/dropout/random_uniform/max8bidirectional_rnn/fw/fw/while/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ё
8bidirectional_rnn/fw/fw/while/dropout/random_uniform/mulMulBbidirectional_rnn/fw/fw/while/dropout/random_uniform/RandomUniform8bidirectional_rnn/fw/fw/while/dropout/random_uniform/sub*
T0*(
_output_shapes
:         А
т
4bidirectional_rnn/fw/fw/while/dropout/random_uniformAdd8bidirectional_rnn/fw/fw/while/dropout/random_uniform/mul8bidirectional_rnn/fw/fw/while/dropout/random_uniform/min*
T0*(
_output_shapes
:         А
╩
)bidirectional_rnn/fw/fw/while/dropout/addAdd/bidirectional_rnn/fw/fw/while/dropout/add/Enter4bidirectional_rnn/fw/fw/while/dropout/random_uniform*
T0*(
_output_shapes
:         А
╔
/bidirectional_rnn/fw/fw/while/dropout/add/EnterEntersub*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
Т
+bidirectional_rnn/fw/fw/while/dropout/FloorFloor)bidirectional_rnn/fw/fw/while/dropout/add*
T0*(
_output_shapes
:         А
─
)bidirectional_rnn/fw/fw/while/dropout/divRealDiv*bidirectional_rnn/fw/fw/while/gru_cell/add/bidirectional_rnn/fw/fw/while/dropout/add/Enter*
T0*(
_output_shapes
:         А
╗
)bidirectional_rnn/fw/fw/while/dropout/mulMul)bidirectional_rnn/fw/fw/while/dropout/div+bidirectional_rnn/fw/fw/while/dropout/Floor*
T0*(
_output_shapes
:         А
─
*bidirectional_rnn/fw/fw/while/GreaterEqualGreaterEqual(bidirectional_rnn/fw/fw/while/Identity_10bidirectional_rnn/fw/fw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:         
ў
0bidirectional_rnn/fw/fw/while/GreaterEqual/EnterEnter#bidirectional_rnn/fw/fw/CheckSeqLen*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *#
_output_shapes
:         
в
$bidirectional_rnn/fw/fw/while/SelectSelect*bidirectional_rnn/fw/fw/while/GreaterEqual*bidirectional_rnn/fw/fw/while/Select/Enter)bidirectional_rnn/fw/fw/while/dropout/mul*
T0*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*(
_output_shapes
:         А
о
*bidirectional_rnn/fw/fw/while/Select/EnterEnterbidirectional_rnn/fw/fw/zeros*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*(
_output_shapes
:         А
╞
,bidirectional_rnn/fw/fw/while/GreaterEqual_1GreaterEqual(bidirectional_rnn/fw/fw/while/Identity_10bidirectional_rnn/fw/fw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:         
ж
&bidirectional_rnn/fw/fw/while/Select_1Select,bidirectional_rnn/fw/fw/while/GreaterEqual_1(bidirectional_rnn/fw/fw/while/Identity_3*bidirectional_rnn/fw/fw/while/gru_cell/add*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/fw/while/gru_cell/add*(
_output_shapes
:         А
∙
Abidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Gbidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter(bidirectional_rnn/fw/fw/while/Identity_1$bidirectional_rnn/fw/fw/while/Select(bidirectional_rnn/fw/fw/while/Identity_2*
T0*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*
_output_shapes
: 
├
Gbidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter#bidirectional_rnn/fw/fw/TensorArray*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*
_output_shapes
:
Р
%bidirectional_rnn/fw/fw/while/add_1/yConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ь
#bidirectional_rnn/fw/fw/while/add_1Add(bidirectional_rnn/fw/fw/while/Identity_1%bidirectional_rnn/fw/fw/while/add_1/y*
T0*
_output_shapes
: 
А
+bidirectional_rnn/fw/fw/while/NextIterationNextIteration!bidirectional_rnn/fw/fw/while/add*
T0*
_output_shapes
: 
Д
-bidirectional_rnn/fw/fw/while/NextIteration_1NextIteration#bidirectional_rnn/fw/fw/while/add_1*
T0*
_output_shapes
: 
в
-bidirectional_rnn/fw/fw/while/NextIteration_2NextIterationAbidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
Щ
-bidirectional_rnn/fw/fw/while/NextIteration_3NextIteration&bidirectional_rnn/fw/fw/while/Select_1*
T0*(
_output_shapes
:         А
q
"bidirectional_rnn/fw/fw/while/ExitExit$bidirectional_rnn/fw/fw/while/Switch*
T0*
_output_shapes
: 
u
$bidirectional_rnn/fw/fw/while/Exit_1Exit&bidirectional_rnn/fw/fw/while/Switch_1*
T0*
_output_shapes
: 
u
$bidirectional_rnn/fw/fw/while/Exit_2Exit&bidirectional_rnn/fw/fw/while/Switch_2*
T0*
_output_shapes
: 
З
$bidirectional_rnn/fw/fw/while/Exit_3Exit&bidirectional_rnn/fw/fw/while/Switch_3*
T0*(
_output_shapes
:         А
ъ
:bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3#bidirectional_rnn/fw/fw/TensorArray$bidirectional_rnn/fw/fw/while/Exit_2*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
: 
о
4bidirectional_rnn/fw/fw/TensorArrayStack/range/startConst*
value	B : *
dtype0*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
: 
о
4bidirectional_rnn/fw/fw/TensorArrayStack/range/deltaConst*
value	B :*
dtype0*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
: 
╚
.bidirectional_rnn/fw/fw/TensorArrayStack/rangeRange4bidirectional_rnn/fw/fw/TensorArrayStack/range/start:bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV34bidirectional_rnn/fw/fw/TensorArrayStack/range/delta*

Tidx0*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*#
_output_shapes
:         
ё
<bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3#bidirectional_rnn/fw/fw/TensorArray.bidirectional_rnn/fw/fw/TensorArrayStack/range$bidirectional_rnn/fw/fw/while/Exit_2*
dtype0*%
element_shape:         А*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*5
_output_shapes#
!:                  А
j
bidirectional_rnn/fw/fw/Const_4Const*
valueB:А*
dtype0*
_output_shapes
:
`
bidirectional_rnn/fw/fw/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
g
%bidirectional_rnn/fw/fw/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
g
%bidirectional_rnn/fw/fw/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
╛
bidirectional_rnn/fw/fw/range_1Range%bidirectional_rnn/fw/fw/range_1/startbidirectional_rnn/fw/fw/Rank_1%bidirectional_rnn/fw/fw/range_1/delta*

Tidx0*
_output_shapes
:
z
)bidirectional_rnn/fw/fw/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
g
%bidirectional_rnn/fw/fw/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
┘
 bidirectional_rnn/fw/fw/concat_2ConcatV2)bidirectional_rnn/fw/fw/concat_2/values_0bidirectional_rnn/fw/fw/range_1%bidirectional_rnn/fw/fw/concat_2/axis*
N*
T0*

Tidx0*
_output_shapes
:
▌
#bidirectional_rnn/fw/fw/transpose_1	Transpose<bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3 bidirectional_rnn/fw/fw/concat_2*
T0*
Tperm0*5
_output_shapes#
!:                  А
╞
$bidirectional_rnn/bw/ReverseSequenceReverseSequenceembedding_lookupIteratorGetNext*
seq_dim*
	batch_dim *
T0*

Tlen0	*5
_output_shapes#
!:                  А
^
bidirectional_rnn/bw/bw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
e
#bidirectional_rnn/bw/bw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
e
#bidirectional_rnn/bw/bw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
╢
bidirectional_rnn/bw/bw/rangeRange#bidirectional_rnn/bw/bw/range/startbidirectional_rnn/bw/bw/Rank#bidirectional_rnn/bw/bw/range/delta*

Tidx0*
_output_shapes
:
x
'bidirectional_rnn/bw/bw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
e
#bidirectional_rnn/bw/bw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╤
bidirectional_rnn/bw/bw/concatConcatV2'bidirectional_rnn/bw/bw/concat/values_0bidirectional_rnn/bw/bw/range#bidirectional_rnn/bw/bw/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
┴
!bidirectional_rnn/bw/bw/transpose	Transpose$bidirectional_rnn/bw/ReverseSequencebidirectional_rnn/bw/bw/concat*
T0*
Tperm0*5
_output_shapes#
!:                  А
u
bidirectional_rnn/bw/bw/ToInt32CastIteratorGetNext*

SrcT0	*

DstT0*#
_output_shapes
:         
В
'bidirectional_rnn/bw/bw/sequence_lengthIdentitybidirectional_rnn/bw/bw/ToInt32*
T0*#
_output_shapes
:         
~
bidirectional_rnn/bw/bw/ShapeShape!bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:
u
+bidirectional_rnn/bw/bw/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-bidirectional_rnn/bw/bw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-bidirectional_rnn/bw/bw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ё
%bidirectional_rnn/bw/bw/strided_sliceStridedSlicebidirectional_rnn/bw/bw/Shape+bidirectional_rnn/bw/bw/strided_slice/stack-bidirectional_rnn/bw/bw/strided_slice/stack_1-bidirectional_rnn/bw/bw/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
С
Obidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
В
Kbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims
ExpandDims%bidirectional_rnn/bw/bw/strided_sliceObidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:
С
Fbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
О
Lbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ё
Gbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/concatConcatV2Kbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDimsFbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ConstLbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
С
Lbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
к
Fbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zerosFillGbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/concatLbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zeros/Const*
T0*

index_type0*(
_output_shapes
:         А
У
Qbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
Mbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims_1
ExpandDims%bidirectional_rnn/bw/bw/strided_sliceQbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/ExpandDims_1/dim*
T0*

Tdim0*
_output_shapes
:
У
Hbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
Ж
bidirectional_rnn/bw/bw/Shape_1Shape'bidirectional_rnn/bw/bw/sequence_length*
T0*
out_type0*
_output_shapes
:
Ж
bidirectional_rnn/bw/bw/stackPack%bidirectional_rnn/bw/bw/strided_slice*
N*
T0*

axis *
_output_shapes
:
Л
bidirectional_rnn/bw/bw/EqualEqualbidirectional_rnn/bw/bw/Shape_1bidirectional_rnn/bw/bw/stack*
T0*
_output_shapes
:
g
bidirectional_rnn/bw/bw/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Х
bidirectional_rnn/bw/bw/AllAllbidirectional_rnn/bw/bw/Equalbidirectional_rnn/bw/bw/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
м
$bidirectional_rnn/bw/bw/Assert/ConstConst*X
valueOBM BGExpected shape for Tensor bidirectional_rnn/bw/bw/sequence_length:0 is *
dtype0*
_output_shapes
: 
w
&bidirectional_rnn/bw/bw/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
┤
,bidirectional_rnn/bw/bw/Assert/Assert/data_0Const*X
valueOBM BGExpected shape for Tensor bidirectional_rnn/bw/bw/sequence_length:0 is *
dtype0*
_output_shapes
: 
}
,bidirectional_rnn/bw/bw/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
И
%bidirectional_rnn/bw/bw/Assert/AssertAssertbidirectional_rnn/bw/bw/All,bidirectional_rnn/bw/bw/Assert/Assert/data_0bidirectional_rnn/bw/bw/stack,bidirectional_rnn/bw/bw/Assert/Assert/data_2bidirectional_rnn/bw/bw/Shape_1*
T
2*
	summarize
о
#bidirectional_rnn/bw/bw/CheckSeqLenIdentity'bidirectional_rnn/bw/bw/sequence_length&^bidirectional_rnn/bw/bw/Assert/Assert*
T0*#
_output_shapes
:         
А
bidirectional_rnn/bw/bw/Shape_2Shape!bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:
w
-bidirectional_rnn/bw/bw/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/bidirectional_rnn/bw/bw/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/bw/bw/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
√
'bidirectional_rnn/bw/bw/strided_slice_1StridedSlicebidirectional_rnn/bw/bw/Shape_2-bidirectional_rnn/bw/bw/strided_slice_1/stack/bidirectional_rnn/bw/bw/strided_slice_1/stack_1/bidirectional_rnn/bw/bw/strided_slice_1/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
А
bidirectional_rnn/bw/bw/Shape_3Shape!bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:
w
-bidirectional_rnn/bw/bw/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/bw/bw/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/bw/bw/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
√
'bidirectional_rnn/bw/bw/strided_slice_2StridedSlicebidirectional_rnn/bw/bw/Shape_3-bidirectional_rnn/bw/bw/strided_slice_2/stack/bidirectional_rnn/bw/bw/strided_slice_2/stack_1/bidirectional_rnn/bw/bw/strided_slice_2/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
h
&bidirectional_rnn/bw/bw/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
▓
"bidirectional_rnn/bw/bw/ExpandDims
ExpandDims'bidirectional_rnn/bw/bw/strided_slice_2&bidirectional_rnn/bw/bw/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:
j
bidirectional_rnn/bw/bw/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
g
%bidirectional_rnn/bw/bw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╥
 bidirectional_rnn/bw/bw/concat_1ConcatV2"bidirectional_rnn/bw/bw/ExpandDimsbidirectional_rnn/bw/bw/Const_1%bidirectional_rnn/bw/bw/concat_1/axis*
N*
T0*

Tidx0*
_output_shapes
:
h
#bidirectional_rnn/bw/bw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
▒
bidirectional_rnn/bw/bw/zerosFill bidirectional_rnn/bw/bw/concat_1#bidirectional_rnn/bw/bw/zeros/Const*
T0*

index_type0*(
_output_shapes
:         А
i
bidirectional_rnn/bw/bw/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
ж
bidirectional_rnn/bw/bw/MinMin#bidirectional_rnn/bw/bw/CheckSeqLenbidirectional_rnn/bw/bw/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
i
bidirectional_rnn/bw/bw/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
ж
bidirectional_rnn/bw/bw/MaxMax#bidirectional_rnn/bw/bw/CheckSeqLenbidirectional_rnn/bw/bw/Const_3*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
^
bidirectional_rnn/bw/bw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
└
#bidirectional_rnn/bw/bw/TensorArrayTensorArrayV3'bidirectional_rnn/bw/bw/strided_slice_1*
dtype0*%
element_shape:         А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*C
tensor_array_name.,bidirectional_rnn/bw/bw/dynamic_rnn/output_0*
_output_shapes

:: 
┴
%bidirectional_rnn/bw/bw/TensorArray_1TensorArrayV3'bidirectional_rnn/bw/bw/strided_slice_1*
dtype0*%
element_shape:         А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*B
tensor_array_name-+bidirectional_rnn/bw/bw/dynamic_rnn/input_0*
_output_shapes

:: 
С
0bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeShape!bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:
И
>bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
К
@bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
К
@bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╨
8bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceStridedSlice0bidirectional_rnn/bw/bw/TensorArrayUnstack/Shape>bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack@bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1@bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
x
6bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
x
6bidirectional_rnn/bw/bw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ф
0bidirectional_rnn/bw/bw/TensorArrayUnstack/rangeRange6bidirectional_rnn/bw/bw/TensorArrayUnstack/range/start8bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice6bidirectional_rnn/bw/bw/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:         
ц
Rbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3%bidirectional_rnn/bw/bw/TensorArray_10bidirectional_rnn/bw/bw/TensorArrayUnstack/range!bidirectional_rnn/bw/bw/transpose'bidirectional_rnn/bw/bw/TensorArray_1:1*
T0*4
_class*
(&loc:@bidirectional_rnn/bw/bw/transpose*
_output_shapes
: 
c
!bidirectional_rnn/bw/bw/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
Л
bidirectional_rnn/bw/bw/MaximumMaximum!bidirectional_rnn/bw/bw/Maximum/xbidirectional_rnn/bw/bw/Max*
T0*
_output_shapes
: 
Х
bidirectional_rnn/bw/bw/MinimumMinimum'bidirectional_rnn/bw/bw/strided_slice_1bidirectional_rnn/bw/bw/Maximum*
T0*
_output_shapes
: 
q
/bidirectional_rnn/bw/bw/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
щ
#bidirectional_rnn/bw/bw/while/EnterEnter/bidirectional_rnn/bw/bw/while/iteration_counter*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
╪
%bidirectional_rnn/bw/bw/while/Enter_1Enterbidirectional_rnn/bw/bw/time*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
с
%bidirectional_rnn/bw/bw/while/Enter_2Enter%bidirectional_rnn/bw/bw/TensorArray:1*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
Ф
%bidirectional_rnn/bw/bw/while/Enter_3EnterFbidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zeros*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations *(
_output_shapes
:         А
к
#bidirectional_rnn/bw/bw/while/MergeMerge#bidirectional_rnn/bw/bw/while/Enter+bidirectional_rnn/bw/bw/while/NextIteration*
T0*
N*
_output_shapes
: : 
░
%bidirectional_rnn/bw/bw/while/Merge_1Merge%bidirectional_rnn/bw/bw/while/Enter_1-bidirectional_rnn/bw/bw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
░
%bidirectional_rnn/bw/bw/while/Merge_2Merge%bidirectional_rnn/bw/bw/while/Enter_2-bidirectional_rnn/bw/bw/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
┬
%bidirectional_rnn/bw/bw/while/Merge_3Merge%bidirectional_rnn/bw/bw/while/Enter_3-bidirectional_rnn/bw/bw/while/NextIteration_3*
T0*
N**
_output_shapes
:         А: 
Ъ
"bidirectional_rnn/bw/bw/while/LessLess#bidirectional_rnn/bw/bw/while/Merge(bidirectional_rnn/bw/bw/while/Less/Enter*
T0*
_output_shapes
: 
ц
(bidirectional_rnn/bw/bw/while/Less/EnterEnter'bidirectional_rnn/bw/bw/strided_slice_1*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
а
$bidirectional_rnn/bw/bw/while/Less_1Less%bidirectional_rnn/bw/bw/while/Merge_1*bidirectional_rnn/bw/bw/while/Less_1/Enter*
T0*
_output_shapes
: 
р
*bidirectional_rnn/bw/bw/while/Less_1/EnterEnterbidirectional_rnn/bw/bw/Minimum*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
Ш
(bidirectional_rnn/bw/bw/while/LogicalAnd
LogicalAnd"bidirectional_rnn/bw/bw/while/Less$bidirectional_rnn/bw/bw/while/Less_1*
_output_shapes
: 
t
&bidirectional_rnn/bw/bw/while/LoopCondLoopCond(bidirectional_rnn/bw/bw/while/LogicalAnd*
_output_shapes
: 
╓
$bidirectional_rnn/bw/bw/while/SwitchSwitch#bidirectional_rnn/bw/bw/while/Merge&bidirectional_rnn/bw/bw/while/LoopCond*
T0*6
_class,
*(loc:@bidirectional_rnn/bw/bw/while/Merge*
_output_shapes
: : 
▄
&bidirectional_rnn/bw/bw/while/Switch_1Switch%bidirectional_rnn/bw/bw/while/Merge_1&bidirectional_rnn/bw/bw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/bw/while/Merge_1*
_output_shapes
: : 
▄
&bidirectional_rnn/bw/bw/while/Switch_2Switch%bidirectional_rnn/bw/bw/while/Merge_2&bidirectional_rnn/bw/bw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/bw/while/Merge_2*
_output_shapes
: : 
А
&bidirectional_rnn/bw/bw/while/Switch_3Switch%bidirectional_rnn/bw/bw/while/Merge_3&bidirectional_rnn/bw/bw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/bw/while/Merge_3*<
_output_shapes*
(:         А:         А
{
&bidirectional_rnn/bw/bw/while/IdentityIdentity&bidirectional_rnn/bw/bw/while/Switch:1*
T0*
_output_shapes
: 

(bidirectional_rnn/bw/bw/while/Identity_1Identity(bidirectional_rnn/bw/bw/while/Switch_1:1*
T0*
_output_shapes
: 

(bidirectional_rnn/bw/bw/while/Identity_2Identity(bidirectional_rnn/bw/bw/while/Switch_2:1*
T0*
_output_shapes
: 
С
(bidirectional_rnn/bw/bw/while/Identity_3Identity(bidirectional_rnn/bw/bw/while/Switch_3:1*
T0*(
_output_shapes
:         А
О
#bidirectional_rnn/bw/bw/while/add/yConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ц
!bidirectional_rnn/bw/bw/while/addAdd&bidirectional_rnn/bw/bw/while/Identity#bidirectional_rnn/bw/bw/while/add/y*
T0*
_output_shapes
: 
Х
/bidirectional_rnn/bw/bw/while/TensorArrayReadV3TensorArrayReadV35bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter(bidirectional_rnn/bw/bw/while/Identity_17bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:         А
ї
5bidirectional_rnn/bw/bw/while/TensorArrayReadV3/EnterEnter%bidirectional_rnn/bw/bw/TensorArray_1*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
а
7bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1EnterRbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
Я
4bidirectional_rnn/fw/fw/while/gru_cell/concat_2/axisConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ф
/bidirectional_rnn/fw/fw/while/gru_cell/concat_2ConcatV2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3(bidirectional_rnn/bw/bw/while/Identity_34bidirectional_rnn/fw/fw/while/gru_cell/concat_2/axis*
N*
T0*

Tidx0*(
_output_shapes
:         А
·
/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2MatMul/bidirectional_rnn/fw/fw/while/gru_cell/concat_25bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:         А
Е
5bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/EnterEnter/bidirectional_rnn/fw/gru_cell/gates/kernel/read*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА
ю
0bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2BiasAdd/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_26bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter*
T0*
data_formatNHWC*(
_output_shapes
:         А
 
6bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/EnterEnter-bidirectional_rnn/fw/gru_cell/gates/bias/read*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes	
:А
а
0bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1Sigmoid0bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2*
T0*(
_output_shapes
:         А
Щ
.bidirectional_rnn/fw/fw/while/gru_cell/Const_1Const'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
г
8bidirectional_rnn/fw/fw/while/gru_cell/split_1/split_dimConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
√
.bidirectional_rnn/fw/fw/while/gru_cell/split_1Split8bidirectional_rnn/fw/fw/while/gru_cell/split_1/split_dim0bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1*
	num_split*
T0*<
_output_shapes*
(:         А:         А
└
,bidirectional_rnn/fw/fw/while/gru_cell/mul_3Mul.bidirectional_rnn/fw/fw/while/gru_cell/split_1(bidirectional_rnn/bw/bw/while/Identity_3*
T0*(
_output_shapes
:         А
Я
4bidirectional_rnn/fw/fw/while/gru_cell/concat_3/axisConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ш
/bidirectional_rnn/fw/fw/while/gru_cell/concat_3ConcatV2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3,bidirectional_rnn/fw/fw/while/gru_cell/mul_34bidirectional_rnn/fw/fw/while/gru_cell/concat_3/axis*
N*
T0*

Tidx0*(
_output_shapes
:         А
·
/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3MatMul/bidirectional_rnn/fw/fw/while/gru_cell/concat_35bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:         А
Й
5bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/EnterEnter3bidirectional_rnn/fw/gru_cell/candidate/kernel/read*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА
ю
0bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3BiasAdd/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_36bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter*
T0*
data_formatNHWC*(
_output_shapes
:         А
Г
6bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/EnterEnter1bidirectional_rnn/fw/gru_cell/candidate/bias/read*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes	
:А
Ъ
-bidirectional_rnn/fw/fw/while/gru_cell/Tanh_1Tanh0bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3*
T0*(
_output_shapes
:         А
┬
,bidirectional_rnn/fw/fw/while/gru_cell/mul_4Mul0bidirectional_rnn/fw/fw/while/gru_cell/split_1:1(bidirectional_rnn/bw/bw/while/Identity_3*
T0*(
_output_shapes
:         А
Ь
.bidirectional_rnn/fw/fw/while/gru_cell/sub_1/xConst'^bidirectional_rnn/bw/bw/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╚
,bidirectional_rnn/fw/fw/while/gru_cell/sub_1Sub.bidirectional_rnn/fw/fw/while/gru_cell/sub_1/x0bidirectional_rnn/fw/fw/while/gru_cell/split_1:1*
T0*(
_output_shapes
:         А
├
,bidirectional_rnn/fw/fw/while/gru_cell/mul_5Mul,bidirectional_rnn/fw/fw/while/gru_cell/sub_1-bidirectional_rnn/fw/fw/while/gru_cell/Tanh_1*
T0*(
_output_shapes
:         А
┬
,bidirectional_rnn/fw/fw/while/gru_cell/add_1Add,bidirectional_rnn/fw/fw/while/gru_cell/mul_4,bidirectional_rnn/fw/fw/while/gru_cell/mul_5*
T0*(
_output_shapes
:         А
Ч
+bidirectional_rnn/bw/bw/while/dropout/ShapeShape,bidirectional_rnn/fw/fw/while/gru_cell/add_1*
T0*
out_type0*
_output_shapes
:
ж
8bidirectional_rnn/bw/bw/while/dropout/random_uniform/minConst'^bidirectional_rnn/bw/bw/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
8bidirectional_rnn/bw/bw/while/dropout/random_uniform/maxConst'^bidirectional_rnn/bw/bw/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
┘
Bbidirectional_rnn/bw/bw/while/dropout/random_uniform/RandomUniformRandomUniform+bidirectional_rnn/bw/bw/while/dropout/Shape*

seed *
seed2 *
dtype0*
T0*(
_output_shapes
:         А
╘
8bidirectional_rnn/bw/bw/while/dropout/random_uniform/subSub8bidirectional_rnn/bw/bw/while/dropout/random_uniform/max8bidirectional_rnn/bw/bw/while/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ё
8bidirectional_rnn/bw/bw/while/dropout/random_uniform/mulMulBbidirectional_rnn/bw/bw/while/dropout/random_uniform/RandomUniform8bidirectional_rnn/bw/bw/while/dropout/random_uniform/sub*
T0*(
_output_shapes
:         А
т
4bidirectional_rnn/bw/bw/while/dropout/random_uniformAdd8bidirectional_rnn/bw/bw/while/dropout/random_uniform/mul8bidirectional_rnn/bw/bw/while/dropout/random_uniform/min*
T0*(
_output_shapes
:         А
╩
)bidirectional_rnn/bw/bw/while/dropout/addAdd/bidirectional_rnn/bw/bw/while/dropout/add/Enter4bidirectional_rnn/bw/bw/while/dropout/random_uniform*
T0*(
_output_shapes
:         А
╔
/bidirectional_rnn/bw/bw/while/dropout/add/EnterEntersub*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
Т
+bidirectional_rnn/bw/bw/while/dropout/FloorFloor)bidirectional_rnn/bw/bw/while/dropout/add*
T0*(
_output_shapes
:         А
╞
)bidirectional_rnn/bw/bw/while/dropout/divRealDiv,bidirectional_rnn/fw/fw/while/gru_cell/add_1/bidirectional_rnn/bw/bw/while/dropout/add/Enter*
T0*(
_output_shapes
:         А
╗
)bidirectional_rnn/bw/bw/while/dropout/mulMul)bidirectional_rnn/bw/bw/while/dropout/div+bidirectional_rnn/bw/bw/while/dropout/Floor*
T0*(
_output_shapes
:         А
─
*bidirectional_rnn/bw/bw/while/GreaterEqualGreaterEqual(bidirectional_rnn/bw/bw/while/Identity_10bidirectional_rnn/bw/bw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:         
ў
0bidirectional_rnn/bw/bw/while/GreaterEqual/EnterEnter#bidirectional_rnn/bw/bw/CheckSeqLen*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *#
_output_shapes
:         
в
$bidirectional_rnn/bw/bw/while/SelectSelect*bidirectional_rnn/bw/bw/while/GreaterEqual*bidirectional_rnn/bw/bw/while/Select/Enter)bidirectional_rnn/bw/bw/while/dropout/mul*
T0*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*(
_output_shapes
:         А
о
*bidirectional_rnn/bw/bw/while/Select/EnterEnterbidirectional_rnn/bw/bw/zeros*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*(
_output_shapes
:         А
╞
,bidirectional_rnn/bw/bw/while/GreaterEqual_1GreaterEqual(bidirectional_rnn/bw/bw/while/Identity_10bidirectional_rnn/bw/bw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:         
к
&bidirectional_rnn/bw/bw/while/Select_1Select,bidirectional_rnn/bw/bw/while/GreaterEqual_1(bidirectional_rnn/bw/bw/while/Identity_3,bidirectional_rnn/fw/fw/while/gru_cell/add_1*
T0*?
_class5
31loc:@bidirectional_rnn/fw/fw/while/gru_cell/add_1*(
_output_shapes
:         А
∙
Abidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Gbidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter(bidirectional_rnn/bw/bw/while/Identity_1$bidirectional_rnn/bw/bw/while/Select(bidirectional_rnn/bw/bw/while/Identity_2*
T0*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*
_output_shapes
: 
├
Gbidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter#bidirectional_rnn/bw/bw/TensorArray*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*
_output_shapes
:
Р
%bidirectional_rnn/bw/bw/while/add_1/yConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ь
#bidirectional_rnn/bw/bw/while/add_1Add(bidirectional_rnn/bw/bw/while/Identity_1%bidirectional_rnn/bw/bw/while/add_1/y*
T0*
_output_shapes
: 
А
+bidirectional_rnn/bw/bw/while/NextIterationNextIteration!bidirectional_rnn/bw/bw/while/add*
T0*
_output_shapes
: 
Д
-bidirectional_rnn/bw/bw/while/NextIteration_1NextIteration#bidirectional_rnn/bw/bw/while/add_1*
T0*
_output_shapes
: 
в
-bidirectional_rnn/bw/bw/while/NextIteration_2NextIterationAbidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
Щ
-bidirectional_rnn/bw/bw/while/NextIteration_3NextIteration&bidirectional_rnn/bw/bw/while/Select_1*
T0*(
_output_shapes
:         А
q
"bidirectional_rnn/bw/bw/while/ExitExit$bidirectional_rnn/bw/bw/while/Switch*
T0*
_output_shapes
: 
u
$bidirectional_rnn/bw/bw/while/Exit_1Exit&bidirectional_rnn/bw/bw/while/Switch_1*
T0*
_output_shapes
: 
u
$bidirectional_rnn/bw/bw/while/Exit_2Exit&bidirectional_rnn/bw/bw/while/Switch_2*
T0*
_output_shapes
: 
З
$bidirectional_rnn/bw/bw/while/Exit_3Exit&bidirectional_rnn/bw/bw/while/Switch_3*
T0*(
_output_shapes
:         А
ъ
:bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3#bidirectional_rnn/bw/bw/TensorArray$bidirectional_rnn/bw/bw/while/Exit_2*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
: 
о
4bidirectional_rnn/bw/bw/TensorArrayStack/range/startConst*
value	B : *
dtype0*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
: 
о
4bidirectional_rnn/bw/bw/TensorArrayStack/range/deltaConst*
value	B :*
dtype0*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
: 
╚
.bidirectional_rnn/bw/bw/TensorArrayStack/rangeRange4bidirectional_rnn/bw/bw/TensorArrayStack/range/start:bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV34bidirectional_rnn/bw/bw/TensorArrayStack/range/delta*

Tidx0*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*#
_output_shapes
:         
ё
<bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3#bidirectional_rnn/bw/bw/TensorArray.bidirectional_rnn/bw/bw/TensorArrayStack/range$bidirectional_rnn/bw/bw/while/Exit_2*
dtype0*%
element_shape:         А*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*5
_output_shapes#
!:                  А
j
bidirectional_rnn/bw/bw/Const_4Const*
valueB:А*
dtype0*
_output_shapes
:
`
bidirectional_rnn/bw/bw/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
g
%bidirectional_rnn/bw/bw/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
g
%bidirectional_rnn/bw/bw/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
╛
bidirectional_rnn/bw/bw/range_1Range%bidirectional_rnn/bw/bw/range_1/startbidirectional_rnn/bw/bw/Rank_1%bidirectional_rnn/bw/bw/range_1/delta*

Tidx0*
_output_shapes
:
z
)bidirectional_rnn/bw/bw/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
g
%bidirectional_rnn/bw/bw/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
┘
 bidirectional_rnn/bw/bw/concat_2ConcatV2)bidirectional_rnn/bw/bw/concat_2/values_0bidirectional_rnn/bw/bw/range_1%bidirectional_rnn/bw/bw/concat_2/axis*
N*
T0*

Tidx0*
_output_shapes
:
▌
#bidirectional_rnn/bw/bw/transpose_1	Transpose<bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3 bidirectional_rnn/bw/bw/concat_2*
T0*
Tperm0*5
_output_shapes#
!:                  А
─
ReverseSequenceReverseSequence#bidirectional_rnn/bw/bw/transpose_1IteratorGetNext*
seq_dim*
	batch_dim *
T0*

Tlen0	*5
_output_shapes#
!:                  А
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
к
concatConcatV2#bidirectional_rnn/fw/fw/transpose_1ReverseSequenceconcat/axis*
N*
T0*

Tidx0*5
_output_shapes#
!:                  А
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *Ц(╛*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ц(>*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
ц
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
с
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
╙
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
г
dense/kernel
VariableV2*
shape:	А*
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel*
_output_shapes
:	А
╚
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel*
_output_shapes
:	А
v
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
Х
,dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense/bias*
_output_shapes
:
Ж
"dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
╠
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias*
_output_shapes
:
Х

dense/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense/bias*
_output_shapes
:
▓
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias*
_output_shapes
:
k
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes
:
[
dense/Tensordot/ShapeShapeconcat*
T0*
out_type0*
_output_shapes
:
V
dense/Tensordot/RankConst*
value	B :*
dtype0*
_output_shapes
: 
^
dense/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
`
dense/Tensordot/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
З
dense/Tensordot/GreaterEqualGreaterEqualdense/Tensordot/axesdense/Tensordot/GreaterEqual/y*
T0*
_output_shapes
:
n
dense/Tensordot/CastCastdense/Tensordot/GreaterEqual*

SrcT0
*

DstT0*
_output_shapes
:
k
dense/Tensordot/mulMuldense/Tensordot/Castdense/Tensordot/axes*
T0*
_output_shapes
:
X
dense/Tensordot/Less/yConst*
value	B : *
dtype0*
_output_shapes
: 
o
dense/Tensordot/LessLessdense/Tensordot/axesdense/Tensordot/Less/y*
T0*
_output_shapes
:
h
dense/Tensordot/Cast_1Castdense/Tensordot/Less*

SrcT0
*

DstT0*
_output_shapes
:
k
dense/Tensordot/addAdddense/Tensordot/axesdense/Tensordot/Rank*
T0*
_output_shapes
:
n
dense/Tensordot/mul_1Muldense/Tensordot/Cast_1dense/Tensordot/add*
T0*
_output_shapes
:
m
dense/Tensordot/add_1Adddense/Tensordot/muldense/Tensordot/mul_1*
T0*
_output_shapes
:
]
dense/Tensordot/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
]
dense/Tensordot/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
dense/Tensordot/rangeRangedense/Tensordot/range/startdense/Tensordot/Rankdense/Tensordot/range/delta*

Tidx0*
_output_shapes
:
Ю
dense/Tensordot/ListDiffListDiffdense/Tensordot/rangedense/Tensordot/add_1*
T0*
out_idx0*2
_output_shapes 
:         :         
н
dense/Tensordot/GatherGatherdense/Tensordot/Shapedense/Tensordot/ListDiff*
validate_indices(*
Tparams0*
Tindices0*#
_output_shapes
:         
г
dense/Tensordot/Gather_1Gatherdense/Tensordot/Shapedense/Tensordot/add_1*
validate_indices(*
Tparams0*
Tindices0*
_output_shapes
:
_
dense/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Й
dense/Tensordot/ProdProddense/Tensordot/Gatherdense/Tensordot/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
a
dense/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
П
dense/Tensordot/Prod_1Proddense/Tensordot/Gather_1dense/Tensordot/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
]
dense/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
┤
dense/Tensordot/concatConcatV2dense/Tensordot/Gather_1dense/Tensordot/Gatherdense/Tensordot/concat/axis*
N*
T0*

Tidx0*#
_output_shapes
:         
_
dense/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╖
dense/Tensordot/concat_1ConcatV2dense/Tensordot/ListDiffdense/Tensordot/add_1dense/Tensordot/concat_1/axis*
N*
T0*

Tidx0*#
_output_shapes
:         
Е
dense/Tensordot/stackPackdense/Tensordot/Proddense/Tensordot/Prod_1*
N*
T0*

axis *
_output_shapes
:
Э
dense/Tensordot/transpose	Transposeconcatdense/Tensordot/concat_1*
T0*
Tperm0*=
_output_shapes+
):'                           
Э
dense/Tensordot/ReshapeReshapedense/Tensordot/transposedense/Tensordot/stack*
T0*
Tshape0*0
_output_shapes
:                  
q
 dense/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ф
dense/Tensordot/transpose_1	Transposedense/kernel/read dense/Tensordot/transpose_1/perm*
T0*
Tperm0*
_output_shapes
:	А
p
dense/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
Ъ
dense/Tensordot/Reshape_1Reshapedense/Tensordot/transpose_1dense/Tensordot/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:	А
м
dense/Tensordot/MatMulMatMuldense/Tensordot/Reshapedense/Tensordot/Reshape_1*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:         
a
dense/Tensordot/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
_
dense/Tensordot/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╖
dense/Tensordot/concat_2ConcatV2dense/Tensordot/Gatherdense/Tensordot/Const_2dense/Tensordot/concat_2/axis*
N*
T0*

Tidx0*#
_output_shapes
:         
Щ
dense/TensordotReshapedense/Tensordot/MatMuldense/Tensordot/concat_2*
T0*
Tshape0*4
_output_shapes"
 :                  
Р
dense/BiasAddBiasAdddense/Tensordotdense/bias/read*
T0*
data_formatNHWC*4
_output_shapes"
 :                  
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:2*
T0	*
out_type0*
_output_shapes
:
x
+SparseSoftmaxCrossEntropyWithLogits/Shape_1Shapedense/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
(SparseSoftmaxCrossEntropyWithLogits/RankConst*
value	B :*
dtype0*
_output_shapes
: 
k
)SparseSoftmaxCrossEntropyWithLogits/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
д
'SparseSoftmaxCrossEntropyWithLogits/subSub(SparseSoftmaxCrossEntropyWithLogits/Rank)SparseSoftmaxCrossEntropyWithLogits/sub/y*
T0*
_output_shapes
: 
k
)SparseSoftmaxCrossEntropyWithLogits/add/yConst*
value	B :*
dtype0*
_output_shapes
: 
г
'SparseSoftmaxCrossEntropyWithLogits/addAdd'SparseSoftmaxCrossEntropyWithLogits/sub)SparseSoftmaxCrossEntropyWithLogits/add/y*
T0*
_output_shapes
: 
в
7SparseSoftmaxCrossEntropyWithLogits/strided_slice/stackPack'SparseSoftmaxCrossEntropyWithLogits/sub*
N*
T0*

axis *
_output_shapes
:
д
9SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack_1Pack'SparseSoftmaxCrossEntropyWithLogits/add*
N*
T0*

axis *
_output_shapes
:
Г
9SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
п
1SparseSoftmaxCrossEntropyWithLogits/strided_sliceStridedSlice+SparseSoftmaxCrossEntropyWithLogits/Shape_17SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack9SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack_19SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
~
3SparseSoftmaxCrossEntropyWithLogits/Reshape/shape/0Const*
valueB :
         *
dtype0*
_output_shapes
: 
█
1SparseSoftmaxCrossEntropyWithLogits/Reshape/shapePack3SparseSoftmaxCrossEntropyWithLogits/Reshape/shape/01SparseSoftmaxCrossEntropyWithLogits/strided_slice*
N*
T0*

axis *
_output_shapes
:
┴
+SparseSoftmaxCrossEntropyWithLogits/ReshapeReshapedense/BiasAdd1SparseSoftmaxCrossEntropyWithLogits/Reshape/shape*
T0*
Tshape0*0
_output_shapes
:                  
Ж
3SparseSoftmaxCrossEntropyWithLogits/Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
╝
-SparseSoftmaxCrossEntropyWithLogits/Reshape_1ReshapeIteratorGetNext:23SparseSoftmaxCrossEntropyWithLogits/Reshape_1/shape*
T0	*
Tshape0*#
_output_shapes
:         
г
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits+SparseSoftmaxCrossEntropyWithLogits/Reshape-SparseSoftmaxCrossEntropyWithLogits/Reshape_1*
T0*
Tlabels0	*?
_output_shapes-
+:         :                  
ї
-SparseSoftmaxCrossEntropyWithLogits/Reshape_2ReshapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits)SparseSoftmaxCrossEntropyWithLogits/Shape*
T0*
Tshape0*0
_output_shapes
:                  
\
SequenceMask/ConstConst*
valueB: *
dtype0*
_output_shapes
:
z
SequenceMask/MaxMaxIteratorGetNextSequenceMask/Const*
	keep_dims( *
T0	*

Tidx0*
_output_shapes
: 
V
SequenceMask/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
V
SequenceMask/Const_2Const*
value	B	 R*
dtype0	*
_output_shapes
: 
К
SequenceMask/RangeRangeSequenceMask/Const_1SequenceMask/MaxSequenceMask/Const_2*

Tidx0	*#
_output_shapes
:         
f
SequenceMask/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
С
SequenceMask/ExpandDims
ExpandDimsIteratorGetNextSequenceMask/ExpandDims/dim*
T0	*

Tdim0*'
_output_shapes
:         
s
SequenceMask/CastCastSequenceMask/ExpandDims*

SrcT0	*

DstT0	*'
_output_shapes
:         
{
SequenceMask/LessLessSequenceMask/RangeSequenceMask/Cast*
T0	*0
_output_shapes
:                  

boolean_mask/ShapeShape-SparseSoftmaxCrossEntropyWithLogits/Reshape_2*
T0*
out_type0*
_output_shapes
:
j
 boolean_mask/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"boolean_mask/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"boolean_mask/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╛
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape boolean_mask/strided_slice/stack"boolean_mask/strided_slice/stack_1"boolean_mask/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
:
m
#boolean_mask/Prod/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
Ш
boolean_mask/ProdProdboolean_mask/strided_slice#boolean_mask/Prod/reduction_indices*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Б
boolean_mask/Shape_1Shape-SparseSoftmaxCrossEntropyWithLogits/Reshape_2*
T0*
out_type0*
_output_shapes
:
l
"boolean_mask/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$boolean_mask/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$boolean_mask/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╞
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1"boolean_mask/strided_slice_1/stack$boolean_mask/strided_slice_1/stack_1$boolean_mask/strided_slice_1/stack_2*
T0*
Index0*

begin_mask*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
: 
Б
boolean_mask/Shape_2Shape-SparseSoftmaxCrossEntropyWithLogits/Reshape_2*
T0*
out_type0*
_output_shapes
:
l
"boolean_mask/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
n
$boolean_mask/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$boolean_mask/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╞
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2"boolean_mask/strided_slice_2/stack$boolean_mask/strided_slice_2/stack_1$boolean_mask/strided_slice_2/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
: 
q
boolean_mask/concat/values_1Packboolean_mask/Prod*
N*
T0*

axis *
_output_shapes
:
Z
boolean_mask/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
═
boolean_mask/concatConcatV2boolean_mask/strided_slice_1boolean_mask/concat/values_1boolean_mask/strided_slice_2boolean_mask/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
Я
boolean_mask/ReshapeReshape-SparseSoftmaxCrossEntropyWithLogits/Reshape_2boolean_mask/concat*
T0*
Tshape0*#
_output_shapes
:         
o
boolean_mask/Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
О
boolean_mask/Reshape_1ReshapeSequenceMask/Lessboolean_mask/Reshape_1/shape*
T0
*
Tshape0*#
_output_shapes
:         
e
boolean_mask/WhereWhereboolean_mask/Reshape_1*
T0
*'
_output_shapes
:         
x
boolean_mask/SqueezeSqueezeboolean_mask/Where*
T0	*
squeeze_dims
*#
_output_shapes
:         
е
boolean_mask/GatherGatherboolean_mask/Reshapeboolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:         
Q
Const_6Const*
valueB: *
dtype0*
_output_shapes
:
h
MeanMeanboolean_mask/GatherConst_6*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Л
ArgMaxArgMaxdense/BiasAddArgMax/dimension*
T0*

Tidx0*
output_type0	*0
_output_shapes
:                  
Z
boolean_mask_1/ShapeShapeArgMax*
T0	*
out_type0*
_output_shapes
:
l
"boolean_mask_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$boolean_mask_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$boolean_mask_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╚
boolean_mask_1/strided_sliceStridedSliceboolean_mask_1/Shape"boolean_mask_1/strided_slice/stack$boolean_mask_1/strided_slice/stack_1$boolean_mask_1/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
:
o
%boolean_mask_1/Prod/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
Ю
boolean_mask_1/ProdProdboolean_mask_1/strided_slice%boolean_mask_1/Prod/reduction_indices*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
\
boolean_mask_1/Shape_1ShapeArgMax*
T0	*
out_type0*
_output_shapes
:
n
$boolean_mask_1/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
p
&boolean_mask_1/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
p
&boolean_mask_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╨
boolean_mask_1/strided_slice_1StridedSliceboolean_mask_1/Shape_1$boolean_mask_1/strided_slice_1/stack&boolean_mask_1/strided_slice_1/stack_1&boolean_mask_1/strided_slice_1/stack_2*
T0*
Index0*

begin_mask*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
: 
\
boolean_mask_1/Shape_2ShapeArgMax*
T0	*
out_type0*
_output_shapes
:
n
$boolean_mask_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
p
&boolean_mask_1/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
p
&boolean_mask_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╨
boolean_mask_1/strided_slice_2StridedSliceboolean_mask_1/Shape_2$boolean_mask_1/strided_slice_2/stack&boolean_mask_1/strided_slice_2/stack_1&boolean_mask_1/strided_slice_2/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
: 
u
boolean_mask_1/concat/values_1Packboolean_mask_1/Prod*
N*
T0*

axis *
_output_shapes
:
\
boolean_mask_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╫
boolean_mask_1/concatConcatV2boolean_mask_1/strided_slice_1boolean_mask_1/concat/values_1boolean_mask_1/strided_slice_2boolean_mask_1/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
|
boolean_mask_1/ReshapeReshapeArgMaxboolean_mask_1/concat*
T0	*
Tshape0*#
_output_shapes
:         
q
boolean_mask_1/Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Т
boolean_mask_1/Reshape_1ReshapeSequenceMask/Lessboolean_mask_1/Reshape_1/shape*
T0
*
Tshape0*#
_output_shapes
:         
i
boolean_mask_1/WhereWhereboolean_mask_1/Reshape_1*
T0
*'
_output_shapes
:         
|
boolean_mask_1/SqueezeSqueezeboolean_mask_1/Where*
T0	*
squeeze_dims
*#
_output_shapes
:         
л
boolean_mask_1/GatherGatherboolean_mask_1/Reshapeboolean_mask_1/Squeeze*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
e
boolean_mask_2/ShapeShapeIteratorGetNext:2*
T0	*
out_type0*
_output_shapes
:
l
"boolean_mask_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$boolean_mask_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$boolean_mask_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╚
boolean_mask_2/strided_sliceStridedSliceboolean_mask_2/Shape"boolean_mask_2/strided_slice/stack$boolean_mask_2/strided_slice/stack_1$boolean_mask_2/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
:
o
%boolean_mask_2/Prod/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
Ю
boolean_mask_2/ProdProdboolean_mask_2/strided_slice%boolean_mask_2/Prod/reduction_indices*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
g
boolean_mask_2/Shape_1ShapeIteratorGetNext:2*
T0	*
out_type0*
_output_shapes
:
n
$boolean_mask_2/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
p
&boolean_mask_2/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
p
&boolean_mask_2/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╨
boolean_mask_2/strided_slice_1StridedSliceboolean_mask_2/Shape_1$boolean_mask_2/strided_slice_1/stack&boolean_mask_2/strided_slice_1/stack_1&boolean_mask_2/strided_slice_1/stack_2*
T0*
Index0*

begin_mask*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
: 
g
boolean_mask_2/Shape_2ShapeIteratorGetNext:2*
T0	*
out_type0*
_output_shapes
:
n
$boolean_mask_2/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
p
&boolean_mask_2/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
p
&boolean_mask_2/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╨
boolean_mask_2/strided_slice_2StridedSliceboolean_mask_2/Shape_2$boolean_mask_2/strided_slice_2/stack&boolean_mask_2/strided_slice_2/stack_1&boolean_mask_2/strided_slice_2/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
: 
u
boolean_mask_2/concat/values_1Packboolean_mask_2/Prod*
N*
T0*

axis *
_output_shapes
:
\
boolean_mask_2/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╫
boolean_mask_2/concatConcatV2boolean_mask_2/strided_slice_1boolean_mask_2/concat/values_1boolean_mask_2/strided_slice_2boolean_mask_2/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
З
boolean_mask_2/ReshapeReshapeIteratorGetNext:2boolean_mask_2/concat*
T0	*
Tshape0*#
_output_shapes
:         
q
boolean_mask_2/Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Т
boolean_mask_2/Reshape_1ReshapeSequenceMask/Lessboolean_mask_2/Reshape_1/shape*
T0
*
Tshape0*#
_output_shapes
:         
i
boolean_mask_2/WhereWhereboolean_mask_2/Reshape_1*
T0
*'
_output_shapes
:         
|
boolean_mask_2/SqueezeSqueezeboolean_mask_2/Where*
T0	*
squeeze_dims
*#
_output_shapes
:         
л
boolean_mask_2/GatherGatherboolean_mask_2/Reshapeboolean_mask_2/Squeeze*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
Z
Variable_1/initial_valueConst*
value	B : *
dtype0*
_output_shapes
: 
n

Variable_1
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
к
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable_1*
_output_shapes
: 
g
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1*
_output_shapes
: 
N
Placeholder_2Placeholder*
dtype0*
shape: *
_output_shapes
: 
_
OptimizeLoss/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
e
 OptimizeLoss/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ц
OptimizeLoss/gradients/FillFillOptimizeLoss/gradients/Shape OptimizeLoss/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
`
OptimizeLoss/gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
╒
 OptimizeLoss/gradients/f_count_1EnterOptimizeLoss/gradients/f_count*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
Щ
OptimizeLoss/gradients/MergeMerge OptimizeLoss/gradients/f_count_1$OptimizeLoss/gradients/NextIteration*
T0*
N*
_output_shapes
: : 
Р
OptimizeLoss/gradients/SwitchSwitchOptimizeLoss/gradients/Merge&bidirectional_rnn/fw/fw/while/LoopCond*
T0*
_output_shapes
: : 
З
OptimizeLoss/gradients/Add/yConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Б
OptimizeLoss/gradients/AddAddOptimizeLoss/gradients/Switch:1OptimizeLoss/gradients/Add/y*
T0*
_output_shapes
: 
Ї
$OptimizeLoss/gradients/NextIterationNextIterationOptimizeLoss/gradients/Add|^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPushV2V^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPushV2T^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPushV2h^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2j^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1V^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPushV2X^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPushV2h^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPushV2V^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPushV2i^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2k^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2_1k^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/StackPushV2k^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1Y^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/StackPushV2[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/StackPushV2i^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/StackPushV2a^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/StackPushV2_^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPushV2a^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPushV2_1i^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2k^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1Y^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/StackPushV2c^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/StackPushV2_^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/StackPushV2*
T0*
_output_shapes
: 
h
 OptimizeLoss/gradients/f_count_2ExitOptimizeLoss/gradients/Switch*
T0*
_output_shapes
: 
`
OptimizeLoss/gradients/b_countConst*
value	B :*
dtype0*
_output_shapes
: 
ю
 OptimizeLoss/gradients/b_count_1Enter OptimizeLoss/gradients/f_count_2*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
Э
OptimizeLoss/gradients/Merge_1Merge OptimizeLoss/gradients/b_count_1&OptimizeLoss/gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 
Я
#OptimizeLoss/gradients/GreaterEqualGreaterEqualOptimizeLoss/gradients/Merge_1)OptimizeLoss/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
ї
)OptimizeLoss/gradients/GreaterEqual/EnterEnterOptimizeLoss/gradients/b_count*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
i
 OptimizeLoss/gradients/b_count_2LoopCond#OptimizeLoss/gradients/GreaterEqual*
_output_shapes
: 
О
OptimizeLoss/gradients/Switch_1SwitchOptimizeLoss/gradients/Merge_1 OptimizeLoss/gradients/b_count_2*
T0*
_output_shapes
: : 
Р
OptimizeLoss/gradients/SubSub!OptimizeLoss/gradients/Switch_1:1)OptimizeLoss/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
э
&OptimizeLoss/gradients/NextIteration_1NextIterationOptimizeLoss/gradients/Subw^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
j
 OptimizeLoss/gradients/b_count_3ExitOptimizeLoss/gradients/Switch_1*
T0*
_output_shapes
: 
b
 OptimizeLoss/gradients/f_count_3Const*
value	B : *
dtype0*
_output_shapes
: 
╫
 OptimizeLoss/gradients/f_count_4Enter OptimizeLoss/gradients/f_count_3*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
Э
OptimizeLoss/gradients/Merge_2Merge OptimizeLoss/gradients/f_count_4&OptimizeLoss/gradients/NextIteration_2*
T0*
N*
_output_shapes
: : 
Ф
OptimizeLoss/gradients/Switch_2SwitchOptimizeLoss/gradients/Merge_2&bidirectional_rnn/bw/bw/while/LoopCond*
T0*
_output_shapes
: : 
Й
OptimizeLoss/gradients/Add_1/yConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
З
OptimizeLoss/gradients/Add_1Add!OptimizeLoss/gradients/Switch_2:1OptimizeLoss/gradients/Add_1/y*
T0*
_output_shapes
: 
И
&OptimizeLoss/gradients/NextIteration_2NextIterationOptimizeLoss/gradients/Add_1|^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2Z^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPushV2V^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPushV2T^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPushV2h^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2j^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1V^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPushV2X^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPushV2h^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPushV2V^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPushV2k^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPushV2m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1k^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/StackPushV2k^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1Y^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/StackPushV2[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/StackPushV2k^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPushV2a^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/StackPushV2_^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPushV2a^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPushV2_1k^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2m^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/StackPushV2e^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPushV2a^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/StackPushV2*
T0*
_output_shapes
: 
j
 OptimizeLoss/gradients/f_count_5ExitOptimizeLoss/gradients/Switch_2*
T0*
_output_shapes
: 
b
 OptimizeLoss/gradients/b_count_4Const*
value	B :*
dtype0*
_output_shapes
: 
ю
 OptimizeLoss/gradients/b_count_5Enter OptimizeLoss/gradients/f_count_5*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
Э
OptimizeLoss/gradients/Merge_3Merge OptimizeLoss/gradients/b_count_5&OptimizeLoss/gradients/NextIteration_3*
T0*
N*
_output_shapes
: : 
г
%OptimizeLoss/gradients/GreaterEqual_1GreaterEqualOptimizeLoss/gradients/Merge_3+OptimizeLoss/gradients/GreaterEqual_1/Enter*
T0*
_output_shapes
: 
∙
+OptimizeLoss/gradients/GreaterEqual_1/EnterEnter OptimizeLoss/gradients/b_count_4*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
k
 OptimizeLoss/gradients/b_count_6LoopCond%OptimizeLoss/gradients/GreaterEqual_1*
_output_shapes
: 
О
OptimizeLoss/gradients/Switch_3SwitchOptimizeLoss/gradients/Merge_3 OptimizeLoss/gradients/b_count_6*
T0*
_output_shapes
: : 
Ф
OptimizeLoss/gradients/Sub_1Sub!OptimizeLoss/gradients/Switch_3:1+OptimizeLoss/gradients/GreaterEqual_1/Enter*
T0*
_output_shapes
: 
я
&OptimizeLoss/gradients/NextIteration_3NextIterationOptimizeLoss/gradients/Sub_1w^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
j
 OptimizeLoss/gradients/b_count_7ExitOptimizeLoss/gradients/Switch_3*
T0*
_output_shapes
: 
x
.OptimizeLoss/gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
│
(OptimizeLoss/gradients/Mean_grad/ReshapeReshapeOptimizeLoss/gradients/Fill.OptimizeLoss/gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
y
&OptimizeLoss/gradients/Mean_grad/ShapeShapeboolean_mask/Gather*
T0*
out_type0*
_output_shapes
:
┐
%OptimizeLoss/gradients/Mean_grad/TileTile(OptimizeLoss/gradients/Mean_grad/Reshape&OptimizeLoss/gradients/Mean_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:         
{
(OptimizeLoss/gradients/Mean_grad/Shape_1Shapeboolean_mask/Gather*
T0*
out_type0*
_output_shapes
:
k
(OptimizeLoss/gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
p
&OptimizeLoss/gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
╜
%OptimizeLoss/gradients/Mean_grad/ProdProd(OptimizeLoss/gradients/Mean_grad/Shape_1&OptimizeLoss/gradients/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
r
(OptimizeLoss/gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
┴
'OptimizeLoss/gradients/Mean_grad/Prod_1Prod(OptimizeLoss/gradients/Mean_grad/Shape_2(OptimizeLoss/gradients/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
l
*OptimizeLoss/gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
й
(OptimizeLoss/gradients/Mean_grad/MaximumMaximum'OptimizeLoss/gradients/Mean_grad/Prod_1*OptimizeLoss/gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
з
)OptimizeLoss/gradients/Mean_grad/floordivFloorDiv%OptimizeLoss/gradients/Mean_grad/Prod(OptimizeLoss/gradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
И
%OptimizeLoss/gradients/Mean_grad/CastCast)OptimizeLoss/gradients/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
п
(OptimizeLoss/gradients/Mean_grad/truedivRealDiv%OptimizeLoss/gradients/Mean_grad/Tile%OptimizeLoss/gradients/Mean_grad/Cast*
T0*#
_output_shapes
:         
▓
5OptimizeLoss/gradients/boolean_mask/Gather_grad/ShapeShapeboolean_mask/Reshape*
T0*
out_type0	*'
_class
loc:@boolean_mask/Reshape*
_output_shapes
:
╙
7OptimizeLoss/gradients/boolean_mask/Gather_grad/ToInt32Cast5OptimizeLoss/gradients/boolean_mask/Gather_grad/Shape*

SrcT0	*

DstT0*'
_class
loc:@boolean_mask/Reshape*
_output_shapes
:
Г
4OptimizeLoss/gradients/boolean_mask/Gather_grad/SizeSizeboolean_mask/Squeeze*
T0	*
out_type0*
_output_shapes
: 
А
>OptimizeLoss/gradients/boolean_mask/Gather_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
я
:OptimizeLoss/gradients/boolean_mask/Gather_grad/ExpandDims
ExpandDims4OptimizeLoss/gradients/boolean_mask/Gather_grad/Size>OptimizeLoss/gradients/boolean_mask/Gather_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:
Н
COptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
П
EOptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
П
EOptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
э
=OptimizeLoss/gradients/boolean_mask/Gather_grad/strided_sliceStridedSlice7OptimizeLoss/gradients/boolean_mask/Gather_grad/ToInt32COptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice/stackEOptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice/stack_1EOptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
: 
}
;OptimizeLoss/gradients/boolean_mask/Gather_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
┤
6OptimizeLoss/gradients/boolean_mask/Gather_grad/concatConcatV2:OptimizeLoss/gradients/boolean_mask/Gather_grad/ExpandDims=OptimizeLoss/gradients/boolean_mask/Gather_grad/strided_slice;OptimizeLoss/gradients/boolean_mask/Gather_grad/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
р
7OptimizeLoss/gradients/boolean_mask/Gather_grad/ReshapeReshape(OptimizeLoss/gradients/Mean_grad/truediv6OptimizeLoss/gradients/boolean_mask/Gather_grad/concat*
T0*
Tshape0*#
_output_shapes
:         
╥
9OptimizeLoss/gradients/boolean_mask/Gather_grad/Reshape_1Reshapeboolean_mask/Squeeze:OptimizeLoss/gradients/boolean_mask/Gather_grad/ExpandDims*
T0	*
Tshape0*#
_output_shapes
:         
г
6OptimizeLoss/gradients/boolean_mask/Reshape_grad/ShapeShape-SparseSoftmaxCrossEntropyWithLogits/Reshape_2*
T0*
out_type0*
_output_shapes
:
Ц
LOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ш
NOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ш
NOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
П
FOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_sliceStridedSlice7OptimizeLoss/gradients/boolean_mask/Gather_grad/ToInt32LOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stackNOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1NOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
у
?OptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/tensorUnsortedSegmentSum7OptimizeLoss/gradients/boolean_mask/Gather_grad/Reshape9OptimizeLoss/gradients/boolean_mask/Gather_grad/Reshape_1FOptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/strided_slice*
T0*
Tindices0	*
Tnumsegments0*#
_output_shapes
:         
Е
8OptimizeLoss/gradients/boolean_mask/Reshape_grad/ReshapeReshape?OptimizeLoss/gradients/boolean_mask/Reshape_grad/Reshape/tensor6OptimizeLoss/gradients/boolean_mask/Reshape_grad/Shape*
T0*
Tshape0*0
_output_shapes
:                  
╓
OOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_2_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
г
QOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_2_grad/ReshapeReshape8OptimizeLoss/gradients/boolean_mask/Reshape_grad/ReshapeOOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
┤
!OptimizeLoss/gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:                  
├
sOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*┤
messageиеCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*0
_output_shapes
:                  
╜
rOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
Б
nOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsQOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_2_grad/ReshaperOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:         
О
gOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulnOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimssOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*0
_output_shapes
:                  
Ъ
MOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/ShapeShapedense/BiasAdd*
T0*
out_type0*
_output_shapes
:
▀
OOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/ReshapeReshapegOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/Shape*
T0*
Tshape0*4
_output_shapes"
 :                  
╤
5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGradOOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
╠
:OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_depsNoOpP^OptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/Reshape6^OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad
 
BOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentityOOptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/Reshape;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*b
_classX
VTloc:@OptimizeLoss/gradients/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/Reshape*4
_output_shapes"
 :                  
│
DOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
З
1OptimizeLoss/gradients/dense/Tensordot_grad/ShapeShapedense/Tensordot/MatMul*
T0*
out_type0*
_output_shapes
:
ї
3OptimizeLoss/gradients/dense/Tensordot_grad/ReshapeReshapeBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency1OptimizeLoss/gradients/dense/Tensordot_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
ь
9OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMulMatMul3OptimizeLoss/gradients/dense/Tensordot_grad/Reshapedense/Tensordot/Reshape_1*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:         А
ы
;OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMul_1MatMuldense/Tensordot/Reshape3OptimizeLoss/gradients/dense/Tensordot_grad/Reshape*
transpose_a(*
transpose_b( *
T0*'
_output_shapes
:         
┼
COptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/group_depsNoOp:^OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMul_1
┘
KOptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/control_dependencyIdentity9OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMulD^OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMul*(
_output_shapes
:         А
╓
MOptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/control_dependency_1Identity;OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMul_1D^OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@OptimizeLoss/gradients/dense/Tensordot/MatMul_grad/MatMul_1*
_output_shapes
:	А
Т
9OptimizeLoss/gradients/dense/Tensordot/Reshape_grad/ShapeShapedense/Tensordot/transpose*
T0*
out_type0*
_output_shapes
:
д
;OptimizeLoss/gradients/dense/Tensordot/Reshape_grad/ReshapeReshapeKOptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/control_dependency9OptimizeLoss/gradients/dense/Tensordot/Reshape_grad/Shape*
T0*
Tshape0*=
_output_shapes+
):'                           
М
;OptimizeLoss/gradients/dense/Tensordot/Reshape_1_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
М
=OptimizeLoss/gradients/dense/Tensordot/Reshape_1_grad/ReshapeReshapeMOptimizeLoss/gradients/dense/Tensordot/MatMul_grad/tuple/control_dependency_1;OptimizeLoss/gradients/dense/Tensordot/Reshape_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:	А
д
GOptimizeLoss/gradients/dense/Tensordot/transpose_grad/InvertPermutationInvertPermutationdense/Tensordot/concat_1*
T0*#
_output_shapes
:         
Я
?OptimizeLoss/gradients/dense/Tensordot/transpose_grad/transpose	Transpose;OptimizeLoss/gradients/dense/Tensordot/Reshape_grad/ReshapeGOptimizeLoss/gradients/dense/Tensordot/transpose_grad/InvertPermutation*
T0*
Tperm0*5
_output_shapes#
!:                  А
е
IOptimizeLoss/gradients/dense/Tensordot/transpose_1_grad/InvertPermutationInvertPermutation dense/Tensordot/transpose_1/perm*
T0*
_output_shapes
:
П
AOptimizeLoss/gradients/dense/Tensordot/transpose_1_grad/transpose	Transpose=OptimizeLoss/gradients/dense/Tensordot/Reshape_1_grad/ReshapeIOptimizeLoss/gradients/dense/Tensordot/transpose_1_grad/InvertPermutation*
T0*
Tperm0*
_output_shapes
:	А
i
'OptimizeLoss/gradients/concat_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Й
&OptimizeLoss/gradients/concat_grad/modFloorModconcat/axis'OptimizeLoss/gradients/concat_grad/Rank*
T0*
_output_shapes
: 
Л
(OptimizeLoss/gradients/concat_grad/ShapeShape#bidirectional_rnn/fw/fw/transpose_1*
T0*
out_type0*
_output_shapes
:
н
)OptimizeLoss/gradients/concat_grad/ShapeNShapeN#bidirectional_rnn/fw/fw/transpose_1ReverseSequence*
N*
T0*
out_type0* 
_output_shapes
::
ъ
/OptimizeLoss/gradients/concat_grad/ConcatOffsetConcatOffset&OptimizeLoss/gradients/concat_grad/mod)OptimizeLoss/gradients/concat_grad/ShapeN+OptimizeLoss/gradients/concat_grad/ShapeN:1*
N* 
_output_shapes
::
г
(OptimizeLoss/gradients/concat_grad/SliceSlice?OptimizeLoss/gradients/dense/Tensordot/transpose_grad/transpose/OptimizeLoss/gradients/concat_grad/ConcatOffset)OptimizeLoss/gradients/concat_grad/ShapeN*
T0*
Index0*=
_output_shapes+
):'                           
й
*OptimizeLoss/gradients/concat_grad/Slice_1Slice?OptimizeLoss/gradients/dense/Tensordot/transpose_grad/transpose1OptimizeLoss/gradients/concat_grad/ConcatOffset:1+OptimizeLoss/gradients/concat_grad/ShapeN:1*
T0*
Index0*=
_output_shapes+
):'                           
У
3OptimizeLoss/gradients/concat_grad/tuple/group_depsNoOp)^OptimizeLoss/gradients/concat_grad/Slice+^OptimizeLoss/gradients/concat_grad/Slice_1
д
;OptimizeLoss/gradients/concat_grad/tuple/control_dependencyIdentity(OptimizeLoss/gradients/concat_grad/Slice4^OptimizeLoss/gradients/concat_grad/tuple/group_deps*
T0*;
_class1
/-loc:@OptimizeLoss/gradients/concat_grad/Slice*5
_output_shapes#
!:                  А
к
=OptimizeLoss/gradients/concat_grad/tuple/control_dependency_1Identity*OptimizeLoss/gradients/concat_grad/Slice_14^OptimizeLoss/gradients/concat_grad/tuple/group_deps*
T0*=
_class3
1/loc:@OptimizeLoss/gradients/concat_grad/Slice_1*5
_output_shapes#
!:                  А
н
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_1_grad/InvertPermutationInvertPermutation bidirectional_rnn/fw/fw/concat_2*
T0*
_output_shapes
:
│
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_1_grad/transpose	Transpose;OptimizeLoss/gradients/concat_grad/tuple/control_dependencyQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_1_grad/InvertPermutation*
T0*
Tperm0*5
_output_shapes#
!:                  А
К
;OptimizeLoss/gradients/ReverseSequence_grad/ReverseSequenceReverseSequence=OptimizeLoss/gradients/concat_grad/tuple/control_dependency_1IteratorGetNext*
seq_dim*
	batch_dim *
T0*

Tlen0	*5
_output_shapes#
!:                  А
╘
zOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3#bidirectional_rnn/fw/fw/TensorArray$bidirectional_rnn/fw/fw/while/Exit_2*"
sourceOptimizeLoss/gradients*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
_output_shapes

:: 
■
vOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity$bidirectional_rnn/fw/fw/while/Exit_2{^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
: 
й
АOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3zOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3.bidirectional_rnn/fw/fw/TensorArrayStack/rangeIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_1_grad/transposevOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
н
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/transpose_1_grad/InvertPermutationInvertPermutation bidirectional_rnn/bw/bw/concat_2*
T0*
_output_shapes
:
│
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/transpose_1_grad/transpose	Transpose;OptimizeLoss/gradients/ReverseSequence_grad/ReverseSequenceQOptimizeLoss/gradients/bidirectional_rnn/bw/bw/transpose_1_grad/InvertPermutation*
T0*
Tperm0*5
_output_shapes#
!:                  А
╘
zOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3#bidirectional_rnn/bw/bw/TensorArray$bidirectional_rnn/bw/bw/while/Exit_2*"
sourceOptimizeLoss/gradients*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
_output_shapes

:: 
■
vOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity$bidirectional_rnn/bw/bw/while/Exit_2{^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
: 
й
АOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3zOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3.bidirectional_rnn/bw/bw/TensorArrayStack/rangeIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/transpose_1_grad/transposevOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
Й
#OptimizeLoss/gradients/zeros_like_1	ZerosLike$bidirectional_rnn/fw/fw/while/Exit_3*
T0*(
_output_shapes
:         А
Ў
GOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Exit_2_grad/b_exitEnterАOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
к
GOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Exit_3_grad/b_exitEnter#OptimizeLoss/gradients/zeros_like_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations *(
_output_shapes
:         А
Й
#OptimizeLoss/gradients/zeros_like_2	ZerosLike$bidirectional_rnn/bw/bw/while/Exit_3*
T0*(
_output_shapes
:         А
Э
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switchMergeGOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Exit_2_grad/b_exitROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
п
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switchMergeGOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Exit_3_grad/b_exitROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_3_grad_1/NextIteration*
T0*
N**
_output_shapes
:         А: 
Ў
GOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Exit_2_grad/b_exitEnterАOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
к
GOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Exit_3_grad/b_exitEnter#OptimizeLoss/gradients/zeros_like_2*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations *(
_output_shapes
:         А
─
HOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/SwitchSwitchKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch OptimizeLoss/gradients/b_count_2*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch*
_output_shapes
: : 
е
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/group_depsNoOpI^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/Switch
Ж
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependencyIdentityHOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/SwitchS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch*
_output_shapes
: 
К
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1IdentityJOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/Switch:1S^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch*
_output_shapes
: 
ш
HOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_3_grad/SwitchSwitchKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switch OptimizeLoss/gradients/b_count_2*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switch*<
_output_shapes*
(:         А:         А
е
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/group_depsNoOpI^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_3_grad/Switch
Ш
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependencyIdentityHOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_3_grad/SwitchS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switch*(
_output_shapes
:         А
Ь
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependency_1IdentityJOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_3_grad/Switch:1S^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switch*(
_output_shapes
:         А
Э
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switchMergeGOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Exit_2_grad/b_exitROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
п
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switchMergeGOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Exit_3_grad/b_exitROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_3_grad_1/NextIteration*
T0*
N**
_output_shapes
:         А: 
╦
FOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Enter_2_grad/ExitExitZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 
▌
FOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Enter_3_grad/ExitExitZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
─
HOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/SwitchSwitchKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch OptimizeLoss/gradients/b_count_6*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch*
_output_shapes
: : 
е
ROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/group_depsNoOpI^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/Switch
Ж
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependencyIdentityHOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/SwitchS^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch*
_output_shapes
: 
К
\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1IdentityJOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/Switch:1S^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch*
_output_shapes
: 
ш
HOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_3_grad/SwitchSwitchKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switch OptimizeLoss/gradients/b_count_6*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switch*<
_output_shapes*
(:         А:         А
е
ROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/group_depsNoOpI^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_3_grad/Switch
Ш
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependencyIdentityHOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_3_grad/SwitchS^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switch*(
_output_shapes
:         А
Ь
\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependency_1IdentityJOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_3_grad/Switch:1S^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switch*(
_output_shapes
:         А
·
OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3ЕOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1*"
sourceOptimizeLoss/gradients*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*
_output_shapes

:: 
Щ
ЕOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter#bidirectional_rnn/fw/fw/TensorArray*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*
_output_shapes
:
╟
{OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1А^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/mul*
_output_shapes
: 
╡
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3zOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2{OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*(
_output_shapes
:         А
¤
uOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*
valueB :
         *
dtype0*;
_class1
/-loc:@bidirectional_rnn/fw/fw/while/Identity_1*
_output_shapes
: 
є
uOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2uOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*
	elem_type0*

stack_name *;
_class1
/-loc:@bidirectional_rnn/fw/fw/while/Identity_1*
_output_shapes
:
Е
uOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnteruOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
№
{OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2uOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter(bidirectional_rnn/fw/fw/while/Identity_1^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
: 
╤
zOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2АOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
: 
и
АOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnteruOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
ю
vOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTrigger{^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Y^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2U^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2S^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPopV2g^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2i^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1U^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPopV2W^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPopV2g^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2U^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPopV2h^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2j^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1j^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2l^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/StackPopV2j^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2l^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1X^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/StackPopV2Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/StackPopV2h^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPopV2`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPopV2_1h^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2j^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1X^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/StackPopV2b^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/StackPopV2
╟
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOp]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1p^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
Ь
vOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityoOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3o^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*В
_classx
vtloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*(
_output_shapes
:         А
╘
xOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1Identity\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1o^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch*
_output_shapes
: 
╣
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zeros_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
▌
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zeros_grad/SumSumFOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Enter_3_grad/ExithOptimizeLoss/gradients/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/GRUCellZeroState/zeros_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ч
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like	ZerosLikeXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:         А
█
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/ConstConst*
valueB :
         *
dtype0*;
_class1
/-loc:@bidirectional_rnn/fw/fw/while/Identity_3*
_output_shapes
: 
п
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_accStackV2SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Const*
	elem_type0*

stack_name *;
_class1
/-loc:@bidirectional_rnn/fw/fw/while/Identity_3*
_output_shapes
:
┴
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/EnterEnterSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╩
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPushV2StackPushV2SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Enter(bidirectional_rnn/fw/fw/while/Identity_3^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
Ю
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2
StackPopV2^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
у
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2/EnterEnterSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Й
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/SelectSelectTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependency_1MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like*
T0*(
_output_shapes
:         А
█
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/ConstConst*
valueB :
         *
dtype0*?
_class5
31loc:@bidirectional_rnn/fw/fw/while/GreaterEqual_1*
_output_shapes
: 
л
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_accStackV2OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Const*
	elem_type0
*

stack_name *?
_class5
31loc:@bidirectional_rnn/fw/fw/while/GreaterEqual_1*
_output_shapes
:
╣
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
┴
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPushV2StackPushV2OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Enter,bidirectional_rnn/fw/fw/while/GreaterEqual_1^OptimizeLoss/gradients/Add*
T0
*
swap_memory( *#
_output_shapes
:         
С
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2
StackPopV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0
*#
_output_shapes
:         
█
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Л
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1SelectTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
ї
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/group_depsNoOpJ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/SelectL^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1
Щ
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependencyIdentityIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/SelectT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/group_deps*
T0*\
_classR
PNloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select*(
_output_shapes
:         А
Я
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependency_1IdentityKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1T^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1*(
_output_shapes
:         А
╦
FOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Enter_2_grad/ExitExitZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 
▌
FOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Enter_3_grad/ExitExitZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
√
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like	ZerosLikeQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like/Enter^OptimizeLoss/gradients/Sub*
T0*(
_output_shapes
:         А
о
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like/EnterEnterbidirectional_rnn/fw/fw/zeros*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *(
_output_shapes
:         А
Э
GOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/SelectSelectROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPopV2vOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like*
T0*(
_output_shapes
:         А
╫
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/ConstConst*
valueB :
         *
dtype0*=
_class3
1/loc:@bidirectional_rnn/fw/fw/while/GreaterEqual*
_output_shapes
: 
е
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/f_accStackV2MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/Const*
	elem_type0
*

stack_name *=
_class3
1/loc:@bidirectional_rnn/fw/fw/while/GreaterEqual*
_output_shapes
:
╡
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/EnterEnterMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╗
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPushV2StackPushV2MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/Enter*bidirectional_rnn/fw/fw/while/GreaterEqual^OptimizeLoss/gradients/Add*
T0
*
swap_memory( *#
_output_shapes
:         
Н
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPopV2
StackPopV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0
*#
_output_shapes
:         
╫
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPopV2/EnterEnterMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Я
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select_1SelectROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPopV2KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/zeros_likevOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
я
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/group_depsNoOpH^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/SelectJ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select_1
С
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependencyIdentityGOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/SelectR^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select*(
_output_shapes
:         А
Ч
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency_1IdentityIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select_1R^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/group_deps*
T0*\
_classR
PNloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select_1*(
_output_shapes
:         А
·
OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3ЕOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1*"
sourceOptimizeLoss/gradients*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*
_output_shapes

:: 
Щ
ЕOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter#bidirectional_rnn/bw/bw/TensorArray*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*
_output_shapes
:
╟
{OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1А^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/mul*
_output_shapes
: 
╡
oOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3zOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2{OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*(
_output_shapes
:         А
¤
uOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*
valueB :
         *
dtype0*;
_class1
/-loc:@bidirectional_rnn/bw/bw/while/Identity_1*
_output_shapes
: 
є
uOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2uOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*
	elem_type0*

stack_name *;
_class1
/-loc:@bidirectional_rnn/bw/bw/while/Identity_1*
_output_shapes
:
Е
uOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnteruOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
■
{OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2uOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter(bidirectional_rnn/bw/bw/while/Identity_1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
: 
╙
zOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2АOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
: 
и
АOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnteruOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
■
vOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTrigger{^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Y^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2U^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2S^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPopV2g^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2i^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1U^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPopV2W^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPopV2g^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2U^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPopV2j^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2l^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1j^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2l^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/StackPopV2j^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2l^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1X^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/StackPopV2Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/StackPopV2j^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPopV2`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/StackPopV2^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPopV2`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPopV2_1j^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2l^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/StackPopV2d^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPopV2`^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/StackPopV2
╟
nOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOp]^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1p^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
Ь
vOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityoOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3o^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*В
_classx
vtloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*(
_output_shapes
:         А
╘
xOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1Identity\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1o^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch*
_output_shapes
: 
╣
hOptimizeLoss/gradients/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zeros_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
▌
fOptimizeLoss/gradients/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zeros_grad/SumSumFOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Enter_3_grad/ExithOptimizeLoss/gradients/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/GRUCellZeroState/zeros_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ч
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like	ZerosLikeXOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:         А
█
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/ConstConst*
valueB :
         *
dtype0*;
_class1
/-loc:@bidirectional_rnn/bw/bw/while/Identity_3*
_output_shapes
: 
п
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_accStackV2SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Const*
	elem_type0*

stack_name *;
_class1
/-loc:@bidirectional_rnn/bw/bw/while/Identity_3*
_output_shapes
:
┴
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/EnterEnterSOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╠
YOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPushV2StackPushV2SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Enter(bidirectional_rnn/bw/bw/while/Identity_3^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
а
XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2
StackPopV2^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
у
^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2/EnterEnterSOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Й
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/SelectSelectTOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependency_1MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like*
T0*(
_output_shapes
:         А
█
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/ConstConst*
valueB :
         *
dtype0*?
_class5
31loc:@bidirectional_rnn/bw/bw/while/GreaterEqual_1*
_output_shapes
: 
л
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_accStackV2OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Const*
	elem_type0
*

stack_name *?
_class5
31loc:@bidirectional_rnn/bw/bw/while/GreaterEqual_1*
_output_shapes
:
╣
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
├
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPushV2StackPushV2OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Enter,bidirectional_rnn/bw/bw/while/GreaterEqual_1^OptimizeLoss/gradients/Add_1*
T0
*
swap_memory( *#
_output_shapes
:         
У
TOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2
StackPopV2ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0
*#
_output_shapes
:         
█
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Л
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1SelectTOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
ї
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/group_depsNoOpJ^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/SelectL^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1
Щ
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependencyIdentityIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/SelectT^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/group_deps*
T0*\
_classR
PNloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select*(
_output_shapes
:         А
Я
]OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependency_1IdentityKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1T^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1*(
_output_shapes
:         А
й
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/ShapeShapebidirectional_rnn/fw/fw/zeros*
T0*
out_type0*
_output_shapes
:
Ч
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
╗
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/zerosFillLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/ShapeROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/zeros/Const*
T0*

index_type0*(
_output_shapes
:         А
╪
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_accEnterLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/zeros*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations *(
_output_shapes
:         А
╣
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_acc_1MergeLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_accTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/NextIteration*
T0*
N**
_output_shapes
:         А: 
Р
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/SwitchSwitchNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_acc_1 OptimizeLoss/gradients/b_count_2*
T0*<
_output_shapes*
(:         А:         А
░
JOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/AddAddOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/Switch:1YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
ф
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/NextIterationNextIterationJOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/Add*
T0*(
_output_shapes
:         А
╪
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_acc_2ExitMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/Switch*
T0*(
_output_shapes
:         А
┤
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/ShapeShape)bidirectional_rnn/fw/fw/while/dropout/div*
T0*
out_type0*
_output_shapes
:
╕
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape_1Shape+bidirectional_rnn/fw/fw/while/dropout/Floor*
T0*
out_type0*
_output_shapes
:
Г
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
М
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape*
_output_shapes
: 
ю
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape*
_output_shapes
:
▌
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
√
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/EnterKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
м
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
 
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Р
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
         *
dtype0*`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape_1*
_output_shapes
: 
Ї
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape_1*
_output_shapes
:
с
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1EntercOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Б
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape_1^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
░
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
Г
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntercOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╢
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mulMul[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency_1TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPopV2*
T0*(
_output_shapes
:         А
┌
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/ConstConst*
valueB :
         *
dtype0*>
_class4
20loc:@bidirectional_rnn/fw/fw/while/dropout/Floor*
_output_shapes
: 
к
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/f_accStackV2OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/Const*
	elem_type0*

stack_name *>
_class4
20loc:@bidirectional_rnn/fw/fw/while/dropout/Floor*
_output_shapes
:
╣
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
┼
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPushV2StackPushV2OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/Enter+bidirectional_rnn/fw/fw/while/dropout/Floor^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
Ц
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPopV2
StackPopV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
█
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPopV2/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╕
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/SumSumIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
╘
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/ReshapeReshapeIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/SumfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
║
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1MulVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPopV2[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
┌
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/ConstConst*
valueB :
         *
dtype0*<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/div*
_output_shapes
: 
м
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/f_accStackV2QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/Const*
	elem_type0*

stack_name *<
_class2
0.loc:@bidirectional_rnn/fw/fw/while/dropout/div*
_output_shapes
:
╜
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/EnterEnterQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╟
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPushV2StackPushV2QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/Enter)bidirectional_rnn/fw/fw/while/dropout/div^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
Ъ
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPopV2
StackPopV2\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
▀
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPopV2/EnterEnterQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╛
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Sum_1SumKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
┌
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Reshape_1ReshapeKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Sum_1hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
А
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/group_depsNoOpN^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/ReshapeP^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Reshape_1
з
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/control_dependencyIdentityMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/ReshapeW^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/group_deps*
T0*`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Reshape*(
_output_shapes
:         А
н
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/control_dependency_1IdentityOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Reshape_1W^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/group_deps*
T0*b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Reshape_1*(
_output_shapes
:         А
■
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_2_grad_1/NextIterationNextIterationxOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
¤
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like	ZerosLikeQOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like/Enter^OptimizeLoss/gradients/Sub_1*
T0*(
_output_shapes
:         А
о
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like/EnterEnterbidirectional_rnn/bw/bw/zeros*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *(
_output_shapes
:         А
Э
GOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/SelectSelectROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPopV2vOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like*
T0*(
_output_shapes
:         А
╫
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/ConstConst*
valueB :
         *
dtype0*=
_class3
1/loc:@bidirectional_rnn/bw/bw/while/GreaterEqual*
_output_shapes
: 
е
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/f_accStackV2MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/Const*
	elem_type0
*

stack_name *=
_class3
1/loc:@bidirectional_rnn/bw/bw/while/GreaterEqual*
_output_shapes
:
╡
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/EnterEnterMOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╜
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPushV2StackPushV2MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/Enter*bidirectional_rnn/bw/bw/while/GreaterEqual^OptimizeLoss/gradients/Add_1*
T0
*
swap_memory( *#
_output_shapes
:         
П
ROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPopV2
StackPopV2XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0
*#
_output_shapes
:         
╫
XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPopV2/EnterEnterMOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Я
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select_1SelectROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPopV2KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/zeros_likevOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
я
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/group_depsNoOpH^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/SelectJ^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select_1
С
YOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependencyIdentityGOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/SelectR^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select*(
_output_shapes
:         А
Ч
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency_1IdentityIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select_1R^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/group_deps*
T0*\
_classR
PNloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select_1*(
_output_shapes
:         А
Р
?OptimizeLoss/gradients/bidirectional_rnn/fw/fw/zeros_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
У
=OptimizeLoss/gradients/bidirectional_rnn/fw/fw/zeros_grad/SumSumNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_acc_2?OptimizeLoss/gradients/bidirectional_rnn/fw/fw/zeros_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
╡
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/ShapeShape*bidirectional_rnn/fw/fw/while/gru_cell/add*
T0*
out_type0*
_output_shapes
:
н
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape_1Const^OptimizeLoss/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
ш
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
М
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape*
_output_shapes
: 
ю
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/f_accStackV2aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape*
_output_shapes
:
▌
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
√
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPushV2StackPushV2aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/EnterKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
м
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2
StackPopV2lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
 
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
└
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDivRealDiv^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/control_dependencySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv/Enter*
T0*(
_output_shapes
:         А
Д
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv/EnterEntersub*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
╝
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/SumSumMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
╘
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/ReshapeReshapeIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/SumfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
┘
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/NegNegTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPopV2*
T0*(
_output_shapes
:         А
┘
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/ConstConst*
valueB :
         *
dtype0*=
_class3
1/loc:@bidirectional_rnn/fw/fw/while/gru_cell/add*
_output_shapes
: 
й
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/f_accStackV2OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/Const*
	elem_type0*

stack_name *=
_class3
1/loc:@bidirectional_rnn/fw/fw/while/gru_cell/add*
_output_shapes
:
╣
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
─
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPushV2StackPushV2OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/Enter*bidirectional_rnn/fw/fw/while/gru_cell/add^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
Ц
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPopV2
StackPopV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
█
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPopV2/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
н
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv_1RealDivIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/NegSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv/Enter*
T0*(
_output_shapes
:         А
│
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv_2RealDivOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv_1SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv/Enter*
T0*(
_output_shapes
:         А
┤
IOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/mulMul^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/tuple/control_dependencyOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:         А
╝
KOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Sum_1SumIOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/mul]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
е
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Reshape_1ReshapeKOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Sum_1MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
А
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/tuple/group_depsNoOpN^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/ReshapeP^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Reshape_1
з
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/tuple/control_dependencyIdentityMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/ReshapeW^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/tuple/group_deps*
T0*`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Reshape*(
_output_shapes
:         А
Ы
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/tuple/control_dependency_1IdentityOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Reshape_1W^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/tuple/group_deps*
T0*b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Reshape_1*
_output_shapes
: 
й
LOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/ShapeShapebidirectional_rnn/bw/bw/zeros*
T0*
out_type0*
_output_shapes
:
Ч
ROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
╗
LOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/zerosFillLOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/ShapeROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/zeros/Const*
T0*

index_type0*(
_output_shapes
:         А
╪
LOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_accEnterLOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/zeros*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations *(
_output_shapes
:         А
╣
NOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_acc_1MergeLOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_accTOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/NextIteration*
T0*
N**
_output_shapes
:         А: 
Р
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/SwitchSwitchNOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_acc_1 OptimizeLoss/gradients/b_count_6*
T0*<
_output_shapes*
(:         А:         А
░
JOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/AddAddOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/Switch:1YOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
ф
TOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/NextIterationNextIterationJOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/Add*
T0*(
_output_shapes
:         А
╪
NOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_acc_2ExitMOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/Switch*
T0*(
_output_shapes
:         А
┤
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/ShapeShape)bidirectional_rnn/bw/bw/while/dropout/div*
T0*
out_type0*
_output_shapes
:
╕
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape_1Shape+bidirectional_rnn/bw/bw/while/dropout/Floor*
T0*
out_type0*
_output_shapes
:
Г
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsfOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2hOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
М
aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape*
_output_shapes
: 
ю
aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape*
_output_shapes
:
▌
aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
¤
gOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/EnterKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
:
о
fOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2lOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
 
lOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Р
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
         *
dtype0*`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape_1*
_output_shapes
: 
Ї
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape_1*
_output_shapes
:
с
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1EntercOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Г
iOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape_1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
:
▓
hOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2nOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
Г
nOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntercOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╢
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mulMul[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency_1TOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPopV2*
T0*(
_output_shapes
:         А
┌
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/ConstConst*
valueB :
         *
dtype0*>
_class4
20loc:@bidirectional_rnn/bw/bw/while/dropout/Floor*
_output_shapes
: 
к
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/f_accStackV2OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/Const*
	elem_type0*

stack_name *>
_class4
20loc:@bidirectional_rnn/bw/bw/while/dropout/Floor*
_output_shapes
:
╣
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╟
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPushV2StackPushV2OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/Enter+bidirectional_rnn/bw/bw/while/dropout/Floor^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
Ш
TOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPopV2
StackPopV2ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
█
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPopV2/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╕
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/SumSumIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
╘
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/ReshapeReshapeIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/SumfOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
║
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1MulVOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPopV2[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
┌
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/ConstConst*
valueB :
         *
dtype0*<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/div*
_output_shapes
: 
м
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/f_accStackV2QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/Const*
	elem_type0*

stack_name *<
_class2
0.loc:@bidirectional_rnn/bw/bw/while/dropout/div*
_output_shapes
:
╜
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/EnterEnterQOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╔
WOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPushV2StackPushV2QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/Enter)bidirectional_rnn/bw/bw/while/dropout/div^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
Ь
VOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPopV2
StackPopV2\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
▀
\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPopV2/EnterEnterQOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╛
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Sum_1SumKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1]OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
┌
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Reshape_1ReshapeKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Sum_1hOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
А
VOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/group_depsNoOpN^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/ReshapeP^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Reshape_1
з
^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/control_dependencyIdentityMOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/ReshapeW^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/group_deps*
T0*`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Reshape*(
_output_shapes
:         А
н
`OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/control_dependency_1IdentityOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Reshape_1W^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/group_deps*
T0*b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Reshape_1*(
_output_shapes
:         А
■
ROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_2_grad_1/NextIterationNextIterationxOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Р
?OptimizeLoss/gradients/bidirectional_rnn/bw/bw/zeros_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
У
=OptimizeLoss/gradients/bidirectional_rnn/bw/bw/zeros_grad/SumSumNOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_acc_2?OptimizeLoss/gradients/bidirectional_rnn/bw/bw/zeros_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
╖
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/ShapeShape,bidirectional_rnn/fw/fw/while/gru_cell/add_1*
T0*
out_type0*
_output_shapes
:
п
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape_1Const^OptimizeLoss/gradients/Sub_1*
valueB *
dtype0*
_output_shapes
: 
ш
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsfOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
М
aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape*
_output_shapes
: 
ю
aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/f_accStackV2aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape*
_output_shapes
:
▌
aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
¤
gOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPushV2StackPushV2aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/EnterKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
:
о
fOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2
StackPopV2lOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
 
lOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2/EnterEnteraOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
└
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDivRealDiv^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/control_dependencySOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv/Enter*
T0*(
_output_shapes
:         А
Д
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv/EnterEntersub*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
╝
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/SumSumMOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
╘
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/ReshapeReshapeIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/SumfOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
┘
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/NegNegTOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPopV2*
T0*(
_output_shapes
:         А
█
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/ConstConst*
valueB :
         *
dtype0*?
_class5
31loc:@bidirectional_rnn/fw/fw/while/gru_cell/add_1*
_output_shapes
: 
л
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/f_accStackV2OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/Const*
	elem_type0*

stack_name *?
_class5
31loc:@bidirectional_rnn/fw/fw/while/gru_cell/add_1*
_output_shapes
:
╣
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╚
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPushV2StackPushV2OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/Enter,bidirectional_rnn/fw/fw/while/gru_cell/add_1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
Ш
TOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPopV2
StackPopV2ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
█
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPopV2/EnterEnterOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
н
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv_1RealDivIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/NegSOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv/Enter*
T0*(
_output_shapes
:         А
│
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv_2RealDivOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv_1SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv/Enter*
T0*(
_output_shapes
:         А
┤
IOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/mulMul^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/tuple/control_dependencyOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:         А
╝
KOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Sum_1SumIOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/mul]OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
е
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Reshape_1ReshapeKOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Sum_1MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
А
VOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/tuple/group_depsNoOpN^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/ReshapeP^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Reshape_1
з
^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/tuple/control_dependencyIdentityMOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/ReshapeW^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/tuple/group_deps*
T0*`
_classV
TRloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Reshape*(
_output_shapes
:         А
Ы
`OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/tuple/control_dependency_1IdentityOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Reshape_1W^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/tuple/group_deps*
T0*b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Reshape_1*
_output_shapes
: 
■
OptimizeLoss/gradients/AddNAddN]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependency_1^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/tuple/control_dependency*
N*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1*(
_output_shapes
:         А
╕
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/ShapeShape,bidirectional_rnn/fw/fw/while/gru_cell/mul_1*
T0*
out_type0*
_output_shapes
:
║
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Shape_1Shape,bidirectional_rnn/fw/fw/while/gru_cell/mul_2*
T0*
out_type0*
_output_shapes
:
Ж
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsgOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
О
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*_
_classU
SQloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Shape*
_output_shapes
: 
ё
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/f_accStackV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *_
_classU
SQloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Shape*
_output_shapes
:
▀
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/EnterEnterbOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
■
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/EnterLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Shape^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
о
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
Б
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterbOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Т
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/Const_1Const*
valueB :
         *
dtype0*a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Shape_1*
_output_shapes
: 
ў
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1StackV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Shape_1*
_output_shapes
:
у
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/Enter_1EnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Д
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/Enter_1NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Shape_1^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
▓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
Е
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
М
JOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/SumSumOptimizeLoss/gradients/AddN\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
╫
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/ReshapeReshapeJOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/SumgOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
Р
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Sum_1SumOptimizeLoss/gradients/AddN^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
▌
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Reshape_1ReshapeLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Sum_1iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
Г
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/tuple/group_depsNoOpO^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/ReshapeQ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Reshape_1
л
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/tuple/control_dependencyIdentityNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/ReshapeX^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/tuple/group_deps*
T0*a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Reshape*(
_output_shapes
:         А
▒
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/tuple/control_dependency_1IdentityPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Reshape_1X^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/tuple/group_deps*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Reshape_1*(
_output_shapes
:         А
╝
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/ShapeShape.bidirectional_rnn/fw/fw/while/gru_cell/split:1*
T0*
out_type0*
_output_shapes
:
╕
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Shape_1Shape(bidirectional_rnn/fw/fw/while/Identity_3*
T0*
out_type0*
_output_shapes
:
М
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
Т
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Shape*
_output_shapes
: 
ў
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Shape*
_output_shapes
:
у
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Д
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/EnterNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Shape^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
▓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
Е
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Ц
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
         *
dtype0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Shape_1*
_output_shapes
: 
¤
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Shape_1*
_output_shapes
:
ч
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1EnterfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
К
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Shape_1^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
╢
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
Й
qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
┴
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mulMul_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/tuple/control_dependencyXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:         А
┴
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/SumSumLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
▌
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/ReshapeReshapeLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/SumiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
─
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1MulYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/StackPopV2_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
р
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/ConstConst*
valueB :
         *
dtype0*?
_class5
31loc:@bidirectional_rnn/fw/fw/while/gru_cell/split*
_output_shapes
: 
╡
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/f_accStackV2TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/Const*
	elem_type0*

stack_name *?
_class5
31loc:@bidirectional_rnn/fw/fw/while/gru_cell/split*
_output_shapes
:
├
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/EnterEnterTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╥
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/StackPushV2StackPushV2TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/Enter.bidirectional_rnn/fw/fw/while/gru_cell/split:1^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
а
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/StackPopV2
StackPopV2_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
х
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/StackPopV2/EnterEnterTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╟
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Sum_1SumNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
у
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Reshape_1ReshapeNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Sum_1kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
Й
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/tuple/group_depsNoOpQ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/ReshapeS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Reshape_1
│
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/tuple/control_dependencyIdentityPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/ReshapeZ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Reshape*(
_output_shapes
:         А
╣
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/tuple/control_dependency_1IdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Reshape_1Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/tuple/group_deps*
T0*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Reshape_1*(
_output_shapes
:         А
╕
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/ShapeShape*bidirectional_rnn/fw/fw/while/gru_cell/sub*
T0*
out_type0*
_output_shapes
:
╗
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Shape_1Shape+bidirectional_rnn/fw/fw/while/gru_cell/Tanh*
T0*
out_type0*
_output_shapes
:
М
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
Т
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Shape*
_output_shapes
: 
ў
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Shape*
_output_shapes
:
у
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Д
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/EnterNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Shape^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
▓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
Е
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Ц
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/Const_1Const*
valueB :
         *
dtype0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Shape_1*
_output_shapes
: 
¤
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Shape_1*
_output_shapes
:
ч
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1EnterfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
К
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Shape_1^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
╢
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
Й
qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
┬
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mulMulaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/tuple/control_dependency_1WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/StackPopV2*
T0*(
_output_shapes
:         А
▌
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/ConstConst*
valueB :
         *
dtype0*>
_class4
20loc:@bidirectional_rnn/fw/fw/while/gru_cell/Tanh*
_output_shapes
: 
░
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/f_accStackV2ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/Const*
	elem_type0*

stack_name *>
_class4
20loc:@bidirectional_rnn/fw/fw/while/gru_cell/Tanh*
_output_shapes
:
┐
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/EnterEnterROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╦
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/StackPushV2StackPushV2ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/Enter+bidirectional_rnn/fw/fw/while/gru_cell/Tanh^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
Ь
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/StackPopV2
StackPopV2]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
с
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/StackPopV2/EnterEnterROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
┴
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/SumSumLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
▌
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/ReshapeReshapeLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/SumiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
╞
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1MulYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/StackPopV2aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
▐
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/ConstConst*
valueB :
         *
dtype0*=
_class3
1/loc:@bidirectional_rnn/fw/fw/while/gru_cell/sub*
_output_shapes
: 
│
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/f_accStackV2TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/Const*
	elem_type0*

stack_name *=
_class3
1/loc:@bidirectional_rnn/fw/fw/while/gru_cell/sub*
_output_shapes
:
├
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/EnterEnterTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╬
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/StackPushV2StackPushV2TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/Enter*bidirectional_rnn/fw/fw/while/gru_cell/sub^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
а
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/StackPopV2
StackPopV2_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
х
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/StackPopV2/EnterEnterTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╟
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Sum_1SumNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
у
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Reshape_1ReshapeNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Sum_1kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
Й
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/tuple/group_depsNoOpQ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/ReshapeS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Reshape_1
│
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/tuple/control_dependencyIdentityPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/ReshapeZ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Reshape*(
_output_shapes
:         А
╣
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/tuple/control_dependency_1IdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Reshape_1Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/tuple/group_deps*
T0*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Reshape_1*(
_output_shapes
:         А
А
OptimizeLoss/gradients/AddN_1AddN]OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependency_1^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/tuple/control_dependency*
N*
T0*^
_classT
RPloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1*(
_output_shapes
:         А
║
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/ShapeShape,bidirectional_rnn/fw/fw/while/gru_cell/mul_4*
T0*
out_type0*
_output_shapes
:
╝
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Shape_1Shape,bidirectional_rnn/fw/fw/while/gru_cell/mul_5*
T0*
out_type0*
_output_shapes
:
М
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
Т
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Shape*
_output_shapes
: 
ў
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Shape*
_output_shapes
:
у
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Ж
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/EnterNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Shape^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
:
┤
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
Е
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Ц
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
         *
dtype0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Shape_1*
_output_shapes
: 
¤
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Shape_1*
_output_shapes
:
ч
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/Enter_1EnterfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
М
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/Enter_1POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Shape_1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
:
╕
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
Й
qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Т
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/SumSumOptimizeLoss/gradients/AddN_1^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
▌
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/ReshapeReshapeLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/SumiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
Ц
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Sum_1SumOptimizeLoss/gradients/AddN_1`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
у
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Reshape_1ReshapeNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Sum_1kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
Й
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/tuple/group_depsNoOpQ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/ReshapeS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Reshape_1
│
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/tuple/control_dependencyIdentityPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/ReshapeZ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Reshape*(
_output_shapes
:         А
╣
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/tuple/control_dependency_1IdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Reshape_1Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/tuple/group_deps*
T0*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Reshape_1*(
_output_shapes
:         А
м
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/ShapeConst^OptimizeLoss/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
╝
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Shape_1Shape.bidirectional_rnn/fw/fw/while/gru_cell/split:1*
T0*
out_type0*
_output_shapes
:
щ
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgsBroadcastGradientArgsLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/ShapegOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2*
T0*2
_output_shapes 
:         :         
Р
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Shape_1*
_output_shapes
: 
є
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/f_accStackV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Shape_1*
_output_shapes
:
▀
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/EnterEnterbOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
А
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/StackPushV2StackPushV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/EnterNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Shape_1^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
о
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2
StackPopV2mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
Б
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2/EnterEnterbOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╥
JOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/SumSumaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/tuple/control_dependency\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
в
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/ReshapeReshapeJOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/SumLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
╓
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Sum_1SumaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/tuple/control_dependency^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
┬
JOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/NegNegLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Sum_1*
T0*
_output_shapes
:
┘
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Reshape_1ReshapeJOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/NeggOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
Г
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/tuple/group_depsNoOpO^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/ReshapeQ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Reshape_1
Щ
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/tuple/control_dependencyIdentityNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/ReshapeX^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/tuple/group_deps*
T0*a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Reshape*
_output_shapes
: 
▒
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/tuple/control_dependency_1IdentityPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Reshape_1X^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/tuple/group_deps*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Reshape_1*(
_output_shapes
:         А
═
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Tanh_grad/TanhGradTanhGradWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/StackPopV2cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
╛
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/ShapeShape0bidirectional_rnn/fw/fw/while/gru_cell/split_1:1*
T0*
out_type0*
_output_shapes
:
╕
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Shape_1Shape(bidirectional_rnn/bw/bw/while/Identity_3*
T0*
out_type0*
_output_shapes
:
М
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
Т
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Shape*
_output_shapes
: 
ў
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/f_accStackV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Shape*
_output_shapes
:
у
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Ж
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/EnterNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Shape^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
:
┤
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
Е
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Ц
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/Const_1Const*
valueB :
         *
dtype0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Shape_1*
_output_shapes
: 
¤
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1StackV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Shape_1*
_output_shapes
:
ч
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/Enter_1EnterfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
М
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/Enter_1POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Shape_1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
:
╕
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
Й
qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
├
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mulMulaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/tuple/control_dependencyXOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:         А
┴
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/SumSumLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
▌
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/ReshapeReshapeLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/SumiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
╞
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1MulYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/StackPopV2aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:         А
т
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/ConstConst*
valueB :
         *
dtype0*A
_class7
53loc:@bidirectional_rnn/fw/fw/while/gru_cell/split_1*
_output_shapes
: 
╖
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/f_accStackV2TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/Const*
	elem_type0*

stack_name *A
_class7
53loc:@bidirectional_rnn/fw/fw/while/gru_cell/split_1*
_output_shapes
:
├
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/EnterEnterTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╓
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/StackPushV2StackPushV2TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/Enter0bidirectional_rnn/fw/fw/while/gru_cell/split_1:1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
в
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/StackPopV2
StackPopV2_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
х
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/StackPopV2/EnterEnterTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╟
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Sum_1SumNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
у
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Reshape_1ReshapeNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Sum_1kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
Й
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/tuple/group_depsNoOpQ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/ReshapeS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Reshape_1
│
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/tuple/control_dependencyIdentityPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/ReshapeZ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Reshape*(
_output_shapes
:         А
╣
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/tuple/control_dependency_1IdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Reshape_1Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/tuple/group_deps*
T0*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Reshape_1*(
_output_shapes
:         А
║
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/ShapeShape,bidirectional_rnn/fw/fw/while/gru_cell/sub_1*
T0*
out_type0*
_output_shapes
:
╜
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Shape_1Shape-bidirectional_rnn/fw/fw/while/gru_cell/Tanh_1*
T0*
out_type0*
_output_shapes
:
М
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
Т
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Shape*
_output_shapes
: 
ў
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/f_accStackV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Shape*
_output_shapes
:
у
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Ж
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/EnterNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Shape^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
:
┤
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
Е
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Ц
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/Const_1Const*
valueB :
         *
dtype0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Shape_1*
_output_shapes
: 
¤
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1StackV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Shape_1*
_output_shapes
:
ч
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/Enter_1EnterfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
М
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/Enter_1POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Shape_1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
:
╕
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
Й
qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
─
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mulMulcOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/tuple/control_dependency_1WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/StackPopV2*
T0*(
_output_shapes
:         А
▀
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/ConstConst*
valueB :
         *
dtype0*@
_class6
42loc:@bidirectional_rnn/fw/fw/while/gru_cell/Tanh_1*
_output_shapes
: 
▓
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/f_accStackV2ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/Const*
	elem_type0*

stack_name *@
_class6
42loc:@bidirectional_rnn/fw/fw/while/gru_cell/Tanh_1*
_output_shapes
:
┐
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/EnterEnterROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╧
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/StackPushV2StackPushV2ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/Enter-bidirectional_rnn/fw/fw/while/gru_cell/Tanh_1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
Ю
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/StackPopV2
StackPopV2]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
с
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/StackPopV2/EnterEnterROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
┴
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/SumSumLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
▌
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/ReshapeReshapeLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/SumiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
╚
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1MulYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/StackPopV2cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
р
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/ConstConst*
valueB :
         *
dtype0*?
_class5
31loc:@bidirectional_rnn/fw/fw/while/gru_cell/sub_1*
_output_shapes
: 
╡
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/f_accStackV2TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/Const*
	elem_type0*

stack_name *?
_class5
31loc:@bidirectional_rnn/fw/fw/while/gru_cell/sub_1*
_output_shapes
:
├
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/EnterEnterTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╥
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/StackPushV2StackPushV2TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/Enter,bidirectional_rnn/fw/fw/while/gru_cell/sub_1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
в
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/StackPopV2
StackPopV2_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
х
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/StackPopV2/EnterEnterTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╟
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Sum_1SumNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
у
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Reshape_1ReshapeNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Sum_1kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
Й
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/tuple/group_depsNoOpQ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/ReshapeS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Reshape_1
│
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/tuple/control_dependencyIdentityPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/ReshapeZ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/tuple/group_deps*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Reshape*(
_output_shapes
:         А
╣
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/tuple/control_dependency_1IdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Reshape_1Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/tuple/group_deps*
T0*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Reshape_1*(
_output_shapes
:         А
Ў
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1_grad/BiasAddGradBiasAddGradPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
У
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1_grad/tuple/group_depsNoOpQ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Tanh_grad/TanhGradY^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1_grad/BiasAddGrad
╗
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1_grad/tuple/control_dependencyIdentityPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Tanh_grad/TanhGrad^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Tanh_grad/TanhGrad*(
_output_shapes
:         А
└
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1_grad/tuple/control_dependency_1IdentityXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1_grad/BiasAddGrad^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1_grad/tuple/group_deps*
T0*k
_classa
_]loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1_grad/BiasAddGrad*
_output_shapes	
:А
░
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/ShapeConst^OptimizeLoss/gradients/Sub_1*
valueB *
dtype0*
_output_shapes
: 
└
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Shape_1Shape0bidirectional_rnn/fw/fw/while/gru_cell/split_1:1*
T0*
out_type0*
_output_shapes
:
я
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/ShapeiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPopV2*
T0*2
_output_shapes 
:         :         
Ф
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Shape_1*
_output_shapes
: 
∙
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/f_accStackV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Shape_1*
_output_shapes
:
у
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
И
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/EnterPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Shape_1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
:
┤
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
Е
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╓
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/SumSumaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/tuple/control_dependency^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
и
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/ReshapeReshapeLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/SumNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
┌
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Sum_1SumaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/tuple/control_dependency`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
╞
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/NegNegNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Sum_1*
T0*
_output_shapes
:
▀
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Reshape_1ReshapeLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/NegiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
Й
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/tuple/group_depsNoOpQ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/ReshapeS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Reshape_1
б
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/tuple/control_dependencyIdentityPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/ReshapeZ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Reshape*
_output_shapes
: 
╣
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/tuple/control_dependency_1IdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Reshape_1Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/tuple/group_deps*
T0*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Reshape_1*(
_output_shapes
:         А
╧
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Tanh_1_grad/TanhGradTanhGradWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/StackPopV2cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
Ў
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMulMatMuleOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1_grad/tuple/control_dependencyXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul/Enter*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:         А
├
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul/EnterEnter3bidirectional_rnn/fw/gru_cell/candidate/kernel/read*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА
ў
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1MatMul_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
АА
щ
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/ConstConst*
valueB :
         *
dtype0*B
_class8
64loc:@bidirectional_rnn/fw/fw/while/gru_cell/concat_1*
_output_shapes
: 
─
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/f_accStackV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/Const*
	elem_type0*

stack_name *B
_class8
64loc:@bidirectional_rnn/fw/fw/while/gru_cell/concat_1*
_output_shapes
:
╧
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/EnterEnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
▀
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/StackPushV2StackPushV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/Enter/bidirectional_rnn/fw/fw/while/gru_cell/concat_1^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
м
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2
StackPopV2eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
ё
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2/EnterEnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Р
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/tuple/group_depsNoOpS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMulU^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1
╜
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/tuple/control_dependencyIdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/tuple/group_deps*
T0*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul*(
_output_shapes
:         А
╗
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/tuple/control_dependency_1IdentityTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1* 
_output_shapes
:
АА
з
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
х
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/b_acc_1EnterXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/b_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes	
:А
╥
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/b_acc_2MergeZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/b_acc_1`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:А: 
О
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/SwitchSwitchZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_2*
T0*"
_output_shapes
:А:А
╔
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/AddAdd[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/Switch:1gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
я
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/NextIterationNextIterationVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/Add*
T0*
_output_shapes	
:А
у
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/b_acc_3ExitYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/Switch*
T0*
_output_shapes	
:А
°
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3_grad/BiasAddGradBiasAddGradROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Tanh_1_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
Х
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3_grad/tuple/group_depsNoOpS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Tanh_1_grad/TanhGradY^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3_grad/BiasAddGrad
┐
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3_grad/tuple/control_dependencyIdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Tanh_1_grad/TanhGrad^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3_grad/tuple/group_deps*
T0*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Tanh_1_grad/TanhGrad*(
_output_shapes
:         А
└
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3_grad/tuple/control_dependency_1IdentityXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3_grad/BiasAddGrad^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3_grad/tuple/group_deps*
T0*k
_classa
_]loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3_grad/BiasAddGrad*
_output_shapes	
:А
п
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/RankConst^OptimizeLoss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
е
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/modFloorModUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/mod/ConstPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/Rank*
T0*
_output_shapes
: 
┤
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/mod/ConstConst^OptimizeLoss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
└
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeShape/bidirectional_rnn/fw/fw/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
р
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeNShapeN]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPopV2_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPopV2_1*
N*
T0*
out_type0* 
_output_shapes
::
ч
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/ConstConst*
valueB :
         *
dtype0*B
_class8
64loc:@bidirectional_rnn/fw/fw/while/TensorArrayReadV3*
_output_shapes
: 
└
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/f_accStackV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/Const*
	elem_type0*

stack_name *B
_class8
64loc:@bidirectional_rnn/fw/fw/while/TensorArrayReadV3*
_output_shapes
:
╦
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/EnterEnterXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
█
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPushV2StackPushV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/Enter/bidirectional_rnn/fw/fw/while/TensorArrayReadV3^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
и
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPopV2
StackPopV2cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
э
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPopV2/EnterEnterXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
ф
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/Const_1Const*
valueB :
         *
dtype0*=
_class3
1/loc:@bidirectional_rnn/fw/fw/while/gru_cell/mul*
_output_shapes
: 
┐
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/f_acc_1StackV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/Const_1*
	elem_type0*

stack_name *=
_class3
1/loc:@bidirectional_rnn/fw/fw/while/gru_cell/mul*
_output_shapes
:
╧
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/Enter_1EnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/f_acc_1*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
┌
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPushV2_1StackPushV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/Enter_1*bidirectional_rnn/fw/fw/while/gru_cell/mul^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
м
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPopV2_1
StackPopV2eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
ё
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPopV2_1/EnterEnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/f_acc_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
О
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ConcatOffsetConcatOffsetOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/modROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeNTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN:1*
N* 
_output_shapes
::
╢
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/SliceSlicedOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/tuple/control_dependencyXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ConcatOffsetROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN*
T0*
Index0*0
_output_shapes
:                  
╝
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/Slice_1SlicedOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/tuple/control_dependencyZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ConcatOffset:1TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN:1*
T0*
Index0*0
_output_shapes
:                  
О
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/tuple/group_depsNoOpR^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/SliceT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/Slice_1
╗
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/tuple/control_dependencyIdentityQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/Slice]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/Slice*(
_output_shapes
:         А
┴
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/tuple/control_dependency_1IdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/Slice_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/Slice_1*(
_output_shapes
:         А
░
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/b_accConst*
valueB
АА*    *
dtype0* 
_output_shapes
:
АА
ш
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/b_acc_1EnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/b_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations * 
_output_shapes
:
АА
╘
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/b_acc_2MergeYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/b_acc_1_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
Ц
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/SwitchSwitchYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_2*
T0*,
_output_shapes
:
АА:
АА
╦
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/AddAddZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/Switch:1fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
АА
Є
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/NextIterationNextIterationUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/Add*
T0* 
_output_shapes
:
АА
ц
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/b_acc_3ExitXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/Switch*
T0* 
_output_shapes
:
АА
Ў
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMulMatMuleOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3_grad/tuple/control_dependencyXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul/Enter*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:         А
├
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul/EnterEnter3bidirectional_rnn/fw/gru_cell/candidate/kernel/read*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА
ў
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1MatMul_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/StackPopV2eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
АА
щ
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/ConstConst*
valueB :
         *
dtype0*B
_class8
64loc:@bidirectional_rnn/fw/fw/while/gru_cell/concat_3*
_output_shapes
: 
─
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/f_accStackV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/Const*
	elem_type0*

stack_name *B
_class8
64loc:@bidirectional_rnn/fw/fw/while/gru_cell/concat_3*
_output_shapes
:
╧
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/EnterEnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
с
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/StackPushV2StackPushV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/Enter/bidirectional_rnn/fw/fw/while/gru_cell/concat_3^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
о
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/StackPopV2
StackPopV2eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
ё
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/StackPopV2/EnterEnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Р
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/tuple/group_depsNoOpS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMulU^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1
╜
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/tuple/control_dependencyIdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/tuple/group_deps*
T0*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul*(
_output_shapes
:         А
╗
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/tuple/control_dependency_1IdentityTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1* 
_output_shapes
:
АА
з
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
х
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/b_acc_1EnterXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/b_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes	
:А
╥
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/b_acc_2MergeZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/b_acc_1`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:А: 
О
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/SwitchSwitchZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_6*
T0*"
_output_shapes
:А:А
╔
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/AddAdd[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/Switch:1gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
я
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/NextIterationNextIterationVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/Add*
T0*
_output_shapes	
:А
у
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/b_acc_3ExitYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/Switch*
T0*
_output_shapes	
:А
╕
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/ShapeShape,bidirectional_rnn/fw/fw/while/gru_cell/split*
T0*
out_type0*
_output_shapes
:
╢
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Shape_1Shape(bidirectional_rnn/fw/fw/while/Identity_3*
T0*
out_type0*
_output_shapes
:
Ж
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
О
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*_
_classU
SQloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Shape*
_output_shapes
: 
ё
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/f_accStackV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *_
_classU
SQloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Shape*
_output_shapes
:
▀
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/EnterEnterbOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
■
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/EnterLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Shape^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
о
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
Б
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterbOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Т
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
         *
dtype0*a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Shape_1*
_output_shapes
: 
ў
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Shape_1*
_output_shapes
:
у
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1EnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Д
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Shape_1^OptimizeLoss/gradients/Add*
T0*
swap_memory( *
_output_shapes
:
▓
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*
_output_shapes
:
Е
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╞
JOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mulMulfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/tuple/control_dependency_1XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:         А
╗
JOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/SumSumJOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
╫
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/ReshapeReshapeJOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/SumgOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
╟
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1MulWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/StackPopV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
▐
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/ConstConst*
valueB :
         *
dtype0*?
_class5
31loc:@bidirectional_rnn/fw/fw/while/gru_cell/split*
_output_shapes
: 
▒
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/f_accStackV2ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/Const*
	elem_type0*

stack_name *?
_class5
31loc:@bidirectional_rnn/fw/fw/while/gru_cell/split*
_output_shapes
:
┐
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/EnterEnterROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╠
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/StackPushV2StackPushV2ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/Enter,bidirectional_rnn/fw/fw/while/gru_cell/split^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
Ь
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/StackPopV2
StackPopV2]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
с
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/StackPopV2/EnterEnterROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
┴
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Sum_1SumLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
▌
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Reshape_1ReshapeLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Sum_1iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
Г
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/tuple/group_depsNoOpO^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/ReshapeQ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Reshape_1
л
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/tuple/control_dependencyIdentityNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/ReshapeX^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/tuple/group_deps*
T0*a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Reshape*(
_output_shapes
:         А
▒
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/tuple/control_dependency_1IdentityPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Reshape_1X^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/tuple/group_deps*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Reshape_1*(
_output_shapes
:         А
▒
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/RankConst^OptimizeLoss/gradients/Sub_1*
value	B :*
dtype0*
_output_shapes
: 
е
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/modFloorModUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/mod/ConstPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/Rank*
T0*
_output_shapes
: 
╢
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/mod/ConstConst^OptimizeLoss/gradients/Sub_1*
value	B :*
dtype0*
_output_shapes
: 
└
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeShape/bidirectional_rnn/bw/bw/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
р
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeNShapeN]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPopV2_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPopV2_1*
N*
T0*
out_type0* 
_output_shapes
::
ч
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/ConstConst*
valueB :
         *
dtype0*B
_class8
64loc:@bidirectional_rnn/bw/bw/while/TensorArrayReadV3*
_output_shapes
: 
└
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/f_accStackV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/Const*
	elem_type0*

stack_name *B
_class8
64loc:@bidirectional_rnn/bw/bw/while/TensorArrayReadV3*
_output_shapes
:
╦
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/EnterEnterXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
▌
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPushV2StackPushV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/Enter/bidirectional_rnn/bw/bw/while/TensorArrayReadV3^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
к
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPopV2
StackPopV2cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
э
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPopV2/EnterEnterXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
ц
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/Const_1Const*
valueB :
         *
dtype0*?
_class5
31loc:@bidirectional_rnn/fw/fw/while/gru_cell/mul_3*
_output_shapes
: 
┴
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/f_acc_1StackV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/Const_1*
	elem_type0*

stack_name *?
_class5
31loc:@bidirectional_rnn/fw/fw/while/gru_cell/mul_3*
_output_shapes
:
╧
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/Enter_1EnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/f_acc_1*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
▐
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPushV2_1StackPushV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/Enter_1,bidirectional_rnn/fw/fw/while/gru_cell/mul_3^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
о
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPopV2_1
StackPopV2eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
ё
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPopV2_1/EnterEnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/f_acc_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
О
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ConcatOffsetConcatOffsetOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/modROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeNTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN:1*
N* 
_output_shapes
::
╢
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/SliceSlicedOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/tuple/control_dependencyXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ConcatOffsetROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN*
T0*
Index0*0
_output_shapes
:                  
╝
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/Slice_1SlicedOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/tuple/control_dependencyZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ConcatOffset:1TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN:1*
T0*
Index0*0
_output_shapes
:                  
О
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/tuple/group_depsNoOpR^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/SliceT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/Slice_1
╗
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/tuple/control_dependencyIdentityQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/Slice]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/Slice*(
_output_shapes
:         А
┴
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/tuple/control_dependency_1IdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/Slice_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/Slice_1*(
_output_shapes
:         А
░
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/b_accConst*
valueB
АА*    *
dtype0* 
_output_shapes
:
АА
ш
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/b_acc_1EnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/b_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations * 
_output_shapes
:
АА
╘
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/b_acc_2MergeYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/b_acc_1_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
Ц
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/SwitchSwitchYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_6*
T0*,
_output_shapes
:
АА:
АА
╦
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/AddAddZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/Switch:1fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
АА
Є
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/NextIterationNextIterationUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/Add*
T0* 
_output_shapes
:
АА
ц
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/b_acc_3ExitXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/Switch*
T0* 
_output_shapes
:
АА
√
OptimizeLoss/gradients/AddN_2AddNZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/b_acc_3ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter_grad/b_acc_3*
N*
T0*m
_classc
a_loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/b_acc_3*
_output_shapes	
:А
М
OptimizeLoss/gradients/AddN_3AddNaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/tuple/control_dependencyaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/tuple/control_dependency_1*
N*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Reshape*(
_output_shapes
:         А
·
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/split_grad/concatConcatV2_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/tuple/control_dependencyOptimizeLoss/gradients/AddN_3UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/split_grad/concat/Const*
N*
T0*

Tidx0*(
_output_shapes
:         А
┤
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/split_grad/concat/ConstConst^OptimizeLoss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
╝
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/ShapeShape.bidirectional_rnn/fw/fw/while/gru_cell/split_1*
T0*
out_type0*
_output_shapes
:
╕
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Shape_1Shape(bidirectional_rnn/bw/bw/while/Identity_3*
T0*
out_type0*
_output_shapes
:
М
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:         :         
Т
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/ConstConst*
valueB :
         *
dtype0*a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Shape*
_output_shapes
: 
ў
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/f_accStackV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/Const*
	elem_type0*

stack_name *a
_classW
USloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Shape*
_output_shapes
:
у
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Ж
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/EnterNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Shape^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
:
┤
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
Е
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2/EnterEnterdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Ц
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/Const_1Const*
valueB :
         *
dtype0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Shape_1*
_output_shapes
: 
¤
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1StackV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Shape_1*
_output_shapes
:
ч
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/Enter_1EnterfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
М
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/Enter_1POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Shape_1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *
_output_shapes
:
╕
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*
_output_shapes
:
Й
qOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╚
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mulMulfOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/tuple/control_dependency_1XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:         А
┴
LOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/SumSumLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
▌
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/ReshapeReshapeLOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/SumiOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:                  
╦
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1MulYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/StackPopV2fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:         А
т
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/ConstConst*
valueB :
         *
dtype0*A
_class7
53loc:@bidirectional_rnn/fw/fw/while/gru_cell/split_1*
_output_shapes
: 
╖
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/f_accStackV2TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/Const*
	elem_type0*

stack_name *A
_class7
53loc:@bidirectional_rnn/fw/fw/while/gru_cell/split_1*
_output_shapes
:
├
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/EnterEnterTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╘
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/StackPushV2StackPushV2TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/Enter.bidirectional_rnn/fw/fw/while/gru_cell/split_1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
в
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/StackPopV2
StackPopV2_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
х
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/StackPopV2/EnterEnterTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
╟
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Sum_1SumNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
у
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Reshape_1ReshapeNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Sum_1kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:                  
Й
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/tuple/group_depsNoOpQ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/ReshapeS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Reshape_1
│
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/tuple/control_dependencyIdentityPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/ReshapeZ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/tuple/group_deps*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Reshape*(
_output_shapes
:         А
╣
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/tuple/control_dependency_1IdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Reshape_1Z^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/tuple/group_deps*
T0*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Reshape_1*(
_output_shapes
:         А
¤
OptimizeLoss/gradients/AddN_4AddNYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/b_acc_3YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter_grad/b_acc_3*
N*
T0*l
_classb
`^loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/b_acc_3* 
_output_shapes
:
АА
╠
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGradSigmoidGradaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/split_grad/concat*
T0*(
_output_shapes
:         А
ъ
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/ConstConst*
valueB :
         *
dtype0*A
_class7
53loc:@bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid*
_output_shapes
: 
╟
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/f_accStackV2\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/Const*
	elem_type0*

stack_name *A
_class7
53loc:@bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid*
_output_shapes
:
╙
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/EnterEnter\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
т
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/StackPushV2StackPushV2\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/Enter.bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
░
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2
StackPopV2gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
ї
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2/EnterEnter\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
О
OptimizeLoss/gradients/AddN_5AddNaOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/tuple/control_dependencycOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/tuple/control_dependency_1*
N*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Reshape*(
_output_shapes
:         А
А
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/split_1_grad/concatConcatV2aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/tuple/control_dependencyOptimizeLoss/gradients/AddN_5WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/split_1_grad/concat/Const*
N*
T0*

Tidx0*(
_output_shapes
:         А
╕
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/split_1_grad/concat/ConstConst^OptimizeLoss/gradients/Sub_1*
value	B :*
dtype0*
_output_shapes
: 
·
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_grad/BiasAddGradBiasAddGradVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
Х
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_grad/tuple/group_depsNoOpW^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGradW^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_grad/BiasAddGrad
├
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_grad/tuple/control_dependencyIdentityVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad\^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_grad/tuple/group_deps*
T0*i
_class_
][loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad*(
_output_shapes
:         А
╕
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_grad/tuple/control_dependency_1IdentityVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_grad/BiasAddGrad\^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_grad/tuple/group_deps*
T0*i
_class_
][loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
╥
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradcOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPopV2QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/split_1_grad/concat*
T0*(
_output_shapes
:         А
ю
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/ConstConst*
valueB :
         *
dtype0*C
_class9
75loc:@bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1*
_output_shapes
: 
═
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/f_accStackV2^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/Const*
	elem_type0*

stack_name *C
_class9
75loc:@bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1*
_output_shapes
:
╫
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/EnterEnter^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
ъ
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPushV2StackPushV2^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/Enter0bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
╢
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPopV2
StackPopV2iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
∙
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPopV2/EnterEnter^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Ё
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMulMatMulcOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_grad/tuple/control_dependencyVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul/Enter*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:         А
╜
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul/EnterEnter/bidirectional_rnn/fw/gru_cell/gates/kernel/read*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА
ё
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1MatMul]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/StackPopV2cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
АА
х
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/ConstConst*
valueB :
         *
dtype0*@
_class6
42loc:@bidirectional_rnn/fw/fw/while/gru_cell/concat*
_output_shapes
: 
╛
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/f_accStackV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/Const*
	elem_type0*

stack_name *@
_class6
42loc:@bidirectional_rnn/fw/fw/while/gru_cell/concat*
_output_shapes
:
╦
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/EnterEnterXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/f_acc*
T0*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
┘
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/Enter-bidirectional_rnn/fw/fw/while/gru_cell/concat^OptimizeLoss/gradients/Add*
T0*
swap_memory( *(
_output_shapes
:         А
и
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub*
	elem_type0*(
_output_shapes
:         А
э
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
К
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/tuple/group_depsNoOpQ^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMulS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1
╡
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/tuple/control_dependencyIdentityPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/tuple/group_deps*
T0*c
_classY
WUloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul*(
_output_shapes
:         А
│
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/tuple/control_dependency_1IdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/tuple/group_deps*
T0*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1* 
_output_shapes
:
АА
е
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
с
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/b_acc_1EnterVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/b_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes	
:А
╠
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/b_acc_2MergeXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/b_acc_1^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:А: 
К
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/SwitchSwitchXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_2*
T0*"
_output_shapes
:А:А
├
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/AddAddYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/Switch:1eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
ы
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/NextIterationNextIterationTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/Add*
T0*
_output_shapes	
:А
▀
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/b_acc_3ExitWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:А
■
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2_grad/BiasAddGradBiasAddGradXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
Ы
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2_grad/tuple/group_depsNoOpY^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGradY^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2_grad/BiasAddGrad
╦
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2_grad/tuple/control_dependencyIdentityXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2_grad/tuple/group_deps*
T0*k
_classa
_]loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad*(
_output_shapes
:         А
└
gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2_grad/tuple/control_dependency_1IdentityXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2_grad/BiasAddGrad^^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2_grad/tuple/group_deps*
T0*k
_classa
_]loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2_grad/BiasAddGrad*
_output_shapes	
:А
н
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/RankConst^OptimizeLoss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
Я
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/modFloorModSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/mod/ConstNOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/Rank*
T0*
_output_shapes
: 
▓
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/mod/ConstConst^OptimizeLoss/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
╛
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/ShapeShape/bidirectional_rnn/fw/fw/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
╫
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/ShapeNShapeN]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPopV2XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2*
N*
T0*
out_type0* 
_output_shapes
::
Ж
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/ConcatOffsetConcatOffsetMOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/modPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/ShapeNROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
о
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/SliceSlicebOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/tuple/control_dependencyVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/ConcatOffsetPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/ShapeN*
T0*
Index0*0
_output_shapes
:                  
┤
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/Slice_1SlicebOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/tuple/control_dependencyXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/ConcatOffset:1ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/ShapeN:1*
T0*
Index0*0
_output_shapes
:                  
И
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/tuple/group_depsNoOpP^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/SliceR^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/Slice_1
│
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/tuple/control_dependencyIdentityOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/Slice[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/tuple/group_deps*
T0*b
_classX
VTloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/Slice*(
_output_shapes
:         А
╣
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/tuple/control_dependency_1IdentityQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/Slice_1[^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/Slice_1*(
_output_shapes
:         А
о
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/b_accConst*
valueB
АА*    *
dtype0* 
_output_shapes
:
АА
ф
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/b_acc_1EnterUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/b_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations * 
_output_shapes
:
АА
╬
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/b_acc_2MergeWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/b_acc_1]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
Т
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/SwitchSwitchWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_2*
T0*,
_output_shapes
:
АА:
АА
┼
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/AddAddXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/Switch:1dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
АА
ю
]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/NextIterationNextIterationSOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/Add*
T0* 
_output_shapes
:
АА
т
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/b_acc_3ExitVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
АА
Ў
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMulMatMuleOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2_grad/tuple/control_dependencyXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul/Enter*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:         А
┐
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul/EnterEnter/bidirectional_rnn/fw/gru_cell/gates/kernel/read*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА
ў
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1MatMul_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/StackPopV2eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
АА
щ
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/ConstConst*
valueB :
         *
dtype0*B
_class8
64loc:@bidirectional_rnn/fw/fw/while/gru_cell/concat_2*
_output_shapes
: 
─
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/f_accStackV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/Const*
	elem_type0*

stack_name *B
_class8
64loc:@bidirectional_rnn/fw/fw/while/gru_cell/concat_2*
_output_shapes
:
╧
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/EnterEnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/f_acc*
T0*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
с
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/StackPushV2StackPushV2ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/Enter/bidirectional_rnn/fw/fw/while/gru_cell/concat_2^OptimizeLoss/gradients/Add_1*
T0*
swap_memory( *(
_output_shapes
:         А
о
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/StackPopV2
StackPopV2eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/StackPopV2/Enter^OptimizeLoss/gradients/Sub_1*
	elem_type0*(
_output_shapes
:         А
ё
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/StackPopV2/EnterEnterZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/f_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Р
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/tuple/group_depsNoOpS^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMulU^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1
╜
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/tuple/control_dependencyIdentityROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/tuple/group_deps*
T0*e
_class[
YWloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul*(
_output_shapes
:         А
╗
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/tuple/control_dependency_1IdentityTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1* 
_output_shapes
:
АА
з
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
х
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/b_acc_1EnterXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/b_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes	
:А
╥
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/b_acc_2MergeZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/b_acc_1`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:А: 
О
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/SwitchSwitchZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_6*
T0*"
_output_shapes
:А:А
╔
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/AddAdd[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/Switch:1gOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
я
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/NextIterationNextIterationVOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/Add*
T0*
_output_shapes	
:А
у
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/b_acc_3ExitYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/Switch*
T0*
_output_shapes	
:А
С
OptimizeLoss/gradients/AddN_6AddNdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/tuple/control_dependencybOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/tuple/control_dependency*
N*
T0*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/Slice*(
_output_shapes
:         А
Ч
mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3sOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnteruOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^OptimizeLoss/gradients/Sub*"
sourceOptimizeLoss/gradients*H
_class>
<:loc:@bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter*
_output_shapes

:: 
Ф
sOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter%bidirectional_rnn/fw/fw/TensorArray_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *H
_class>
<:loc:@bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter*
_output_shapes
:
┐
uOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterRbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant(*
parallel_iterations *H
_class>
<:loc:@bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter*
_output_shapes
: 
╟
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityuOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1n^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*H
_class>
<:loc:@bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter*
_output_shapes
: 
Ы
oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3mOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3zOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2OptimizeLoss/gradients/AddN_6iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
╩
OptimizeLoss/gradients/AddN_7AddN[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependencycOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/tuple/control_dependency_1aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/tuple/control_dependency_1dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/tuple/control_dependency_1*
N*
T0*\
_classR
PNloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select*(
_output_shapes
:         А
▒
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/RankConst^OptimizeLoss/gradients/Sub_1*
value	B :*
dtype0*
_output_shapes
: 
е
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/modFloorModUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/mod/ConstPOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/Rank*
T0*
_output_shapes
: 
╢
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/mod/ConstConst^OptimizeLoss/gradients/Sub_1*
value	B :*
dtype0*
_output_shapes
: 
└
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/ShapeShape/bidirectional_rnn/bw/bw/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
┘
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/ShapeNShapeN]OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPopV2XOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2*
N*
T0*
out_type0* 
_output_shapes
::
О
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/ConcatOffsetConcatOffsetOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/modROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/ShapeNTOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/ShapeN:1*
N* 
_output_shapes
::
╢
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/SliceSlicedOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/tuple/control_dependencyXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/ConcatOffsetROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/ShapeN*
T0*
Index0*0
_output_shapes
:                  
╝
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/Slice_1SlicedOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/tuple/control_dependencyZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/ConcatOffset:1TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/ShapeN:1*
T0*
Index0*0
_output_shapes
:                  
О
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/tuple/group_depsNoOpR^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/SliceT^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/Slice_1
╗
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/tuple/control_dependencyIdentityQOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/Slice]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/Slice*(
_output_shapes
:         А
┴
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/tuple/control_dependency_1IdentitySOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/Slice_1]^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/Slice_1*(
_output_shapes
:         А
░
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/b_accConst*
valueB
АА*    *
dtype0* 
_output_shapes
:
АА
ш
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/b_acc_1EnterWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/b_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations * 
_output_shapes
:
АА
╘
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/b_acc_2MergeYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/b_acc_1_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
Ц
XOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/SwitchSwitchYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/b_acc_2 OptimizeLoss/gradients/b_count_6*
T0*,
_output_shapes
:
АА:
АА
╦
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/AddAddZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/Switch:1fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
АА
Є
_OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/NextIterationNextIterationUOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/Add*
T0* 
_output_shapes
:
АА
ц
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/b_acc_3ExitXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/Switch*
T0* 
_output_shapes
:
АА
ў
OptimizeLoss/gradients/AddN_8AddNXOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/b_acc_3ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter_grad/b_acc_3*
N*
T0*k
_classa
_]loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes	
:А
Ю
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
т
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterYOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
╨
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
Ж
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2 OptimizeLoss/gradients/b_count_2*
T0*
_output_shapes
: : 
╬
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/AddAdd\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/Switch:1oOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
ь
aOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
р
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
╡
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Switch_3_grad_1/NextIterationNextIterationOptimizeLoss/gradients/AddN_7*
T0*(
_output_shapes
:         А
У
OptimizeLoss/gradients/AddN_9AddNdOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/tuple/control_dependencydOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/tuple/control_dependency*
N*
T0*d
_classZ
XVloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/Slice*(
_output_shapes
:         А
Щ
mOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3sOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnteruOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^OptimizeLoss/gradients/Sub_1*"
sourceOptimizeLoss/gradients*H
_class>
<:loc:@bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
_output_shapes

:: 
Ф
sOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter%bidirectional_rnn/bw/bw/TensorArray_1*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *H
_class>
<:loc:@bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
_output_shapes
:
┐
uOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterRbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant(*
parallel_iterations *H
_class>
<:loc:@bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
_output_shapes
: 
╟
iOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityuOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1n^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*H
_class>
<:loc:@bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
_output_shapes
: 
Ы
oOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3mOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3zOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2OptimizeLoss/gradients/AddN_9iOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
╧
OptimizeLoss/gradients/AddN_10AddN[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependencycOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/tuple/control_dependency_1cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/tuple/control_dependency_1fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/tuple/control_dependency_1*
N*
T0*\
_classR
PNloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select*(
_output_shapes
:         А
·
OptimizeLoss/gradients/AddN_11AddNWOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/b_acc_3YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter_grad/b_acc_3*
N*
T0*j
_class`
^\loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/b_acc_3* 
_output_shapes
:
АА
ж
РOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3%bidirectional_rnn/fw/fw/TensorArray_1[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*"
sourceOptimizeLoss/gradients*8
_class.
,*loc:@bidirectional_rnn/fw/fw/TensorArray_1*
_output_shapes

:: 
х
МOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3С^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/fw/TensorArray_1*
_output_shapes
: 
м
ВOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3РOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV30bidirectional_rnn/fw/fw/TensorArrayUnstack/rangeМOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
element_shape:*
_output_shapes
:
ы
OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOp\^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Г^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
ў
ЗOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityВOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3А^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*Ш
_classН
КЗloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*5
_output_shapes#
!:                  А
З
ЙOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3А^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*n
_classd
b`loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
Ю
YOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
т
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterYOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*R

frame_nameDBOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
╨
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
Ж
ZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2 OptimizeLoss/gradients/b_count_6*
T0*
_output_shapes
: : 
╬
WOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/AddAdd\OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/Switch:1oOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
ь
aOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationWOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
р
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitZOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
╢
ROptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Switch_3_grad_1/NextIterationNextIterationOptimizeLoss/gradients/AddN_10*
T0*(
_output_shapes
:         А
ж
РOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3%bidirectional_rnn/bw/bw/TensorArray_1[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*"
sourceOptimizeLoss/gradients*8
_class.
,*loc:@bidirectional_rnn/bw/bw/TensorArray_1*
_output_shapes

:: 
х
МOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3С^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/bw/TensorArray_1*
_output_shapes
: 
м
ВOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3РOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV30bidirectional_rnn/bw/bw/TensorArrayUnstack/rangeМOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
element_shape:*
_output_shapes
:
ы
OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOp\^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Г^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
ў
ЗOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityВOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3А^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*Ш
_classН
КЗloc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*5
_output_shapes#
!:                  А
З
ЙOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3А^OptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*n
_classd
b`loc:@OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
й
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_grad/InvertPermutationInvertPermutationbidirectional_rnn/fw/fw/concat*
T0*
_output_shapes
:
№
GOptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_grad/transpose	TransposeЗOptimizeLoss/gradients/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyOOptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_grad/InvertPermutation*
T0*
Tperm0*5
_output_shapes#
!:                  А
й
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/transpose_grad/InvertPermutationInvertPermutationbidirectional_rnn/bw/bw/concat*
T0*
_output_shapes
:
№
GOptimizeLoss/gradients/bidirectional_rnn/bw/bw/transpose_grad/transpose	TransposeЗOptimizeLoss/gradients/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyOOptimizeLoss/gradients/bidirectional_rnn/bw/bw/transpose_grad/InvertPermutation*
T0*
Tperm0*5
_output_shapes#
!:                  А
й
POptimizeLoss/gradients/bidirectional_rnn/bw/ReverseSequence_grad/ReverseSequenceReverseSequenceGOptimizeLoss/gradients/bidirectional_rnn/bw/bw/transpose_grad/transposeIteratorGetNext*
seq_dim*
	batch_dim *
T0*

Tlen0	*5
_output_shapes#
!:                  А
ц
OptimizeLoss/gradients/AddN_12AddNGOptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_grad/transposePOptimizeLoss/gradients/bidirectional_rnn/bw/ReverseSequence_grad/ReverseSequence*
N*
T0*Z
_classP
NLloc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/transpose_grad/transpose*5
_output_shapes#
!:                  А
и
2OptimizeLoss/gradients/embedding_lookup_grad/ShapeConst*%
valueB	"▓       А       *
dtype0	*
_class
loc:@Variable*
_output_shapes
:
┴
4OptimizeLoss/gradients/embedding_lookup_grad/ToInt32Cast2OptimizeLoss/gradients/embedding_lookup_grad/Shape*

SrcT0	*

DstT0*
_class
loc:@Variable*
_output_shapes
:
}
1OptimizeLoss/gradients/embedding_lookup_grad/SizeSizeIteratorGetNext:1*
T0	*
out_type0*
_output_shapes
: 
}
;OptimizeLoss/gradients/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ц
7OptimizeLoss/gradients/embedding_lookup_grad/ExpandDims
ExpandDims1OptimizeLoss/gradients/embedding_lookup_grad/Size;OptimizeLoss/gradients/embedding_lookup_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:
К
@OptimizeLoss/gradients/embedding_lookup_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
М
BOptimizeLoss/gradients/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
М
BOptimizeLoss/gradients/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
:OptimizeLoss/gradients/embedding_lookup_grad/strided_sliceStridedSlice4OptimizeLoss/gradients/embedding_lookup_grad/ToInt32@OptimizeLoss/gradients/embedding_lookup_grad/strided_slice/stackBOptimizeLoss/gradients/embedding_lookup_grad/strided_slice/stack_1BOptimizeLoss/gradients/embedding_lookup_grad/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
:
z
8OptimizeLoss/gradients/embedding_lookup_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
и
3OptimizeLoss/gradients/embedding_lookup_grad/concatConcatV27OptimizeLoss/gradients/embedding_lookup_grad/ExpandDims:OptimizeLoss/gradients/embedding_lookup_grad/strided_slice8OptimizeLoss/gradients/embedding_lookup_grad/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
╒
4OptimizeLoss/gradients/embedding_lookup_grad/ReshapeReshapeOptimizeLoss/gradients/AddN_123OptimizeLoss/gradients/embedding_lookup_grad/concat*
T0*
Tshape0*(
_output_shapes
:         А
╔
6OptimizeLoss/gradients/embedding_lookup_grad/Reshape_1ReshapeIteratorGetNext:17OptimizeLoss/gradients/embedding_lookup_grad/ExpandDims*
T0	*
Tshape0*#
_output_shapes
:         
╔
OptimizeLoss/global_norm/L2LossL2Loss4OptimizeLoss/gradients/embedding_lookup_grad/Reshape*
T0*G
_class=
;9loc:@OptimizeLoss/gradients/embedding_lookup_grad/Reshape*
_output_shapes
: 
╪
!OptimizeLoss/global_norm/L2Loss_1L2LossOptimizeLoss/gradients/AddN_11*
T0*j
_class`
^\loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter_grad/b_acc_3*
_output_shapes
: 
╪
!OptimizeLoss/global_norm/L2Loss_2L2LossOptimizeLoss/gradients/AddN_8*
T0*k
_classa
_]loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes
: 
┘
!OptimizeLoss/global_norm/L2Loss_3L2LossOptimizeLoss/gradients/AddN_4*
T0*l
_classb
`^loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter_grad/b_acc_3*
_output_shapes
: 
┌
!OptimizeLoss/global_norm/L2Loss_4L2LossOptimizeLoss/gradients/AddN_2*
T0*m
_classc
a_loc:@OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter_grad/b_acc_3*
_output_shapes
: 
х
!OptimizeLoss/global_norm/L2Loss_5L2LossAOptimizeLoss/gradients/dense/Tensordot/transpose_1_grad/transpose*
T0*T
_classJ
HFloc:@OptimizeLoss/gradients/dense/Tensordot/transpose_1_grad/transpose*
_output_shapes
: 
▄
!OptimizeLoss/global_norm/L2Loss_6L2LossDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
╙
OptimizeLoss/global_norm/stackPackOptimizeLoss/global_norm/L2Loss!OptimizeLoss/global_norm/L2Loss_1!OptimizeLoss/global_norm/L2Loss_2!OptimizeLoss/global_norm/L2Loss_3!OptimizeLoss/global_norm/L2Loss_4!OptimizeLoss/global_norm/L2Loss_5!OptimizeLoss/global_norm/L2Loss_6*
N*
T0*

axis *
_output_shapes
:
h
OptimizeLoss/global_norm/ConstConst*
valueB: *
dtype0*
_output_shapes
:
б
OptimizeLoss/global_norm/SumSumOptimizeLoss/global_norm/stackOptimizeLoss/global_norm/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
e
 OptimizeLoss/global_norm/Const_1Const*
valueB
 *   @*
dtype0*
_output_shapes
: 
Д
OptimizeLoss/global_norm/mulMulOptimizeLoss/global_norm/Sum OptimizeLoss/global_norm/Const_1*
T0*
_output_shapes
: 
k
$OptimizeLoss/global_norm/global_normSqrtOptimizeLoss/global_norm/mul*
T0*
_output_shapes
: 
Т
+OptimizeLoss/global_norm/gradient_norm/tagsConst*7
value.B, B&OptimizeLoss/global_norm/gradient_norm*
dtype0*
_output_shapes
: 
л
&OptimizeLoss/global_norm/gradient_normScalarSummary+OptimizeLoss/global_norm/gradient_norm/tags$OptimizeLoss/global_norm/global_norm*
T0*
_output_shapes
: 
h
OptimizeLoss/loss/tagsConst*"
valueB BOptimizeLoss/loss*
dtype0*
_output_shapes
: 
a
OptimizeLoss/lossScalarSummaryOptimizeLoss/loss/tagsMean*
T0*
_output_shapes
: 
И
&OptimizeLoss/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@Variable*
_output_shapes
: 
Щ
OptimizeLoss/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@Variable*
_output_shapes
: 
╥
OptimizeLoss/beta1_power/AssignAssignOptimizeLoss/beta1_power&OptimizeLoss/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable*
_output_shapes
: 
Б
OptimizeLoss/beta1_power/readIdentityOptimizeLoss/beta1_power*
T0*
_class
loc:@Variable*
_output_shapes
: 
И
&OptimizeLoss/beta2_power/initial_valueConst*
valueB
 *w╛?*
dtype0*
_class
loc:@Variable*
_output_shapes
: 
Щ
OptimizeLoss/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@Variable*
_output_shapes
: 
╥
OptimizeLoss/beta2_power/AssignAssignOptimizeLoss/beta2_power&OptimizeLoss/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable*
_output_shapes
: 
Б
OptimizeLoss/beta2_power/readIdentityOptimizeLoss/beta2_power*
T0*
_class
loc:@Variable*
_output_shapes
: 
к
<OptimizeLoss/Variable/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"▓   А   *
dtype0*
_class
loc:@Variable*
_output_shapes
:
Ф
2OptimizeLoss/Variable/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@Variable*
_output_shapes
: 
А
,OptimizeLoss/Variable/Adam/Initializer/zerosFill<OptimizeLoss/Variable/Adam/Initializer/zeros/shape_as_tensor2OptimizeLoss/Variable/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable* 
_output_shapes
:
▓А
п
OptimizeLoss/Variable/Adam
VariableV2*
shape:
▓А*
dtype0*
	container *
shared_name *
_class
loc:@Variable* 
_output_shapes
:
▓А
ц
!OptimizeLoss/Variable/Adam/AssignAssignOptimizeLoss/Variable/Adam,OptimizeLoss/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable* 
_output_shapes
:
▓А
П
OptimizeLoss/Variable/Adam/readIdentityOptimizeLoss/Variable/Adam*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
м
>OptimizeLoss/Variable/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"▓   А   *
dtype0*
_class
loc:@Variable*
_output_shapes
:
Ц
4OptimizeLoss/Variable/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@Variable*
_output_shapes
: 
Ж
.OptimizeLoss/Variable/Adam_1/Initializer/zerosFill>OptimizeLoss/Variable/Adam_1/Initializer/zeros/shape_as_tensor4OptimizeLoss/Variable/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable* 
_output_shapes
:
▓А
▒
OptimizeLoss/Variable/Adam_1
VariableV2*
shape:
▓А*
dtype0*
	container *
shared_name *
_class
loc:@Variable* 
_output_shapes
:
▓А
ь
#OptimizeLoss/Variable/Adam_1/AssignAssignOptimizeLoss/Variable/Adam_1.OptimizeLoss/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable* 
_output_shapes
:
▓А
У
!OptimizeLoss/Variable/Adam_1/readIdentityOptimizeLoss/Variable/Adam_1*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
ю
^OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
_output_shapes
:
╪
TOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
_output_shapes
: 
И
NOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/Initializer/zerosFill^OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/Initializer/zeros/shape_as_tensorTOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
є
<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam
VariableV2*
shape:
АА*
dtype0*
	container *
shared_name *=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
ю
COptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/AssignAssign<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/AdamNOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
ї
AOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/readIdentity<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
Ё
`OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
_output_shapes
:
┌
VOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel*
_output_shapes
: 
О
POptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/Initializer/zerosFill`OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/Initializer/zeros/shape_as_tensorVOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
ї
>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1
VariableV2*
shape:
АА*
dtype0*
	container *
shared_name *=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
Ї
EOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/AssignAssign>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1POptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
∙
COptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/readIdentity>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1*
T0*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
ф
\OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:А*
dtype0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes
:
╘
ROptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes
: 
√
LOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/Initializer/zerosFill\OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/Initializer/zeros/shape_as_tensorROptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
х
:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam
VariableV2*
shape:А*
dtype0*
	container *
shared_name *;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
с
AOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/AssignAssign:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/AdamLOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
ъ
?OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/readIdentity:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam*
T0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
ц
^OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:А*
dtype0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes
:
╓
TOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes
: 
Б
NOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/Initializer/zerosFill^OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/Initializer/zeros/shape_as_tensorTOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
ч
<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1
VariableV2*
shape:А*
dtype0*
	container *
shared_name *;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
ч
COptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/AssignAssign<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1NOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
ю
AOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/readIdentity<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1*
T0*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
Ў
bOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   А   *
dtype0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
_output_shapes
:
р
XOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
_output_shapes
: 
Ш
ROptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/Initializer/zerosFillbOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/Initializer/zeros/shape_as_tensorXOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
√
@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam
VariableV2*
shape:
АА*
dtype0*
	container *
shared_name *A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
■
GOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/AssignAssign@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamROptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
Б
EOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/readIdentity@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
°
dOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   А   *
dtype0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
_output_shapes
:
т
ZOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel*
_output_shapes
: 
Ю
TOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/Initializer/zerosFilldOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/Initializer/zeros/shape_as_tensorZOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
¤
BOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1
VariableV2*
shape:
АА*
dtype0*
	container *
shared_name *A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
Д
IOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/AssignAssignBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1TOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
Е
GOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/readIdentityBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1*
T0*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
ь
`OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:А*
dtype0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes
:
▄
VOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes
: 
Л
POptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/Initializer/zerosFill`OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/Initializer/zeros/shape_as_tensorVOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
э
>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam
VariableV2*
shape:А*
dtype0*
	container *
shared_name *?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
ё
EOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/AssignAssign>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/AdamPOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
Ў
COptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/readIdentity>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
ю
bOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:А*
dtype0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes
:
▐
XOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes
: 
С
ROptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/Initializer/zerosFillbOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/Initializer/zeros/shape_as_tensorXOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
я
@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1
VariableV2*
shape:А*
dtype0*
	container *
shared_name *?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
ў
GOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/AssignAssign@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1ROptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
·
EOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/readIdentity@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1*
T0*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
▓
@OptimizeLoss/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
:
Ь
6OptimizeLoss/dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
П
0OptimizeLoss/dense/kernel/Adam/Initializer/zerosFill@OptimizeLoss/dense/kernel/Adam/Initializer/zeros/shape_as_tensor6OptimizeLoss/dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel*
_output_shapes
:	А
╡
OptimizeLoss/dense/kernel/Adam
VariableV2*
shape:	А*
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel*
_output_shapes
:	А
ї
%OptimizeLoss/dense/kernel/Adam/AssignAssignOptimizeLoss/dense/kernel/Adam0OptimizeLoss/dense/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel*
_output_shapes
:	А
Ъ
#OptimizeLoss/dense/kernel/Adam/readIdentityOptimizeLoss/dense/kernel/Adam*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
┤
BOptimizeLoss/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
:
Ю
8OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
Х
2OptimizeLoss/dense/kernel/Adam_1/Initializer/zerosFillBOptimizeLoss/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor8OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel*
_output_shapes
:	А
╖
 OptimizeLoss/dense/kernel/Adam_1
VariableV2*
shape:	А*
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel*
_output_shapes
:	А
√
'OptimizeLoss/dense/kernel/Adam_1/AssignAssign OptimizeLoss/dense/kernel/Adam_12OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel*
_output_shapes
:	А
Ю
%OptimizeLoss/dense/kernel/Adam_1/readIdentity OptimizeLoss/dense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
з
>OptimizeLoss/dense/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense/bias*
_output_shapes
:
Ш
4OptimizeLoss/dense/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
В
.OptimizeLoss/dense/bias/Adam/Initializer/zerosFill>OptimizeLoss/dense/bias/Adam/Initializer/zeros/shape_as_tensor4OptimizeLoss/dense/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias*
_output_shapes
:
з
OptimizeLoss/dense/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense/bias*
_output_shapes
:
ш
#OptimizeLoss/dense/bias/Adam/AssignAssignOptimizeLoss/dense/bias/Adam.OptimizeLoss/dense/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias*
_output_shapes
:
П
!OptimizeLoss/dense/bias/Adam/readIdentityOptimizeLoss/dense/bias/Adam*
T0*
_class
loc:@dense/bias*
_output_shapes
:
й
@OptimizeLoss/dense/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense/bias*
_output_shapes
:
Ъ
6OptimizeLoss/dense/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
И
0OptimizeLoss/dense/bias/Adam_1/Initializer/zerosFill@OptimizeLoss/dense/bias/Adam_1/Initializer/zeros/shape_as_tensor6OptimizeLoss/dense/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias*
_output_shapes
:
й
OptimizeLoss/dense/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense/bias*
_output_shapes
:
ю
%OptimizeLoss/dense/bias/Adam_1/AssignAssignOptimizeLoss/dense/bias/Adam_10OptimizeLoss/dense/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias*
_output_shapes
:
У
#OptimizeLoss/dense/bias/Adam_1/readIdentityOptimizeLoss/dense/bias/Adam_1*
T0*
_class
loc:@dense/bias*
_output_shapes
:
]
OptimizeLoss/train/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
]
OptimizeLoss/train/beta2Const*
valueB
 *w╛?*
dtype0*
_output_shapes
: 
_
OptimizeLoss/train/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
╘
)OptimizeLoss/train/update_Variable/UniqueUnique6OptimizeLoss/gradients/embedding_lookup_grad/Reshape_1*
T0	*
out_idx0*
_class
loc:@Variable*2
_output_shapes 
:         :         
о
(OptimizeLoss/train/update_Variable/ShapeShape)OptimizeLoss/train/update_Variable/Unique*
T0	*
out_type0*
_class
loc:@Variable*
_output_shapes
:
Э
6OptimizeLoss/train/update_Variable/strided_slice/stackConst*
valueB: *
dtype0*
_class
loc:@Variable*
_output_shapes
:
Я
8OptimizeLoss/train/update_Variable/strided_slice/stack_1Const*
valueB:*
dtype0*
_class
loc:@Variable*
_output_shapes
:
Я
8OptimizeLoss/train/update_Variable/strided_slice/stack_2Const*
valueB:*
dtype0*
_class
loc:@Variable*
_output_shapes
:
┼
0OptimizeLoss/train/update_Variable/strided_sliceStridedSlice(OptimizeLoss/train/update_Variable/Shape6OptimizeLoss/train/update_Variable/strided_slice/stack8OptimizeLoss/train/update_Variable/strided_slice/stack_18OptimizeLoss/train/update_Variable/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_class
loc:@Variable*
_output_shapes
: 
╘
5OptimizeLoss/train/update_Variable/UnsortedSegmentSumUnsortedSegmentSum4OptimizeLoss/gradients/embedding_lookup_grad/Reshape+OptimizeLoss/train/update_Variable/Unique:10OptimizeLoss/train/update_Variable/strided_slice*
T0*
Tindices0*
Tnumsegments0*
_class
loc:@Variable*(
_output_shapes
:         А
К
(OptimizeLoss/train/update_Variable/sub/xConst*
valueB
 *  А?*
dtype0*
_class
loc:@Variable*
_output_shapes
: 
┤
&OptimizeLoss/train/update_Variable/subSub(OptimizeLoss/train/update_Variable/sub/xOptimizeLoss/beta2_power/read*
T0*
_class
loc:@Variable*
_output_shapes
: 
Х
'OptimizeLoss/train/update_Variable/SqrtSqrt&OptimizeLoss/train/update_Variable/sub*
T0*
_class
loc:@Variable*
_output_shapes
: 
г
&OptimizeLoss/train/update_Variable/mulMulPlaceholder_2'OptimizeLoss/train/update_Variable/Sqrt*
T0*
_class
loc:@Variable*
_output_shapes
: 
М
*OptimizeLoss/train/update_Variable/sub_1/xConst*
valueB
 *  А?*
dtype0*
_class
loc:@Variable*
_output_shapes
: 
╕
(OptimizeLoss/train/update_Variable/sub_1Sub*OptimizeLoss/train/update_Variable/sub_1/xOptimizeLoss/beta1_power/read*
T0*
_class
loc:@Variable*
_output_shapes
: 
┼
*OptimizeLoss/train/update_Variable/truedivRealDiv&OptimizeLoss/train/update_Variable/mul(OptimizeLoss/train/update_Variable/sub_1*
T0*
_class
loc:@Variable*
_output_shapes
: 
М
*OptimizeLoss/train/update_Variable/sub_2/xConst*
valueB
 *  А?*
dtype0*
_class
loc:@Variable*
_output_shapes
: 
│
(OptimizeLoss/train/update_Variable/sub_2Sub*OptimizeLoss/train/update_Variable/sub_2/xOptimizeLoss/train/beta1*
T0*
_class
loc:@Variable*
_output_shapes
: 
р
(OptimizeLoss/train/update_Variable/mul_1Mul5OptimizeLoss/train/update_Variable/UnsortedSegmentSum(OptimizeLoss/train/update_Variable/sub_2*
T0*
_class
loc:@Variable*(
_output_shapes
:         А
▓
(OptimizeLoss/train/update_Variable/mul_2MulOptimizeLoss/Variable/Adam/readOptimizeLoss/train/beta1*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
ъ
)OptimizeLoss/train/update_Variable/AssignAssignOptimizeLoss/Variable/Adam(OptimizeLoss/train/update_Variable/mul_2*
T0*
validate_shape(*
use_locking( *
_class
loc:@Variable* 
_output_shapes
:
▓А
├
-OptimizeLoss/train/update_Variable/ScatterAdd
ScatterAddOptimizeLoss/Variable/Adam)OptimizeLoss/train/update_Variable/Unique(OptimizeLoss/train/update_Variable/mul_1*^OptimizeLoss/train/update_Variable/Assign*
T0*
Tindices0	*
use_locking( *
_class
loc:@Variable* 
_output_shapes
:
▓А
э
(OptimizeLoss/train/update_Variable/mul_3Mul5OptimizeLoss/train/update_Variable/UnsortedSegmentSum5OptimizeLoss/train/update_Variable/UnsortedSegmentSum*
T0*
_class
loc:@Variable*(
_output_shapes
:         А
М
*OptimizeLoss/train/update_Variable/sub_3/xConst*
valueB
 *  А?*
dtype0*
_class
loc:@Variable*
_output_shapes
: 
│
(OptimizeLoss/train/update_Variable/sub_3Sub*OptimizeLoss/train/update_Variable/sub_3/xOptimizeLoss/train/beta2*
T0*
_class
loc:@Variable*
_output_shapes
: 
╙
(OptimizeLoss/train/update_Variable/mul_4Mul(OptimizeLoss/train/update_Variable/mul_3(OptimizeLoss/train/update_Variable/sub_3*
T0*
_class
loc:@Variable*(
_output_shapes
:         А
┤
(OptimizeLoss/train/update_Variable/mul_5Mul!OptimizeLoss/Variable/Adam_1/readOptimizeLoss/train/beta2*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
ю
+OptimizeLoss/train/update_Variable/Assign_1AssignOptimizeLoss/Variable/Adam_1(OptimizeLoss/train/update_Variable/mul_5*
T0*
validate_shape(*
use_locking( *
_class
loc:@Variable* 
_output_shapes
:
▓А
╔
/OptimizeLoss/train/update_Variable/ScatterAdd_1
ScatterAddOptimizeLoss/Variable/Adam_1)OptimizeLoss/train/update_Variable/Unique(OptimizeLoss/train/update_Variable/mul_4,^OptimizeLoss/train/update_Variable/Assign_1*
T0*
Tindices0	*
use_locking( *
_class
loc:@Variable* 
_output_shapes
:
▓А
к
)OptimizeLoss/train/update_Variable/Sqrt_1Sqrt/OptimizeLoss/train/update_Variable/ScatterAdd_1*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
╥
(OptimizeLoss/train/update_Variable/mul_6Mul*OptimizeLoss/train/update_Variable/truediv-OptimizeLoss/train/update_Variable/ScatterAdd*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
╝
&OptimizeLoss/train/update_Variable/addAdd)OptimizeLoss/train/update_Variable/Sqrt_1OptimizeLoss/train/epsilon*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
╤
,OptimizeLoss/train/update_Variable/truediv_1RealDiv(OptimizeLoss/train/update_Variable/mul_6&OptimizeLoss/train/update_Variable/add*
T0*
_class
loc:@Variable* 
_output_shapes
:
▓А
╠
,OptimizeLoss/train/update_Variable/AssignSub	AssignSubVariable,OptimizeLoss/train/update_Variable/truediv_1*
T0*
use_locking( *
_class
loc:@Variable* 
_output_shapes
:
▓А
у
-OptimizeLoss/train/update_Variable/group_depsNoOp-^OptimizeLoss/train/update_Variable/AssignSub.^OptimizeLoss/train/update_Variable/ScatterAdd0^OptimizeLoss/train/update_Variable/ScatterAdd_1*
_class
loc:@Variable
╙
NOptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/kernel/ApplyAdam	ApplyAdam*bidirectional_rnn/fw/gru_cell/gates/kernel<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readPlaceholder_2OptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonOptimizeLoss/gradients/AddN_11*
T0*
use_locking( *
use_nesterov( *=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
├
LOptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/bias/ApplyAdam	ApplyAdam(bidirectional_rnn/fw/gru_cell/gates/bias:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readPlaceholder_2OptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonOptimizeLoss/gradients/AddN_8*
T0*
use_locking( *
use_nesterov( *;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
ц
ROptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/kernel/ApplyAdam	ApplyAdam.bidirectional_rnn/fw/gru_cell/candidate/kernel@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readPlaceholder_2OptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonOptimizeLoss/gradients/AddN_4*
T0*
use_locking( *
use_nesterov( *A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
╫
POptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/bias/ApplyAdam	ApplyAdam,bidirectional_rnn/fw/gru_cell/candidate/bias>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readPlaceholder_2OptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonOptimizeLoss/gradients/AddN_2*
T0*
use_locking( *
use_nesterov( *?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
▀
0OptimizeLoss/train/update_dense/kernel/ApplyAdam	ApplyAdamdense/kernelOptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readPlaceholder_2OptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonAOptimizeLoss/gradients/dense/Tensordot/transpose_1_grad/transpose*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense/kernel*
_output_shapes
:	А
╙
.OptimizeLoss/train/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasOptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/beta1_power/readOptimizeLoss/beta2_power/readPlaceholder_2OptimizeLoss/train/beta1OptimizeLoss/train/beta2OptimizeLoss/train/epsilonDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense/bias*
_output_shapes
:
Ё
OptimizeLoss/train/mulMulOptimizeLoss/beta1_power/readOptimizeLoss/train/beta1.^OptimizeLoss/train/update_Variable/group_depsO^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/kernel/ApplyAdamM^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/bias/ApplyAdamS^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/kernel/ApplyAdamQ^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/bias/ApplyAdam1^OptimizeLoss/train/update_dense/kernel/ApplyAdam/^OptimizeLoss/train/update_dense/bias/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 
╝
OptimizeLoss/train/AssignAssignOptimizeLoss/beta1_powerOptimizeLoss/train/mul*
T0*
validate_shape(*
use_locking( *
_class
loc:@Variable*
_output_shapes
: 
Є
OptimizeLoss/train/mul_1MulOptimizeLoss/beta2_power/readOptimizeLoss/train/beta2.^OptimizeLoss/train/update_Variable/group_depsO^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/kernel/ApplyAdamM^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/bias/ApplyAdamS^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/kernel/ApplyAdamQ^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/bias/ApplyAdam1^OptimizeLoss/train/update_dense/kernel/ApplyAdam/^OptimizeLoss/train/update_dense/bias/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 
└
OptimizeLoss/train/Assign_1AssignOptimizeLoss/beta2_powerOptimizeLoss/train/mul_1*
T0*
validate_shape(*
use_locking( *
_class
loc:@Variable*
_output_shapes
: 
╖
OptimizeLoss/train/updateNoOp.^OptimizeLoss/train/update_Variable/group_depsO^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/kernel/ApplyAdamM^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/gates/bias/ApplyAdamS^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/kernel/ApplyAdamQ^OptimizeLoss/train/update_bidirectional_rnn/fw/gru_cell/candidate/bias/ApplyAdam1^OptimizeLoss/train/update_dense/kernel/ApplyAdam/^OptimizeLoss/train/update_dense/bias/ApplyAdam^OptimizeLoss/train/Assign^OptimizeLoss/train/Assign_1
Х
OptimizeLoss/train/valueConst^OptimizeLoss/train/update*
value	B :*
dtype0*
_class
loc:@Variable_1*
_output_shapes
: 
Ш
OptimizeLoss/train	AssignAdd
Variable_1OptimizeLoss/train/value*
T0*
use_locking( *
_class
loc:@Variable_1*
_output_shapes
: 
А
OptimizeLoss/control_dependencyIdentityMean^OptimizeLoss/train*
T0*
_class
	loc:@Mean*
_output_shapes
: 
Ю	
initNoOp^Variable/Assign2^bidirectional_rnn/fw/gru_cell/gates/kernel/Assign0^bidirectional_rnn/fw/gru_cell/gates/bias/Assign6^bidirectional_rnn/fw/gru_cell/candidate/kernel/Assign4^bidirectional_rnn/fw/gru_cell/candidate/bias/Assign^dense/kernel/Assign^dense/bias/Assign^Variable_1/Assign ^OptimizeLoss/beta1_power/Assign ^OptimizeLoss/beta2_power/Assign"^OptimizeLoss/Variable/Adam/Assign$^OptimizeLoss/Variable/Adam_1/AssignD^OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/AssignF^OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/AssignB^OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/AssignD^OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/AssignH^OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/AssignJ^OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/AssignF^OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/AssignH^OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/Assign&^OptimizeLoss/dense/kernel/Adam/Assign(^OptimizeLoss/dense/kernel/Adam_1/Assign$^OptimizeLoss/dense/bias/Adam/Assign&^OptimizeLoss/dense/bias/Adam_1/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
┤
save/SaveV2/tensor_namesConst*ч
value▌B┌BOptimizeLoss/Variable/AdamBOptimizeLoss/Variable/Adam_1BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/AdamB@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1B@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamBBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1B:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/AdamB<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1B<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/AdamB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BVariableB
Variable_1B,bidirectional_rnn/fw/gru_cell/candidate/biasB.bidirectional_rnn/fw/gru_cell/candidate/kernelB(bidirectional_rnn/fw/gru_cell/gates/biasB*bidirectional_rnn/fw/gru_cell/gates/kernelB
dense/biasBdense/kernel*
dtype0*
_output_shapes
:
У
save/SaveV2/shape_and_slicesConst*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
╙
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesOptimizeLoss/Variable/AdamOptimizeLoss/Variable/Adam_1OptimizeLoss/beta1_powerOptimizeLoss/beta2_power>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1OptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1Variable
Variable_1,bidirectional_rnn/fw/gru_cell/candidate/bias.bidirectional_rnn/fw/gru_cell/candidate/kernel(bidirectional_rnn/fw/gru_cell/gates/bias*bidirectional_rnn/fw/gru_cell/gates/kernel
dense/biasdense/kernel*&
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
╞
save/RestoreV2/tensor_namesConst"/device:CPU:0*ч
value▌B┌BOptimizeLoss/Variable/AdamBOptimizeLoss/Variable/Adam_1BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/AdamB@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1B@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamBBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1B:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/AdamB<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1B<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/AdamB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BVariableB
Variable_1B,bidirectional_rnn/fw/gru_cell/candidate/biasB.bidirectional_rnn/fw/gru_cell/candidate/kernelB(bidirectional_rnn/fw/gru_cell/gates/biasB*bidirectional_rnn/fw/gru_cell/gates/kernelB
dense/biasBdense/kernel*
dtype0*
_output_shapes
:
е
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Т
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*&
dtypes
2*t
_output_shapesb
`::::::::::::::::::::::::
▓
save/AssignAssignOptimizeLoss/Variable/Adamsave/RestoreV2*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable* 
_output_shapes
:
▓А
╕
save/Assign_1AssignOptimizeLoss/Variable/Adam_1save/RestoreV2:1*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable* 
_output_shapes
:
▓А
к
save/Assign_2AssignOptimizeLoss/beta1_powersave/RestoreV2:2*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable*
_output_shapes
: 
к
save/Assign_3AssignOptimizeLoss/beta2_powersave/RestoreV2:3*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable*
_output_shapes
: 
∙
save/Assign_4Assign>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adamsave/RestoreV2:4*
T0*
validate_shape(*
use_locking(*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
√
save/Assign_5Assign@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1save/RestoreV2:5*
T0*
validate_shape(*
use_locking(*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
В
save/Assign_6Assign@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adamsave/RestoreV2:6*
T0*
validate_shape(*
use_locking(*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
Д
save/Assign_7AssignBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1save/RestoreV2:7*
T0*
validate_shape(*
use_locking(*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
ё
save/Assign_8Assign:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adamsave/RestoreV2:8*
T0*
validate_shape(*
use_locking(*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
є
save/Assign_9Assign<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1save/RestoreV2:9*
T0*
validate_shape(*
use_locking(*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
№
save/Assign_10Assign<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adamsave/RestoreV2:10*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
■
save/Assign_11Assign>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1save/RestoreV2:11*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
╢
save/Assign_12AssignOptimizeLoss/dense/bias/Adamsave/RestoreV2:12*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias*
_output_shapes
:
╕
save/Assign_13AssignOptimizeLoss/dense/bias/Adam_1save/RestoreV2:13*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias*
_output_shapes
:
┐
save/Assign_14AssignOptimizeLoss/dense/kernel/Adamsave/RestoreV2:14*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel*
_output_shapes
:	А
┴
save/Assign_15Assign OptimizeLoss/dense/kernel/Adam_1save/RestoreV2:15*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel*
_output_shapes
:	А
ж
save/Assign_16AssignVariablesave/RestoreV2:16*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable* 
_output_shapes
:
▓А
а
save/Assign_17Assign
Variable_1save/RestoreV2:17*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable_1*
_output_shapes
: 
щ
save/Assign_18Assign,bidirectional_rnn/fw/gru_cell/candidate/biassave/RestoreV2:18*
T0*
validate_shape(*
use_locking(*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
Є
save/Assign_19Assign.bidirectional_rnn/fw/gru_cell/candidate/kernelsave/RestoreV2:19*
T0*
validate_shape(*
use_locking(*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
с
save/Assign_20Assign(bidirectional_rnn/fw/gru_cell/gates/biassave/RestoreV2:20*
T0*
validate_shape(*
use_locking(*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
ъ
save/Assign_21Assign*bidirectional_rnn/fw/gru_cell/gates/kernelsave/RestoreV2:21*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
д
save/Assign_22Assign
dense/biassave/RestoreV2:22*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias*
_output_shapes
:
н
save/Assign_23Assigndense/kernelsave/RestoreV2:23*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel*
_output_shapes
:	А
д
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23
`
inputsIdentityIteratorGetNext:1*
T0	*0
_output_shapes
:                  
R
lengthsIdentityIteratorGetNext*
T0	*#
_output_shapes
:         
D
trainingIdentityPlaceholder_1*
T0
*
_output_shapes
: 
X
outputsIdentityboolean_mask_1/Gather*
T0	*#
_output_shapes
:         
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_fbda6d5b413c41aaabf0d05ef3d379a9/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
┼
save_1/SaveV2/tensor_namesConst"/device:CPU:0*ч
value▌B┌BOptimizeLoss/Variable/AdamBOptimizeLoss/Variable/Adam_1BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/AdamB@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1B@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamBBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1B:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/AdamB<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1B<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/AdamB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BVariableB
Variable_1B,bidirectional_rnn/fw/gru_cell/candidate/biasB.bidirectional_rnn/fw/gru_cell/candidate/kernelB(bidirectional_rnn/fw/gru_cell/gates/biasB*bidirectional_rnn/fw/gru_cell/gates/kernelB
dense/biasBdense/kernel*
dtype0*
_output_shapes
:
д
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ї
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesOptimizeLoss/Variable/AdamOptimizeLoss/Variable/Adam_1OptimizeLoss/beta1_powerOptimizeLoss/beta2_power>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1OptimizeLoss/dense/bias/AdamOptimizeLoss/dense/bias/Adam_1OptimizeLoss/dense/kernel/Adam OptimizeLoss/dense/kernel/Adam_1Variable
Variable_1,bidirectional_rnn/fw/gru_cell/candidate/bias.bidirectional_rnn/fw/gru_cell/candidate/kernel(bidirectional_rnn/fw/gru_cell/gates/bias*bidirectional_rnn/fw/gru_cell/gates/kernel
dense/biasdense/kernel"/device:CPU:0*&
dtypes
2
и
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
▓
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
N*
T0*

axis *
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
╚
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*ч
value▌B┌BOptimizeLoss/Variable/AdamBOptimizeLoss/Variable/Adam_1BOptimizeLoss/beta1_powerBOptimizeLoss/beta2_powerB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/AdamB@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1B@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/AdamBBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1B:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/AdamB<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1B<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/AdamB>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1BOptimizeLoss/dense/bias/AdamBOptimizeLoss/dense/bias/Adam_1BOptimizeLoss/dense/kernel/AdamB OptimizeLoss/dense/kernel/Adam_1BVariableB
Variable_1B,bidirectional_rnn/fw/gru_cell/candidate/biasB.bidirectional_rnn/fw/gru_cell/candidate/kernelB(bidirectional_rnn/fw/gru_cell/gates/biasB*bidirectional_rnn/fw/gru_cell/gates/kernelB
dense/biasBdense/kernel*
dtype0*
_output_shapes
:
з
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ъ
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*&
dtypes
2*t
_output_shapesb
`::::::::::::::::::::::::
╢
save_1/AssignAssignOptimizeLoss/Variable/Adamsave_1/RestoreV2*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable* 
_output_shapes
:
▓А
╝
save_1/Assign_1AssignOptimizeLoss/Variable/Adam_1save_1/RestoreV2:1*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable* 
_output_shapes
:
▓А
о
save_1/Assign_2AssignOptimizeLoss/beta1_powersave_1/RestoreV2:2*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable*
_output_shapes
: 
о
save_1/Assign_3AssignOptimizeLoss/beta2_powersave_1/RestoreV2:3*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable*
_output_shapes
: 
¤
save_1/Assign_4Assign>OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adamsave_1/RestoreV2:4*
T0*
validate_shape(*
use_locking(*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
 
save_1/Assign_5Assign@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1save_1/RestoreV2:5*
T0*
validate_shape(*
use_locking(*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
Ж
save_1/Assign_6Assign@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adamsave_1/RestoreV2:6*
T0*
validate_shape(*
use_locking(*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
И
save_1/Assign_7AssignBOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1save_1/RestoreV2:7*
T0*
validate_shape(*
use_locking(*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
ї
save_1/Assign_8Assign:OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adamsave_1/RestoreV2:8*
T0*
validate_shape(*
use_locking(*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
ў
save_1/Assign_9Assign<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1save_1/RestoreV2:9*
T0*
validate_shape(*
use_locking(*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
А
save_1/Assign_10Assign<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adamsave_1/RestoreV2:10*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
В
save_1/Assign_11Assign>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1save_1/RestoreV2:11*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
║
save_1/Assign_12AssignOptimizeLoss/dense/bias/Adamsave_1/RestoreV2:12*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias*
_output_shapes
:
╝
save_1/Assign_13AssignOptimizeLoss/dense/bias/Adam_1save_1/RestoreV2:13*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias*
_output_shapes
:
├
save_1/Assign_14AssignOptimizeLoss/dense/kernel/Adamsave_1/RestoreV2:14*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel*
_output_shapes
:	А
┼
save_1/Assign_15Assign OptimizeLoss/dense/kernel/Adam_1save_1/RestoreV2:15*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel*
_output_shapes
:	А
к
save_1/Assign_16AssignVariablesave_1/RestoreV2:16*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable* 
_output_shapes
:
▓А
д
save_1/Assign_17Assign
Variable_1save_1/RestoreV2:17*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable_1*
_output_shapes
: 
э
save_1/Assign_18Assign,bidirectional_rnn/fw/gru_cell/candidate/biassave_1/RestoreV2:18*
T0*
validate_shape(*
use_locking(*?
_class5
31loc:@bidirectional_rnn/fw/gru_cell/candidate/bias*
_output_shapes	
:А
Ў
save_1/Assign_19Assign.bidirectional_rnn/fw/gru_cell/candidate/kernelsave_1/RestoreV2:19*
T0*
validate_shape(*
use_locking(*A
_class7
53loc:@bidirectional_rnn/fw/gru_cell/candidate/kernel* 
_output_shapes
:
АА
х
save_1/Assign_20Assign(bidirectional_rnn/fw/gru_cell/gates/biassave_1/RestoreV2:20*
T0*
validate_shape(*
use_locking(*;
_class1
/-loc:@bidirectional_rnn/fw/gru_cell/gates/bias*
_output_shapes	
:А
ю
save_1/Assign_21Assign*bidirectional_rnn/fw/gru_cell/gates/kernelsave_1/RestoreV2:21*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@bidirectional_rnn/fw/gru_cell/gates/kernel* 
_output_shapes
:
АА
и
save_1/Assign_22Assign
dense/biassave_1/RestoreV2:22*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias*
_output_shapes
:
▒
save_1/Assign_23Assigndense/kernelsave_1/RestoreV2:23*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel*
_output_shapes
:	А
╪
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23
1
save_1/restore_allNoOp^save_1/restore_shard├$
┘
О
tf_map_func_44a91aae
arg09
5ParseSingleSequenceExample/ParseSingleSequenceExample	<
8ParseSingleSequenceExample/ParseSingleSequenceExample_o2	<
8ParseSingleSequenceExample/ParseSingleSequenceExample_o1	25A wrapper for Defun that facilitates shape inference.I
 ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	З
^ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0y
JParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blength*
dtype0~
OParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Blabels*
dtype0~
OParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB Btokens*
dtype0i
@ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0т
5ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExamplearg0gParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_empty:output:0SParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0:output:0XParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0:output:0XParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1:output:0)ParseSingleSequenceExample/Const:output:0IParseSingleSequenceExample/ParseSingleSequenceExample/debug_name:output:0*
Ncontext_sparse *
Ncontext_dense*
Nfeature_list_sparse *
Nfeature_list_dense*
context_sparse_types
 *
Tcontext_dense
2	*"
feature_list_dense_types
2		*
context_dense_shapes
: *
feature_list_sparse_types
 *#
feature_list_dense_shapes
: : "Е
5ParseSingleSequenceExample/ParseSingleSequenceExampleLParseSingleSequenceExample/ParseSingleSequenceExample:context_dense_values:0"Н
8ParseSingleSequenceExample/ParseSingleSequenceExample_o2QParseSingleSequenceExample/ParseSingleSequenceExample:feature_list_dense_values:1"Н
8ParseSingleSequenceExample/ParseSingleSequenceExample_o1QParseSingleSequenceExample/ParseSingleSequenceExample:feature_list_dense_values:0
ф
3
_make_dataset_b3411f6d
PaddedBatchDatasetИ]
TFRecordDataset/filenamesConst*,
value#B!B/tmp/training.tf_record*
dtype0M
 TFRecordDataset/compression_typeConst*
valueB
 BZLIB*
dtype0G
TFRecordDataset/buffer_sizeConst*
valueB		 RАА*
dtype0	Ч
TFRecordDatasetTFRecordDataset"TFRecordDataset/filenames:output:0)TFRecordDataset/compression_type:output:0$TFRecordDataset/buffer_size:output:0▒

MapDataset
MapDatasetTFRecordDataset:handle:0*
fR
tf_map_func_44a91aae*

Targuments
 *
output_types
2			*3
output_shapes"
 : :         :         H
ShuffleDataset/buffer_size_1Const*
valueB		 RЁУ	*
dtype0	=
ShuffleDataset/seedConst*
value	B	 R *
dtype0	>
ShuffleDataset/seed2Const*
value	B	 R *
dtype0	З
ShuffleDatasetShuffleDatasetMapDataset:handle:0%ShuffleDataset/buffer_size_1:output:0ShuffleDataset/seed:output:0ShuffleDataset/seed2:output:0*
reshuffle_each_iteration(*
output_types
2			*3
output_shapes"
 : :         :         F
RepeatDataset/countConst*
valueB	 R
         *
dtype0	г
RepeatDatasetRepeatDatasetShuffleDataset:handle:0RepeatDataset/count:output:0*
output_types
2			*3
output_shapes"
 : :         :         G
PaddedBatchDataset/batch_sizeConst*
value	B	 R@*
dtype0	A
PaddedBatchDataset/ConstConst*
valueB	 *
dtype0	Q
PaddedBatchDataset/Const_1Const*
valueB	R
         *
dtype0	Q
PaddedBatchDataset/Const_2Const*
valueB	R
         *
dtype0	J
 PaddedBatchDataset/padding_valueConst*
value	B	 R *
dtype0	L
"PaddedBatchDataset/padding_value_1Const*
value	B	 R *
dtype0	L
"PaddedBatchDataset/padding_value_2Const*
value	B	 R *
dtype0	┘
PaddedBatchDatasetPaddedBatchDatasetRepeatDataset:handle:0&PaddedBatchDataset/batch_size:output:0!PaddedBatchDataset/Const:output:0#PaddedBatchDataset/Const_1:output:0#PaddedBatchDataset/Const_2:output:0)PaddedBatchDataset/padding_value:output:0+PaddedBatchDataset/padding_value_1:output:0+PaddedBatchDataset/padding_value_2:output:0*
Toutput_types
2			*Z
output_shapesI
G:         :                  :                  *
N"1
PaddedBatchDatasetPaddedBatchDataset:handle:0"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"А&
	variablesЄ%я%
@

Variable:0Variable/AssignVariable/read:02random_uniform:0
▌
,bidirectional_rnn/fw/gru_cell/gates/kernel:01bidirectional_rnn/fw/gru_cell/gates/kernel/Assign1bidirectional_rnn/fw/gru_cell/gates/kernel/read:02Gbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform:0
╠
*bidirectional_rnn/fw/gru_cell/gates/bias:0/bidirectional_rnn/fw/gru_cell/gates/bias/Assign/bidirectional_rnn/fw/gru_cell/gates/bias/read:02<bidirectional_rnn/fw/gru_cell/gates/bias/Initializer/Const:0
э
0bidirectional_rnn/fw/gru_cell/candidate/kernel:05bidirectional_rnn/fw/gru_cell/candidate/kernel/Assign5bidirectional_rnn/fw/gru_cell/candidate/kernel/read:02Kbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform:0
▄
.bidirectional_rnn/fw/gru_cell/candidate/bias:03bidirectional_rnn/fw/gru_cell/candidate/bias/Assign3bidirectional_rnn/fw/gru_cell/candidate/bias/read:02@bidirectional_rnn/fw/gru_cell/candidate/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
P
Variable_1:0Variable_1/AssignVariable_1/read:02Variable_1/initial_value:0
И
OptimizeLoss/beta1_power:0OptimizeLoss/beta1_power/AssignOptimizeLoss/beta1_power/read:02(OptimizeLoss/beta1_power/initial_value:0
И
OptimizeLoss/beta2_power:0OptimizeLoss/beta2_power/AssignOptimizeLoss/beta2_power/read:02(OptimizeLoss/beta2_power/initial_value:0
Ф
OptimizeLoss/Variable/Adam:0!OptimizeLoss/Variable/Adam/Assign!OptimizeLoss/Variable/Adam/read:02.OptimizeLoss/Variable/Adam/Initializer/zeros:0
Ь
OptimizeLoss/Variable/Adam_1:0#OptimizeLoss/Variable/Adam_1/Assign#OptimizeLoss/Variable/Adam_1/read:020OptimizeLoss/Variable/Adam_1/Initializer/zeros:0
Ь
>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam:0COptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/AssignCOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/read:02POptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam/Initializer/zeros:0
д
@OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1:0EOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/AssignEOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/read:02ROptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/kernel/Adam_1/Initializer/zeros:0
Ф
<OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam:0AOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/AssignAOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/read:02NOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam/Initializer/zeros:0
Ь
>OptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1:0COptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/AssignCOptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/read:02POptimizeLoss/bidirectional_rnn/fw/gru_cell/gates/bias/Adam_1/Initializer/zeros:0
м
BOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam:0GOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/AssignGOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/read:02TOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam/Initializer/zeros:0
┤
DOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1:0IOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/AssignIOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/read:02VOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/kernel/Adam_1/Initializer/zeros:0
д
@OptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam:0EOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/AssignEOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/read:02ROptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam/Initializer/zeros:0
м
BOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1:0GOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/AssignGOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/read:02TOptimizeLoss/bidirectional_rnn/fw/gru_cell/candidate/bias/Adam_1/Initializer/zeros:0
д
 OptimizeLoss/dense/kernel/Adam:0%OptimizeLoss/dense/kernel/Adam/Assign%OptimizeLoss/dense/kernel/Adam/read:022OptimizeLoss/dense/kernel/Adam/Initializer/zeros:0
м
"OptimizeLoss/dense/kernel/Adam_1:0'OptimizeLoss/dense/kernel/Adam_1/Assign'OptimizeLoss/dense/kernel/Adam_1/read:024OptimizeLoss/dense/kernel/Adam_1/Initializer/zeros:0
Ь
OptimizeLoss/dense/bias/Adam:0#OptimizeLoss/dense/bias/Adam/Assign#OptimizeLoss/dense/bias/Adam/read:020OptimizeLoss/dense/bias/Adam/Initializer/zeros:0
д
 OptimizeLoss/dense/bias/Adam_1:0%OptimizeLoss/dense/bias/Adam_1/Assign%OptimizeLoss/dense/bias/Adam_1/read:022OptimizeLoss/dense/bias/Adam_1/Initializer/zeros:0"Ш	
trainable_variablesА	¤
@

Variable:0Variable/AssignVariable/read:02random_uniform:0
▌
,bidirectional_rnn/fw/gru_cell/gates/kernel:01bidirectional_rnn/fw/gru_cell/gates/kernel/Assign1bidirectional_rnn/fw/gru_cell/gates/kernel/read:02Gbidirectional_rnn/fw/gru_cell/gates/kernel/Initializer/random_uniform:0
╠
*bidirectional_rnn/fw/gru_cell/gates/bias:0/bidirectional_rnn/fw/gru_cell/gates/bias/Assign/bidirectional_rnn/fw/gru_cell/gates/bias/read:02<bidirectional_rnn/fw/gru_cell/gates/bias/Initializer/Const:0
э
0bidirectional_rnn/fw/gru_cell/candidate/kernel:05bidirectional_rnn/fw/gru_cell/candidate/kernel/Assign5bidirectional_rnn/fw/gru_cell/candidate/kernel/read:02Kbidirectional_rnn/fw/gru_cell/candidate/kernel/Initializer/random_uniform:0
▄
.bidirectional_rnn/fw/gru_cell/candidate/bias:03bidirectional_rnn/fw/gru_cell/candidate/bias/Assign3bidirectional_rnn/fw/gru_cell/candidate/bias/read:02@bidirectional_rnn/fw/gru_cell/candidate/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0"Х╘
while_contextВ╘■╙
│й
+bidirectional_rnn/fw/fw/while/while_context *(bidirectional_rnn/fw/fw/while/LoopCond:02%bidirectional_rnn/fw/fw/while/Merge:0:(bidirectional_rnn/fw/fw/while/Identity:0B$bidirectional_rnn/fw/fw/while/Exit:0B&bidirectional_rnn/fw/fw/while/Exit_1:0B&bidirectional_rnn/fw/fw/while/Exit_2:0B&bidirectional_rnn/fw/fw/while/Exit_3:0B"OptimizeLoss/gradients/f_count_2:0J╨д
OptimizeLoss/gradients/Add/y:0
OptimizeLoss/gradients/Add:0
OptimizeLoss/gradients/Merge:0
OptimizeLoss/gradients/Merge:1
&OptimizeLoss/gradients/NextIteration:0
OptimizeLoss/gradients/Switch:0
OptimizeLoss/gradients/Switch:1
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Enter:0
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPushV2:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Enter:0
[OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPushV2:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc:0
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/Enter:0
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/StackPushV2:0
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/f_acc:0
wOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
}OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
wOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/Enter:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/StackPushV2:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/f_acc:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/Enter:0
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/StackPushV2:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/f_acc:0
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Shape:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Enter:0
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0
iOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2:0
kOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc:0
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0
MOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape:0
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/Shape_1:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/Enter:0
WOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/StackPushV2:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/f_acc:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/Enter:0
YOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/StackPushV2:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/f_acc:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/Enter:0
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/StackPushV2:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/f_acc:0
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/Enter:0
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/StackPushV2:0
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/f_acc:0
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/Enter:0
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/StackPushV2:0
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc:0
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/Enter:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/Enter_1:0
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2:0
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2_1:0
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/f_acc:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1:0
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Shape:0
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/Shape_1:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/Shape:0
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/Enter:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/Enter_1:0
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPushV2:0
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/StackPushV2_1:0
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/f_acc:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/f_acc_1:0
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_grad/Shape:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter:0
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Shape:0
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/Shape_1:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/Enter:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/StackPushV2:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/f_acc:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter:0
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2:0
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Shape:0
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/Shape_1:0
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/Enter:0
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/StackPushV2:0
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/f_acc:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/Enter:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/StackPushV2:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/f_acc:0
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/Enter:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1:0
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2:0
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/f_acc:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0
NOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Shape:0
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/Shape_1:0
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/Enter:0
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/StackPushV2:0
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/f_acc:0
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/Enter:0
jOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/StackPushV2:0
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/f_acc:0
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/Shape_1:0
 OptimizeLoss/gradients/f_count:0
"OptimizeLoss/gradients/f_count_1:0
"OptimizeLoss/gradients/f_count_2:0
%bidirectional_rnn/fw/fw/CheckSeqLen:0
!bidirectional_rnn/fw/fw/Minimum:0
%bidirectional_rnn/fw/fw/TensorArray:0
Tbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
'bidirectional_rnn/fw/fw/TensorArray_1:0
)bidirectional_rnn/fw/fw/strided_slice_1:0
%bidirectional_rnn/fw/fw/while/Enter:0
'bidirectional_rnn/fw/fw/while/Enter_1:0
'bidirectional_rnn/fw/fw/while/Enter_2:0
'bidirectional_rnn/fw/fw/while/Enter_3:0
$bidirectional_rnn/fw/fw/while/Exit:0
&bidirectional_rnn/fw/fw/while/Exit_1:0
&bidirectional_rnn/fw/fw/while/Exit_2:0
&bidirectional_rnn/fw/fw/while/Exit_3:0
2bidirectional_rnn/fw/fw/while/GreaterEqual/Enter:0
,bidirectional_rnn/fw/fw/while/GreaterEqual:0
.bidirectional_rnn/fw/fw/while/GreaterEqual_1:0
(bidirectional_rnn/fw/fw/while/Identity:0
*bidirectional_rnn/fw/fw/while/Identity_1:0
*bidirectional_rnn/fw/fw/while/Identity_2:0
*bidirectional_rnn/fw/fw/while/Identity_3:0
*bidirectional_rnn/fw/fw/while/Less/Enter:0
$bidirectional_rnn/fw/fw/while/Less:0
,bidirectional_rnn/fw/fw/while/Less_1/Enter:0
&bidirectional_rnn/fw/fw/while/Less_1:0
*bidirectional_rnn/fw/fw/while/LogicalAnd:0
(bidirectional_rnn/fw/fw/while/LoopCond:0
%bidirectional_rnn/fw/fw/while/Merge:0
%bidirectional_rnn/fw/fw/while/Merge:1
'bidirectional_rnn/fw/fw/while/Merge_1:0
'bidirectional_rnn/fw/fw/while/Merge_1:1
'bidirectional_rnn/fw/fw/while/Merge_2:0
'bidirectional_rnn/fw/fw/while/Merge_2:1
'bidirectional_rnn/fw/fw/while/Merge_3:0
'bidirectional_rnn/fw/fw/while/Merge_3:1
-bidirectional_rnn/fw/fw/while/NextIteration:0
/bidirectional_rnn/fw/fw/while/NextIteration_1:0
/bidirectional_rnn/fw/fw/while/NextIteration_2:0
/bidirectional_rnn/fw/fw/while/NextIteration_3:0
,bidirectional_rnn/fw/fw/while/Select/Enter:0
&bidirectional_rnn/fw/fw/while/Select:0
(bidirectional_rnn/fw/fw/while/Select_1:0
&bidirectional_rnn/fw/fw/while/Switch:0
&bidirectional_rnn/fw/fw/while/Switch:1
(bidirectional_rnn/fw/fw/while/Switch_1:0
(bidirectional_rnn/fw/fw/while/Switch_1:1
(bidirectional_rnn/fw/fw/while/Switch_2:0
(bidirectional_rnn/fw/fw/while/Switch_2:1
(bidirectional_rnn/fw/fw/while/Switch_3:0
(bidirectional_rnn/fw/fw/while/Switch_3:1
7bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0
9bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0
1bidirectional_rnn/fw/fw/while/TensorArrayReadV3:0
Ibidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Cbidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3:0
%bidirectional_rnn/fw/fw/while/add/y:0
#bidirectional_rnn/fw/fw/while/add:0
'bidirectional_rnn/fw/fw/while/add_1/y:0
%bidirectional_rnn/fw/fw/while/add_1:0
-bidirectional_rnn/fw/fw/while/dropout/Floor:0
-bidirectional_rnn/fw/fw/while/dropout/Shape:0
1bidirectional_rnn/fw/fw/while/dropout/add/Enter:0
+bidirectional_rnn/fw/fw/while/dropout/add:0
+bidirectional_rnn/fw/fw/while/dropout/div:0
+bidirectional_rnn/fw/fw/while/dropout/mul:0
Dbidirectional_rnn/fw/fw/while/dropout/random_uniform/RandomUniform:0
:bidirectional_rnn/fw/fw/while/dropout/random_uniform/max:0
:bidirectional_rnn/fw/fw/while/dropout/random_uniform/min:0
:bidirectional_rnn/fw/fw/while/dropout/random_uniform/mul:0
:bidirectional_rnn/fw/fw/while/dropout/random_uniform/sub:0
6bidirectional_rnn/fw/fw/while/dropout/random_uniform:0
6bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter:0
0bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd:0
8bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter:0
2bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1:0
.bidirectional_rnn/fw/fw/while/gru_cell/Const:0
5bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter:0
/bidirectional_rnn/fw/fw/while/gru_cell/MatMul:0
7bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter:0
1bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1:0
0bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid:0
-bidirectional_rnn/fw/fw/while/gru_cell/Tanh:0
,bidirectional_rnn/fw/fw/while/gru_cell/add:0
4bidirectional_rnn/fw/fw/while/gru_cell/concat/axis:0
/bidirectional_rnn/fw/fw/while/gru_cell/concat:0
6bidirectional_rnn/fw/fw/while/gru_cell/concat_1/axis:0
1bidirectional_rnn/fw/fw/while/gru_cell/concat_1:0
,bidirectional_rnn/fw/fw/while/gru_cell/mul:0
.bidirectional_rnn/fw/fw/while/gru_cell/mul_1:0
.bidirectional_rnn/fw/fw/while/gru_cell/mul_2:0
8bidirectional_rnn/fw/fw/while/gru_cell/split/split_dim:0
.bidirectional_rnn/fw/fw/while/gru_cell/split:0
.bidirectional_rnn/fw/fw/while/gru_cell/split:1
.bidirectional_rnn/fw/fw/while/gru_cell/sub/x:0
,bidirectional_rnn/fw/fw/while/gru_cell/sub:0
bidirectional_rnn/fw/fw/zeros:0
3bidirectional_rnn/fw/gru_cell/candidate/bias/read:0
5bidirectional_rnn/fw/gru_cell/candidate/kernel/read:0
/bidirectional_rnn/fw/gru_cell/gates/bias/read:0
1bidirectional_rnn/fw/gru_cell/gates/kernel/read:0
sub:0W
)bidirectional_rnn/fw/fw/strided_slice_1:0*bidirectional_rnn/fw/fw/while/Less/Enter:0Q
!bidirectional_rnn/fw/fw/Minimum:0,bidirectional_rnn/fw/fw/while/Less_1/Enter:0b
'bidirectional_rnn/fw/fw/TensorArray_1:07bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0С
Tbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:09bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0j
1bidirectional_rnn/fw/gru_cell/gates/kernel/read:05bidirectional_rnn/fw/fw/while/gru_cell/MatMul/Enter:0i
/bidirectional_rnn/fw/gru_cell/gates/bias/read:06bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd/Enter:0p
5bidirectional_rnn/fw/gru_cell/candidate/kernel/read:07bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1/Enter:0o
3bidirectional_rnn/fw/gru_cell/candidate/bias/read:08bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_1/Enter:0:
sub:01bidirectional_rnn/fw/fw/while/dropout/add/Enter:0[
%bidirectional_rnn/fw/fw/CheckSeqLen:02bidirectional_rnn/fw/fw/while/GreaterEqual/Enter:0O
bidirectional_rnn/fw/fw/zeros:0,bidirectional_rnn/fw/fw/while/Select/Enter:0r
%bidirectional_rnn/fw/fw/TensorArray:0Ibidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0Є
wOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0wOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0о
UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc:0UOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Enter:0ж
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc:0QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Enter:0в
OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/f_acc:0OOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/Select_grad/Select/Enter:0╩
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc:0cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Enter:0╬
eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0eOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0ж
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/f_acc:0QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul/Enter:0к
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/f_acc:0SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/mul_grad/mul_1/Enter:0╩
cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/f_acc:0cOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/BroadcastGradientArgs/Enter:0ж
QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/f_acc:0QOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/dropout/div_grad/Neg/Enter:0╠
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/f_acc:0dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/Enter:0╨
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1:0fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_grad/BroadcastGradientArgs/Enter_1:0╨
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter:0╘
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0░
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/f_acc:0VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_1_grad/mul_1/Enter:0╨
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter:0╘
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0м
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/f_acc:0TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul/Enter:0░
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/f_acc:0VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_2_grad/mul_1/Enter:0╠
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/f_acc:0dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_grad/BroadcastGradientArgs/Enter:0╝
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/f_acc:0\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_1_grad/MatMul_1/Enter:0╕
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/f_acc:0ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/Enter:0╝
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/f_acc_1:0\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_1_grad/ShapeN/Enter_1:0╠
dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/f_acc:0dOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/Enter:0╨
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1:0м
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/f_acc:0TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_grad/mul_1/Enter:0└
^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc:0^OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_grad/SigmoidGrad/Enter:0╕
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/f_acc:0ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_grad/MatMul_1/Enter:0R%bidirectional_rnn/fw/fw/while/Enter:0R'bidirectional_rnn/fw/fw/while/Enter_1:0R'bidirectional_rnn/fw/fw/while/Enter_2:0R'bidirectional_rnn/fw/fw/while/Enter_3:0R"OptimizeLoss/gradients/f_count_1:0Z)bidirectional_rnn/fw/fw/strided_slice_1:0
├к
+bidirectional_rnn/bw/bw/while/while_context *(bidirectional_rnn/bw/bw/while/LoopCond:02%bidirectional_rnn/bw/bw/while/Merge:0:(bidirectional_rnn/bw/bw/while/Identity:0B$bidirectional_rnn/bw/bw/while/Exit:0B&bidirectional_rnn/bw/bw/while/Exit_1:0B&bidirectional_rnn/bw/bw/while/Exit_2:0B&bidirectional_rnn/bw/bw/while/Exit_3:0B"OptimizeLoss/gradients/f_count_5:0Jре
 OptimizeLoss/gradients/Add_1/y:0
OptimizeLoss/gradients/Add_1:0
 OptimizeLoss/gradients/Merge_2:0
 OptimizeLoss/gradients/Merge_2:1
(OptimizeLoss/gradients/NextIteration_2:0
!OptimizeLoss/gradients/Switch_2:0
!OptimizeLoss/gradients/Switch_2:1
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Enter:0
WOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPushV2:0
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc:0
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Enter:0
[OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPushV2:0
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc:0
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/Enter:0
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/StackPushV2:0
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/f_acc:0
wOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
}OptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
wOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/Enter:0
iOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/StackPushV2:0
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/f_acc:0
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/Enter:0
WOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/StackPushV2:0
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/f_acc:0
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Shape:0
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Enter:0
eOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0
iOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2:0
kOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc:0
eOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0
MOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape:0
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/Shape_1:0
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/Enter:0
WOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/StackPushV2:0
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/f_acc:0
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/Enter:0
YOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/StackPushV2:0
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/f_acc:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/Enter:0
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/StackPushV2:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/f_acc:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/Enter:0
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/StackPushV2:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/f_acc:0
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/Enter:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/StackPushV2:0
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/f_acc:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/Enter:0
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/Enter_1:0
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPushV2:0
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc:0
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc_1:0
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Shape:0
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/Shape_1:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_2_grad/Shape:0
SOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/Shape:0
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/Enter:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/Enter_1:0
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPushV2:0
bOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/StackPushV2_1:0
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/f_acc:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/f_acc_1:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/Enter:0
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/Enter_1:0
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2:0
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc:0
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1:0
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Shape:0
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/Shape_1:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/Enter:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/StackPushV2:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/f_acc:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/Enter:0
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/Enter_1:0
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2:0
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc:0
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1:0
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Shape:0
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/Shape_1:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/Enter:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/StackPushV2:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/f_acc:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/Enter:0
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/Enter_1:0
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2:0
nOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc:0
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1:0
POptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Shape:0
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/Shape_1:0
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/Enter:0
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/StackPushV2:0
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/f_acc:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/Enter:0
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/StackPushV2:0
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/f_acc:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/Enter:0
lOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/StackPushV2:0
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/f_acc:0
ROptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/Shape_1:0
"OptimizeLoss/gradients/f_count_3:0
"OptimizeLoss/gradients/f_count_4:0
"OptimizeLoss/gradients/f_count_5:0
%bidirectional_rnn/bw/bw/CheckSeqLen:0
!bidirectional_rnn/bw/bw/Minimum:0
%bidirectional_rnn/bw/bw/TensorArray:0
Tbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
'bidirectional_rnn/bw/bw/TensorArray_1:0
)bidirectional_rnn/bw/bw/strided_slice_1:0
%bidirectional_rnn/bw/bw/while/Enter:0
'bidirectional_rnn/bw/bw/while/Enter_1:0
'bidirectional_rnn/bw/bw/while/Enter_2:0
'bidirectional_rnn/bw/bw/while/Enter_3:0
$bidirectional_rnn/bw/bw/while/Exit:0
&bidirectional_rnn/bw/bw/while/Exit_1:0
&bidirectional_rnn/bw/bw/while/Exit_2:0
&bidirectional_rnn/bw/bw/while/Exit_3:0
2bidirectional_rnn/bw/bw/while/GreaterEqual/Enter:0
,bidirectional_rnn/bw/bw/while/GreaterEqual:0
.bidirectional_rnn/bw/bw/while/GreaterEqual_1:0
(bidirectional_rnn/bw/bw/while/Identity:0
*bidirectional_rnn/bw/bw/while/Identity_1:0
*bidirectional_rnn/bw/bw/while/Identity_2:0
*bidirectional_rnn/bw/bw/while/Identity_3:0
*bidirectional_rnn/bw/bw/while/Less/Enter:0
$bidirectional_rnn/bw/bw/while/Less:0
,bidirectional_rnn/bw/bw/while/Less_1/Enter:0
&bidirectional_rnn/bw/bw/while/Less_1:0
*bidirectional_rnn/bw/bw/while/LogicalAnd:0
(bidirectional_rnn/bw/bw/while/LoopCond:0
%bidirectional_rnn/bw/bw/while/Merge:0
%bidirectional_rnn/bw/bw/while/Merge:1
'bidirectional_rnn/bw/bw/while/Merge_1:0
'bidirectional_rnn/bw/bw/while/Merge_1:1
'bidirectional_rnn/bw/bw/while/Merge_2:0
'bidirectional_rnn/bw/bw/while/Merge_2:1
'bidirectional_rnn/bw/bw/while/Merge_3:0
'bidirectional_rnn/bw/bw/while/Merge_3:1
-bidirectional_rnn/bw/bw/while/NextIteration:0
/bidirectional_rnn/bw/bw/while/NextIteration_1:0
/bidirectional_rnn/bw/bw/while/NextIteration_2:0
/bidirectional_rnn/bw/bw/while/NextIteration_3:0
,bidirectional_rnn/bw/bw/while/Select/Enter:0
&bidirectional_rnn/bw/bw/while/Select:0
(bidirectional_rnn/bw/bw/while/Select_1:0
&bidirectional_rnn/bw/bw/while/Switch:0
&bidirectional_rnn/bw/bw/while/Switch:1
(bidirectional_rnn/bw/bw/while/Switch_1:0
(bidirectional_rnn/bw/bw/while/Switch_1:1
(bidirectional_rnn/bw/bw/while/Switch_2:0
(bidirectional_rnn/bw/bw/while/Switch_2:1
(bidirectional_rnn/bw/bw/while/Switch_3:0
(bidirectional_rnn/bw/bw/while/Switch_3:1
7bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0
9bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0
1bidirectional_rnn/bw/bw/while/TensorArrayReadV3:0
Ibidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Cbidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3:0
%bidirectional_rnn/bw/bw/while/add/y:0
#bidirectional_rnn/bw/bw/while/add:0
'bidirectional_rnn/bw/bw/while/add_1/y:0
%bidirectional_rnn/bw/bw/while/add_1:0
-bidirectional_rnn/bw/bw/while/dropout/Floor:0
-bidirectional_rnn/bw/bw/while/dropout/Shape:0
1bidirectional_rnn/bw/bw/while/dropout/add/Enter:0
+bidirectional_rnn/bw/bw/while/dropout/add:0
+bidirectional_rnn/bw/bw/while/dropout/div:0
+bidirectional_rnn/bw/bw/while/dropout/mul:0
Dbidirectional_rnn/bw/bw/while/dropout/random_uniform/RandomUniform:0
:bidirectional_rnn/bw/bw/while/dropout/random_uniform/max:0
:bidirectional_rnn/bw/bw/while/dropout/random_uniform/min:0
:bidirectional_rnn/bw/bw/while/dropout/random_uniform/mul:0
:bidirectional_rnn/bw/bw/while/dropout/random_uniform/sub:0
6bidirectional_rnn/bw/bw/while/dropout/random_uniform:0
bidirectional_rnn/bw/bw/zeros:0
8bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter:0
2bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2:0
8bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter:0
2bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3:0
0bidirectional_rnn/fw/fw/while/gru_cell/Const_1:0
7bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter:0
1bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2:0
7bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter:0
1bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3:0
2bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1:0
/bidirectional_rnn/fw/fw/while/gru_cell/Tanh_1:0
.bidirectional_rnn/fw/fw/while/gru_cell/add_1:0
6bidirectional_rnn/fw/fw/while/gru_cell/concat_2/axis:0
1bidirectional_rnn/fw/fw/while/gru_cell/concat_2:0
6bidirectional_rnn/fw/fw/while/gru_cell/concat_3/axis:0
1bidirectional_rnn/fw/fw/while/gru_cell/concat_3:0
.bidirectional_rnn/fw/fw/while/gru_cell/mul_3:0
.bidirectional_rnn/fw/fw/while/gru_cell/mul_4:0
.bidirectional_rnn/fw/fw/while/gru_cell/mul_5:0
:bidirectional_rnn/fw/fw/while/gru_cell/split_1/split_dim:0
0bidirectional_rnn/fw/fw/while/gru_cell/split_1:0
0bidirectional_rnn/fw/fw/while/gru_cell/split_1:1
0bidirectional_rnn/fw/fw/while/gru_cell/sub_1/x:0
.bidirectional_rnn/fw/fw/while/gru_cell/sub_1:0
3bidirectional_rnn/fw/gru_cell/candidate/bias/read:0
5bidirectional_rnn/fw/gru_cell/candidate/kernel/read:0
/bidirectional_rnn/fw/gru_cell/gates/bias/read:0
1bidirectional_rnn/fw/gru_cell/gates/kernel/read:0
sub:0W
)bidirectional_rnn/bw/bw/strided_slice_1:0*bidirectional_rnn/bw/bw/while/Less/Enter:0Q
!bidirectional_rnn/bw/bw/Minimum:0,bidirectional_rnn/bw/bw/while/Less_1/Enter:0b
'bidirectional_rnn/bw/bw/TensorArray_1:07bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0С
Tbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:09bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0l
1bidirectional_rnn/fw/gru_cell/gates/kernel/read:07bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2/Enter:0k
/bidirectional_rnn/fw/gru_cell/gates/bias/read:08bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_2/Enter:0p
5bidirectional_rnn/fw/gru_cell/candidate/kernel/read:07bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3/Enter:0o
3bidirectional_rnn/fw/gru_cell/candidate/bias/read:08bidirectional_rnn/fw/fw/while/gru_cell/BiasAdd_3/Enter:0:
sub:01bidirectional_rnn/bw/bw/while/dropout/add/Enter:0[
%bidirectional_rnn/bw/bw/CheckSeqLen:02bidirectional_rnn/bw/bw/while/GreaterEqual/Enter:0O
bidirectional_rnn/bw/bw/zeros:0,bidirectional_rnn/bw/bw/while/Select/Enter:0r
%bidirectional_rnn/bw/bw/TensorArray:0Ibidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0Є
wOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0wOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0о
UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc:0UOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Enter:0ж
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc:0QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Enter:0в
OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/f_acc:0OOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/Select_grad/Select/Enter:0╩
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc:0cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Enter:0╬
eOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0eOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0ж
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/f_acc:0QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul/Enter:0к
SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/f_acc:0SOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/mul_grad/mul_1/Enter:0╩
cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/f_acc:0cOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/BroadcastGradientArgs/Enter:0ж
QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/f_acc:0QOptimizeLoss/gradients/bidirectional_rnn/bw/bw/while/dropout/div_grad/Neg/Enter:0╨
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc:0fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/Enter:0╘
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/f_acc_1:0hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/add_1_grad/BroadcastGradientArgs/Enter_1:0╨
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc:0fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/Enter:0╘
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1:0hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/BroadcastGradientArgs/Enter_1:0░
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/f_acc:0VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_4_grad/mul_1/Enter:0╨
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc:0fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/Enter:0╘
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1:0hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/BroadcastGradientArgs/Enter_1:0м
TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/f_acc:0TOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul/Enter:0░
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/f_acc:0VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_5_grad/mul_1/Enter:0╨
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/f_acc:0fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/sub_1_grad/BroadcastGradientArgs/Enter:0╝
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/f_acc:0\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_3_grad/MatMul_1/Enter:0╕
ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/f_acc:0ZOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/Enter:0╝
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/f_acc_1:0\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/concat_3_grad/ShapeN/Enter_1:0╨
fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc:0fOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/Enter:0╘
hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1:0hOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/BroadcastGradientArgs/Enter_1:0░
VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/f_acc:0VOptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/mul_3_grad/mul_1/Enter:0─
`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/f_acc:0`OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/Sigmoid_1_grad/SigmoidGrad/Enter:0╝
\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/f_acc:0\OptimizeLoss/gradients/bidirectional_rnn/fw/fw/while/gru_cell/MatMul_2_grad/MatMul_1/Enter:0R%bidirectional_rnn/bw/bw/while/Enter:0R'bidirectional_rnn/bw/bw/while/Enter_1:0R'bidirectional_rnn/bw/bw/while/Enter_2:0R'bidirectional_rnn/bw/bw/while/Enter_3:0R"OptimizeLoss/gradients/f_count_4:0Z)bidirectional_rnn/bw/bw/strided_slice_1:0"N
	summariesA
?
(OptimizeLoss/global_norm/gradient_norm:0
OptimizeLoss/loss:0""
train_op

OptimizeLoss/train*╓
word_segmentation└
2
inputs(
inputs:0	                  
'
lengths
	lengths:0	         

training

training:0
 '
outputs
	outputs:0	         tensorflow/serving/predict