΀;
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??8
|
dense_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_100/kernel
u
$dense_100/kernel/Read/ReadVariableOpReadVariableOpdense_100/kernel*
_output_shapes

:  *
dtype0
t
dense_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_100/bias
m
"dense_100/bias/Read/ReadVariableOpReadVariableOpdense_100/bias*
_output_shapes
: *
dtype0
|
dense_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_101/kernel
u
$dense_101/kernel/Read/ReadVariableOpReadVariableOpdense_101/kernel*
_output_shapes

: *
dtype0
t
dense_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_101/bias
m
"dense_101/bias/Read/ReadVariableOpReadVariableOpdense_101/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_141/lstm_cell_144/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_141/lstm_cell_144/kernel
?
1lstm_141/lstm_cell_144/kernel/Read/ReadVariableOpReadVariableOplstm_141/lstm_cell_144/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_141/lstm_cell_144/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*8
shared_name)'lstm_141/lstm_cell_144/recurrent_kernel
?
;lstm_141/lstm_cell_144/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_141/lstm_cell_144/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_141/lstm_cell_144/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_141/lstm_cell_144/bias
?
/lstm_141/lstm_cell_144/bias/Read/ReadVariableOpReadVariableOplstm_141/lstm_cell_144/bias*
_output_shapes	
:?*
dtype0
?
lstm_142/lstm_cell_145/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*.
shared_namelstm_142/lstm_cell_145/kernel
?
1lstm_142/lstm_cell_145/kernel/Read/ReadVariableOpReadVariableOplstm_142/lstm_cell_145/kernel*
_output_shapes
:	 ?*
dtype0
?
'lstm_142/lstm_cell_145/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*8
shared_name)'lstm_142/lstm_cell_145/recurrent_kernel
?
;lstm_142/lstm_cell_145/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_142/lstm_cell_145/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_142/lstm_cell_145/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_142/lstm_cell_145/bias
?
/lstm_142/lstm_cell_145/bias/Read/ReadVariableOpReadVariableOplstm_142/lstm_cell_145/bias*
_output_shapes	
:?*
dtype0
?
lstm_143/lstm_cell_146/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*.
shared_namelstm_143/lstm_cell_146/kernel
?
1lstm_143/lstm_cell_146/kernel/Read/ReadVariableOpReadVariableOplstm_143/lstm_cell_146/kernel*
_output_shapes
:	 ?*
dtype0
?
'lstm_143/lstm_cell_146/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*8
shared_name)'lstm_143/lstm_cell_146/recurrent_kernel
?
;lstm_143/lstm_cell_146/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_143/lstm_cell_146/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_143/lstm_cell_146/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_143/lstm_cell_146/bias
?
/lstm_143/lstm_cell_146/bias/Read/ReadVariableOpReadVariableOplstm_143/lstm_cell_146/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_100/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_100/kernel/m
?
+Adam/dense_100/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_100/kernel/m*
_output_shapes

:  *
dtype0
?
Adam/dense_100/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_100/bias/m
{
)Adam/dense_100/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_100/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_101/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_101/kernel/m
?
+Adam/dense_101/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_101/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_101/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_101/bias/m
{
)Adam/dense_101/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_101/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_141/lstm_cell_144/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_141/lstm_cell_144/kernel/m
?
8Adam/lstm_141/lstm_cell_144/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_141/lstm_cell_144/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_141/lstm_cell_144/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*?
shared_name0.Adam/lstm_141/lstm_cell_144/recurrent_kernel/m
?
BAdam/lstm_141/lstm_cell_144/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_141/lstm_cell_144/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
"Adam/lstm_141/lstm_cell_144/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_141/lstm_cell_144/bias/m
?
6Adam/lstm_141/lstm_cell_144/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_141/lstm_cell_144/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_142/lstm_cell_145/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*5
shared_name&$Adam/lstm_142/lstm_cell_145/kernel/m
?
8Adam/lstm_142/lstm_cell_145/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_142/lstm_cell_145/kernel/m*
_output_shapes
:	 ?*
dtype0
?
.Adam/lstm_142/lstm_cell_145/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*?
shared_name0.Adam/lstm_142/lstm_cell_145/recurrent_kernel/m
?
BAdam/lstm_142/lstm_cell_145/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_142/lstm_cell_145/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
"Adam/lstm_142/lstm_cell_145/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_142/lstm_cell_145/bias/m
?
6Adam/lstm_142/lstm_cell_145/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_142/lstm_cell_145/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_143/lstm_cell_146/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*5
shared_name&$Adam/lstm_143/lstm_cell_146/kernel/m
?
8Adam/lstm_143/lstm_cell_146/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_143/lstm_cell_146/kernel/m*
_output_shapes
:	 ?*
dtype0
?
.Adam/lstm_143/lstm_cell_146/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*?
shared_name0.Adam/lstm_143/lstm_cell_146/recurrent_kernel/m
?
BAdam/lstm_143/lstm_cell_146/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_143/lstm_cell_146/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
"Adam/lstm_143/lstm_cell_146/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_143/lstm_cell_146/bias/m
?
6Adam/lstm_143/lstm_cell_146/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_143/lstm_cell_146/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_100/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_100/kernel/v
?
+Adam/dense_100/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_100/kernel/v*
_output_shapes

:  *
dtype0
?
Adam/dense_100/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_100/bias/v
{
)Adam/dense_100/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_100/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_101/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_101/kernel/v
?
+Adam/dense_101/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_101/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_101/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_101/bias/v
{
)Adam/dense_101/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_101/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_141/lstm_cell_144/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_141/lstm_cell_144/kernel/v
?
8Adam/lstm_141/lstm_cell_144/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_141/lstm_cell_144/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_141/lstm_cell_144/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*?
shared_name0.Adam/lstm_141/lstm_cell_144/recurrent_kernel/v
?
BAdam/lstm_141/lstm_cell_144/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_141/lstm_cell_144/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
"Adam/lstm_141/lstm_cell_144/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_141/lstm_cell_144/bias/v
?
6Adam/lstm_141/lstm_cell_144/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_141/lstm_cell_144/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_142/lstm_cell_145/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*5
shared_name&$Adam/lstm_142/lstm_cell_145/kernel/v
?
8Adam/lstm_142/lstm_cell_145/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_142/lstm_cell_145/kernel/v*
_output_shapes
:	 ?*
dtype0
?
.Adam/lstm_142/lstm_cell_145/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*?
shared_name0.Adam/lstm_142/lstm_cell_145/recurrent_kernel/v
?
BAdam/lstm_142/lstm_cell_145/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_142/lstm_cell_145/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
"Adam/lstm_142/lstm_cell_145/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_142/lstm_cell_145/bias/v
?
6Adam/lstm_142/lstm_cell_145/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_142/lstm_cell_145/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_143/lstm_cell_146/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*5
shared_name&$Adam/lstm_143/lstm_cell_146/kernel/v
?
8Adam/lstm_143/lstm_cell_146/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_143/lstm_cell_146/kernel/v*
_output_shapes
:	 ?*
dtype0
?
.Adam/lstm_143/lstm_cell_146/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*?
shared_name0.Adam/lstm_143/lstm_cell_146/recurrent_kernel/v
?
BAdam/lstm_143/lstm_cell_146/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_143/lstm_cell_146/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
"Adam/lstm_143/lstm_cell_146/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_143/lstm_cell_146/bias/v
?
6Adam/lstm_143/lstm_cell_146/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_143/lstm_cell_146/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?T
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?S
value?SB?S B?S
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
l
cell

state_spec
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
l
cell

state_spec
regularization_losses
	variables
trainable_variables
	keras_api
R
 regularization_losses
!	variables
"trainable_variables
#	keras_api
l
$cell
%
state_spec
&regularization_losses
'	variables
(trainable_variables
)	keras_api
R
*regularization_losses
+	variables
,trainable_variables
-	keras_api
h

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
R
4regularization_losses
5	variables
6trainable_variables
7	keras_api
h

8kernel
9bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
?
>iter

?beta_1

@beta_2
	Adecay
Blearning_rate.m?/m?8m?9m?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?.v?/v?8v?9v?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?
 
^
C0
D1
E2
F3
G4
H5
I6
J7
K8
.9
/10
811
912
^
C0
D1
E2
F3
G4
H5
I6
J7
K8
.9
/10
811
912
?
regularization_losses
	variables
Lmetrics
Mnon_trainable_variables
Nlayer_metrics
trainable_variables
Olayer_regularization_losses

Players
 
?
Q
state_size

Ckernel
Drecurrent_kernel
Ebias
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
 
 

C0
D1
E2

C0
D1
E2
?
regularization_losses
	variables
Vmetrics

Wstates
Xnon_trainable_variables
Ylayer_metrics
trainable_variables
Zlayer_regularization_losses

[layers
 
 
 
?
regularization_losses
	variables
\metrics
]non_trainable_variables
trainable_variables
^layer_regularization_losses
_layer_metrics

`layers
?
a
state_size

Fkernel
Grecurrent_kernel
Hbias
bregularization_losses
c	variables
dtrainable_variables
e	keras_api
 
 

F0
G1
H2

F0
G1
H2
?
regularization_losses
	variables
fmetrics

gstates
hnon_trainable_variables
ilayer_metrics
trainable_variables
jlayer_regularization_losses

klayers
 
 
 
?
 regularization_losses
!	variables
lmetrics
mnon_trainable_variables
"trainable_variables
nlayer_regularization_losses
olayer_metrics

players
?
q
state_size

Ikernel
Jrecurrent_kernel
Kbias
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
 
 

I0
J1
K2

I0
J1
K2
?
&regularization_losses
'	variables
vmetrics

wstates
xnon_trainable_variables
ylayer_metrics
(trainable_variables
zlayer_regularization_losses

{layers
 
 
 
?
*regularization_losses
+	variables
|metrics
}non_trainable_variables
,trainable_variables
~layer_regularization_losses
layer_metrics
?layers
\Z
VARIABLE_VALUEdense_100/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_100/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

.0
/1

.0
/1
?
0regularization_losses
1	variables
?metrics
?non_trainable_variables
2trainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
 
 
 
?
4regularization_losses
5	variables
?metrics
?non_trainable_variables
6trainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
\Z
VARIABLE_VALUEdense_101/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_101/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

80
91

80
91
?
:regularization_losses
;	variables
?metrics
?non_trainable_variables
<trainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_141/lstm_cell_144/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_141/lstm_cell_144/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_141/lstm_cell_144/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_142/lstm_cell_145/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_142/lstm_cell_145/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_142/lstm_cell_145/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_143/lstm_cell_146/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_143/lstm_cell_146/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_143/lstm_cell_146/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 
 
 
?
0
1
2
3
4
5
6
7
	8
 
 

C0
D1
E2

C0
D1
E2
?
Rregularization_losses
S	variables
?metrics
?non_trainable_variables
Ttrainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
 
 
 
 
 

0
 
 
 
 
 
 
 

F0
G1
H2

F0
G1
H2
?
bregularization_losses
c	variables
?metrics
?non_trainable_variables
dtrainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
 
 
 
 
 

0
 
 
 
 
 
 
 

I0
J1
K2

I0
J1
K2
?
rregularization_losses
s	variables
?metrics
?non_trainable_variables
ttrainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
 
 
 
 
 

$0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}
VARIABLE_VALUEAdam/dense_100/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_100/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_101/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_101/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_141/lstm_cell_144/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_141/lstm_cell_144/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_141/lstm_cell_144/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_142/lstm_cell_145/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_142/lstm_cell_145/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_142/lstm_cell_145/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_143/lstm_cell_146/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_143/lstm_cell_146/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_143/lstm_cell_146/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_100/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_100/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_101/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_101/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_141/lstm_cell_144/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_141/lstm_cell_144/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_141/lstm_cell_144/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_142/lstm_cell_145/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_142/lstm_cell_145/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_142/lstm_cell_145/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_143/lstm_cell_146/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_143/lstm_cell_146/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_143/lstm_cell_146/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_141_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_141_inputlstm_141/lstm_cell_144/kernel'lstm_141/lstm_cell_144/recurrent_kernellstm_141/lstm_cell_144/biaslstm_142/lstm_cell_145/kernel'lstm_142/lstm_cell_145/recurrent_kernellstm_142/lstm_cell_145/biaslstm_143/lstm_cell_146/kernel'lstm_143/lstm_cell_146/recurrent_kernellstm_143/lstm_cell_146/biasdense_100/kerneldense_100/biasdense_101/kerneldense_101/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_2823365
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_100/kernel/Read/ReadVariableOp"dense_100/bias/Read/ReadVariableOp$dense_101/kernel/Read/ReadVariableOp"dense_101/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_141/lstm_cell_144/kernel/Read/ReadVariableOp;lstm_141/lstm_cell_144/recurrent_kernel/Read/ReadVariableOp/lstm_141/lstm_cell_144/bias/Read/ReadVariableOp1lstm_142/lstm_cell_145/kernel/Read/ReadVariableOp;lstm_142/lstm_cell_145/recurrent_kernel/Read/ReadVariableOp/lstm_142/lstm_cell_145/bias/Read/ReadVariableOp1lstm_143/lstm_cell_146/kernel/Read/ReadVariableOp;lstm_143/lstm_cell_146/recurrent_kernel/Read/ReadVariableOp/lstm_143/lstm_cell_146/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_100/kernel/m/Read/ReadVariableOp)Adam/dense_100/bias/m/Read/ReadVariableOp+Adam/dense_101/kernel/m/Read/ReadVariableOp)Adam/dense_101/bias/m/Read/ReadVariableOp8Adam/lstm_141/lstm_cell_144/kernel/m/Read/ReadVariableOpBAdam/lstm_141/lstm_cell_144/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_141/lstm_cell_144/bias/m/Read/ReadVariableOp8Adam/lstm_142/lstm_cell_145/kernel/m/Read/ReadVariableOpBAdam/lstm_142/lstm_cell_145/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_142/lstm_cell_145/bias/m/Read/ReadVariableOp8Adam/lstm_143/lstm_cell_146/kernel/m/Read/ReadVariableOpBAdam/lstm_143/lstm_cell_146/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_143/lstm_cell_146/bias/m/Read/ReadVariableOp+Adam/dense_100/kernel/v/Read/ReadVariableOp)Adam/dense_100/bias/v/Read/ReadVariableOp+Adam/dense_101/kernel/v/Read/ReadVariableOp)Adam/dense_101/bias/v/Read/ReadVariableOp8Adam/lstm_141/lstm_cell_144/kernel/v/Read/ReadVariableOpBAdam/lstm_141/lstm_cell_144/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_141/lstm_cell_144/bias/v/Read/ReadVariableOp8Adam/lstm_142/lstm_cell_145/kernel/v/Read/ReadVariableOpBAdam/lstm_142/lstm_cell_145/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_142/lstm_cell_145/bias/v/Read/ReadVariableOp8Adam/lstm_143/lstm_cell_146/kernel/v/Read/ReadVariableOpBAdam/lstm_143/lstm_cell_146/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_143/lstm_cell_146/bias/v/Read/ReadVariableOpConst*=
Tin6
422	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_2826931
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_100/kerneldense_100/biasdense_101/kerneldense_101/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_141/lstm_cell_144/kernel'lstm_141/lstm_cell_144/recurrent_kernellstm_141/lstm_cell_144/biaslstm_142/lstm_cell_145/kernel'lstm_142/lstm_cell_145/recurrent_kernellstm_142/lstm_cell_145/biaslstm_143/lstm_cell_146/kernel'lstm_143/lstm_cell_146/recurrent_kernellstm_143/lstm_cell_146/biastotalcounttotal_1count_1Adam/dense_100/kernel/mAdam/dense_100/bias/mAdam/dense_101/kernel/mAdam/dense_101/bias/m$Adam/lstm_141/lstm_cell_144/kernel/m.Adam/lstm_141/lstm_cell_144/recurrent_kernel/m"Adam/lstm_141/lstm_cell_144/bias/m$Adam/lstm_142/lstm_cell_145/kernel/m.Adam/lstm_142/lstm_cell_145/recurrent_kernel/m"Adam/lstm_142/lstm_cell_145/bias/m$Adam/lstm_143/lstm_cell_146/kernel/m.Adam/lstm_143/lstm_cell_146/recurrent_kernel/m"Adam/lstm_143/lstm_cell_146/bias/mAdam/dense_100/kernel/vAdam/dense_100/bias/vAdam/dense_101/kernel/vAdam/dense_101/bias/v$Adam/lstm_141/lstm_cell_144/kernel/v.Adam/lstm_141/lstm_cell_144/recurrent_kernel/v"Adam/lstm_141/lstm_cell_144/bias/v$Adam/lstm_142/lstm_cell_145/kernel/v.Adam/lstm_142/lstm_cell_145/recurrent_kernel/v"Adam/lstm_142/lstm_cell_145/bias/v$Adam/lstm_143/lstm_cell_146/kernel/v.Adam/lstm_143/lstm_cell_146/recurrent_kernel/v"Adam/lstm_143/lstm_cell_146/bias/v*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_2827085??6
?\
?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2826182

inputs?
,lstm_cell_146_matmul_readvariableop_resource:	 ?A
.lstm_cell_146_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_146_biasadd_readvariableop_resource:	?
identity??$lstm_cell_146/BiasAdd/ReadVariableOp?#lstm_cell_146/MatMul/ReadVariableOp?%lstm_cell_146/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_146/MatMul/ReadVariableOp?
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/MatMul?
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_146/MatMul_1/ReadVariableOp?
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/MatMul_1?
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/add?
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_146/BiasAdd/ReadVariableOp?
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/BiasAdd?
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_146/split/split_dim?
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_146/split?
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid?
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid_1?
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul?
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Relu?
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul_1?
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/add_1?
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid_2
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Relu_1?
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2826098*
condR
while_cond_2826097*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
)sequential_37_lstm_141_while_cond_2819627J
Fsequential_37_lstm_141_while_sequential_37_lstm_141_while_loop_counterP
Lsequential_37_lstm_141_while_sequential_37_lstm_141_while_maximum_iterations,
(sequential_37_lstm_141_while_placeholder.
*sequential_37_lstm_141_while_placeholder_1.
*sequential_37_lstm_141_while_placeholder_2.
*sequential_37_lstm_141_while_placeholder_3L
Hsequential_37_lstm_141_while_less_sequential_37_lstm_141_strided_slice_1c
_sequential_37_lstm_141_while_sequential_37_lstm_141_while_cond_2819627___redundant_placeholder0c
_sequential_37_lstm_141_while_sequential_37_lstm_141_while_cond_2819627___redundant_placeholder1c
_sequential_37_lstm_141_while_sequential_37_lstm_141_while_cond_2819627___redundant_placeholder2c
_sequential_37_lstm_141_while_sequential_37_lstm_141_while_cond_2819627___redundant_placeholder3)
%sequential_37_lstm_141_while_identity
?
!sequential_37/lstm_141/while/LessLess(sequential_37_lstm_141_while_placeholderHsequential_37_lstm_141_while_less_sequential_37_lstm_141_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_37/lstm_141/while/Less?
%sequential_37/lstm_141/while/IdentityIdentity%sequential_37/lstm_141/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_37/lstm_141/while/Identity"W
%sequential_37_lstm_141_while_identity.sequential_37/lstm_141/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?\
?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2825507

inputs?
,lstm_cell_145_matmul_readvariableop_resource:	 ?A
.lstm_cell_145_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_145_biasadd_readvariableop_resource:	?
identity??$lstm_cell_145/BiasAdd/ReadVariableOp?#lstm_cell_145/MatMul/ReadVariableOp?%lstm_cell_145/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_145/MatMul/ReadVariableOp?
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/MatMul?
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_145/MatMul_1/ReadVariableOp?
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/MatMul_1?
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/add?
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_145/BiasAdd/ReadVariableOp?
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/BiasAdd?
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_145/split/split_dim?
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_145/split?
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid?
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid_1?
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul?
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Relu?
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul_1?
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/add_1?
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid_2
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Relu_1?
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2825423*
condR
while_cond_2825422*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
H__inference_dropout_206_layer_call_and_return_conditional_losses_2826394

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
while_cond_2820111
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2820111___redundant_placeholder05
1while_while_cond_2820111___redundant_placeholder15
1while_while_cond_2820111___redundant_placeholder25
1while_while_cond_2820111___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
*__inference_lstm_141_layer_call_fn_2825005
inputs_0
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_141_layer_call_and_return_conditional_losses_28203912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2822826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2822826___redundant_placeholder05
1while_while_cond_2822826___redundant_placeholder15
1while_while_cond_2822826___redundant_placeholder25
1while_while_cond_2822826___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
??
?
while_body_2826249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_146_matmul_readvariableop_resource_0:	 ?I
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_146_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_146_matmul_readvariableop_resource:	 ?G
4while_lstm_cell_146_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_146_biasadd_readvariableop_resource:	???*while/lstm_cell_146/BiasAdd/ReadVariableOp?)while/lstm_cell_146/MatMul/ReadVariableOp?+while/lstm_cell_146/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_146/MatMul/ReadVariableOp?
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/MatMul?
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_146/MatMul_1/ReadVariableOp?
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/MatMul_1?
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/add?
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_146/BiasAdd/ReadVariableOp?
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/BiasAdd?
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_146/split/split_dim?
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_146/split?
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid?
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid_1?
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul?
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Relu?
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul_1?
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/add_1?
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid_2?
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Relu_1?
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
??
?
while_body_2824748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_144_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_144_matmul_readvariableop_resource:	?G
4while_lstm_cell_144_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_144_biasadd_readvariableop_resource:	???*while/lstm_cell_144/BiasAdd/ReadVariableOp?)while/lstm_cell_144/MatMul/ReadVariableOp?+while/lstm_cell_144/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOp?
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/MatMul?
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOp?
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/MatMul_1?
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/add?
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOp?
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/BiasAdd?
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim?
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_144/split?
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid?
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid_1?
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul?
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Relu?
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul_1?
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/add_1?
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid_2?
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Relu_1?
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
g
H__inference_dropout_205_layer_call_and_return_conditional_losses_2822744

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:????????? 2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:????????? 2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? :S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?L
?

lstm_143_while_body_2824204.
*lstm_143_while_lstm_143_while_loop_counter4
0lstm_143_while_lstm_143_while_maximum_iterations
lstm_143_while_placeholder 
lstm_143_while_placeholder_1 
lstm_143_while_placeholder_2 
lstm_143_while_placeholder_3-
)lstm_143_while_lstm_143_strided_slice_1_0i
elstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_143_while_lstm_cell_146_matmul_readvariableop_resource_0:	 ?R
?lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource_0:	 ?M
>lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource_0:	?
lstm_143_while_identity
lstm_143_while_identity_1
lstm_143_while_identity_2
lstm_143_while_identity_3
lstm_143_while_identity_4
lstm_143_while_identity_5+
'lstm_143_while_lstm_143_strided_slice_1g
clstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensorN
;lstm_143_while_lstm_cell_146_matmul_readvariableop_resource:	 ?P
=lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource:	 ?K
<lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource:	???3lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp?2lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp?4lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp?
@lstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2B
@lstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shape?
2lstm_143/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensor_0lstm_143_while_placeholderIlstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype024
2lstm_143/while/TensorArrayV2Read/TensorListGetItem?
2lstm_143/while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp=lstm_143_while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype024
2lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp?
#lstm_143/while/lstm_cell_146/MatMulMatMul9lstm_143/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_143/while/lstm_cell_146/MatMul?
4lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp?lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype026
4lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp?
%lstm_143/while/lstm_cell_146/MatMul_1MatMullstm_143_while_placeholder_2<lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%lstm_143/while/lstm_cell_146/MatMul_1?
 lstm_143/while/lstm_cell_146/addAddV2-lstm_143/while/lstm_cell_146/MatMul:product:0/lstm_143/while/lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2"
 lstm_143/while/lstm_cell_146/add?
3lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp>lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype025
3lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp?
$lstm_143/while/lstm_cell_146/BiasAddBiasAdd$lstm_143/while/lstm_cell_146/add:z:0;lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$lstm_143/while/lstm_cell_146/BiasAdd?
,lstm_143/while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_143/while/lstm_cell_146/split/split_dim?
"lstm_143/while/lstm_cell_146/splitSplit5lstm_143/while/lstm_cell_146/split/split_dim:output:0-lstm_143/while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2$
"lstm_143/while/lstm_cell_146/split?
$lstm_143/while/lstm_cell_146/SigmoidSigmoid+lstm_143/while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_143/while/lstm_cell_146/Sigmoid?
&lstm_143/while/lstm_cell_146/Sigmoid_1Sigmoid+lstm_143/while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2(
&lstm_143/while/lstm_cell_146/Sigmoid_1?
 lstm_143/while/lstm_cell_146/mulMul*lstm_143/while/lstm_cell_146/Sigmoid_1:y:0lstm_143_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_143/while/lstm_cell_146/mul?
!lstm_143/while/lstm_cell_146/ReluRelu+lstm_143/while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2#
!lstm_143/while/lstm_cell_146/Relu?
"lstm_143/while/lstm_cell_146/mul_1Mul(lstm_143/while/lstm_cell_146/Sigmoid:y:0/lstm_143/while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2$
"lstm_143/while/lstm_cell_146/mul_1?
"lstm_143/while/lstm_cell_146/add_1AddV2$lstm_143/while/lstm_cell_146/mul:z:0&lstm_143/while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_143/while/lstm_cell_146/add_1?
&lstm_143/while/lstm_cell_146/Sigmoid_2Sigmoid+lstm_143/while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2(
&lstm_143/while/lstm_cell_146/Sigmoid_2?
#lstm_143/while/lstm_cell_146/Relu_1Relu&lstm_143/while/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2%
#lstm_143/while/lstm_cell_146/Relu_1?
"lstm_143/while/lstm_cell_146/mul_2Mul*lstm_143/while/lstm_cell_146/Sigmoid_2:y:01lstm_143/while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2$
"lstm_143/while/lstm_cell_146/mul_2?
3lstm_143/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_143_while_placeholder_1lstm_143_while_placeholder&lstm_143/while/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_143/while/TensorArrayV2Write/TensorListSetItemn
lstm_143/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_143/while/add/y?
lstm_143/while/addAddV2lstm_143_while_placeholderlstm_143/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_143/while/addr
lstm_143/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_143/while/add_1/y?
lstm_143/while/add_1AddV2*lstm_143_while_lstm_143_while_loop_counterlstm_143/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_143/while/add_1?
lstm_143/while/IdentityIdentitylstm_143/while/add_1:z:0^lstm_143/while/NoOp*
T0*
_output_shapes
: 2
lstm_143/while/Identity?
lstm_143/while/Identity_1Identity0lstm_143_while_lstm_143_while_maximum_iterations^lstm_143/while/NoOp*
T0*
_output_shapes
: 2
lstm_143/while/Identity_1?
lstm_143/while/Identity_2Identitylstm_143/while/add:z:0^lstm_143/while/NoOp*
T0*
_output_shapes
: 2
lstm_143/while/Identity_2?
lstm_143/while/Identity_3IdentityClstm_143/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_143/while/NoOp*
T0*
_output_shapes
: 2
lstm_143/while/Identity_3?
lstm_143/while/Identity_4Identity&lstm_143/while/lstm_cell_146/mul_2:z:0^lstm_143/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_143/while/Identity_4?
lstm_143/while/Identity_5Identity&lstm_143/while/lstm_cell_146/add_1:z:0^lstm_143/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_143/while/Identity_5?
lstm_143/while/NoOpNoOp4^lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp3^lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp5^lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_143/while/NoOp";
lstm_143_while_identity lstm_143/while/Identity:output:0"?
lstm_143_while_identity_1"lstm_143/while/Identity_1:output:0"?
lstm_143_while_identity_2"lstm_143/while/Identity_2:output:0"?
lstm_143_while_identity_3"lstm_143/while/Identity_3:output:0"?
lstm_143_while_identity_4"lstm_143/while/Identity_4:output:0"?
lstm_143_while_identity_5"lstm_143/while/Identity_5:output:0"T
'lstm_143_while_lstm_143_strided_slice_1)lstm_143_while_lstm_143_strided_slice_1_0"~
<lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource>lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource_0"?
=lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource?lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource_0"|
;lstm_143_while_lstm_cell_146_matmul_readvariableop_resource=lstm_143_while_lstm_cell_146_matmul_readvariableop_resource_0"?
clstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensorelstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2j
3lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp3lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp2h
2lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp2lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp2l
4lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp4lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?&
?
while_body_2820952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_145_2820976_0:	 ?0
while_lstm_cell_145_2820978_0:	 ?,
while_lstm_cell_145_2820980_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_145_2820976:	 ?.
while_lstm_cell_145_2820978:	 ?*
while_lstm_cell_145_2820980:	???+while/lstm_cell_145/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_145/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_145_2820976_0while_lstm_cell_145_2820978_0while_lstm_cell_145_2820980_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_28208742-
+while/lstm_cell_145/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_145/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_145/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_145/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp,^while/lstm_cell_145/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_145_2820976while_lstm_cell_145_2820976_0"<
while_lstm_cell_145_2820978while_lstm_cell_145_2820978_0"<
while_lstm_cell_145_2820980while_lstm_cell_145_2820980_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2Z
+while/lstm_cell_145/StatefulPartitionedCall+while/lstm_cell_145/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
g
H__inference_dropout_204_layer_call_and_return_conditional_losses_2825044

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:????????? 2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:????????? 2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? :S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
while_body_2825121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_145_matmul_readvariableop_resource_0:	 ?I
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_145_matmul_readvariableop_resource:	 ?G
4while_lstm_cell_145_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_145_biasadd_readvariableop_resource:	???*while/lstm_cell_145/BiasAdd/ReadVariableOp?)while/lstm_cell_145/MatMul/ReadVariableOp?+while/lstm_cell_145/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_145/MatMul/ReadVariableOp?
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/MatMul?
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_145/MatMul_1/ReadVariableOp?
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/MatMul_1?
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/add?
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_145/BiasAdd/ReadVariableOp?
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/BiasAdd?
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_145/split/split_dim?
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_145/split?
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid?
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid_1?
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul?
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Relu?
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul_1?
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/add_1?
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid_2?
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Relu_1?
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2825422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2825422___redundant_placeholder05
1while_while_cond_2825422___redundant_placeholder15
1while_while_cond_2825422___redundant_placeholder25
1while_while_cond_2825422___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2825795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2825795___redundant_placeholder05
1while_while_cond_2825795___redundant_placeholder15
1while_while_cond_2825795___redundant_placeholder25
1while_while_cond_2825795___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
/__inference_lstm_cell_144_layer_call_fn_2826551

inputs
states_0
states_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_28200982
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?`
?
)sequential_37_lstm_142_while_body_2819776J
Fsequential_37_lstm_142_while_sequential_37_lstm_142_while_loop_counterP
Lsequential_37_lstm_142_while_sequential_37_lstm_142_while_maximum_iterations,
(sequential_37_lstm_142_while_placeholder.
*sequential_37_lstm_142_while_placeholder_1.
*sequential_37_lstm_142_while_placeholder_2.
*sequential_37_lstm_142_while_placeholder_3I
Esequential_37_lstm_142_while_sequential_37_lstm_142_strided_slice_1_0?
?sequential_37_lstm_142_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_142_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_37_lstm_142_while_lstm_cell_145_matmul_readvariableop_resource_0:	 ?`
Msequential_37_lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource_0:	 ?[
Lsequential_37_lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource_0:	?)
%sequential_37_lstm_142_while_identity+
'sequential_37_lstm_142_while_identity_1+
'sequential_37_lstm_142_while_identity_2+
'sequential_37_lstm_142_while_identity_3+
'sequential_37_lstm_142_while_identity_4+
'sequential_37_lstm_142_while_identity_5G
Csequential_37_lstm_142_while_sequential_37_lstm_142_strided_slice_1?
sequential_37_lstm_142_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_142_tensorarrayunstack_tensorlistfromtensor\
Isequential_37_lstm_142_while_lstm_cell_145_matmul_readvariableop_resource:	 ?^
Ksequential_37_lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource:	 ?Y
Jsequential_37_lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource:	???Asequential_37/lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp?@sequential_37/lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp?Bsequential_37/lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp?
Nsequential_37/lstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2P
Nsequential_37/lstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shape?
@sequential_37/lstm_142/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_37_lstm_142_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_142_tensorarrayunstack_tensorlistfromtensor_0(sequential_37_lstm_142_while_placeholderWsequential_37/lstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02B
@sequential_37/lstm_142/while/TensorArrayV2Read/TensorListGetItem?
@sequential_37/lstm_142/while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOpKsequential_37_lstm_142_while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02B
@sequential_37/lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp?
1sequential_37/lstm_142/while/lstm_cell_145/MatMulMatMulGsequential_37/lstm_142/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_37/lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????23
1sequential_37/lstm_142/while/lstm_cell_145/MatMul?
Bsequential_37/lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOpMsequential_37_lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02D
Bsequential_37/lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp?
3sequential_37/lstm_142/while/lstm_cell_145/MatMul_1MatMul*sequential_37_lstm_142_while_placeholder_2Jsequential_37/lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????25
3sequential_37/lstm_142/while/lstm_cell_145/MatMul_1?
.sequential_37/lstm_142/while/lstm_cell_145/addAddV2;sequential_37/lstm_142/while/lstm_cell_145/MatMul:product:0=sequential_37/lstm_142/while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????20
.sequential_37/lstm_142/while/lstm_cell_145/add?
Asequential_37/lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOpLsequential_37_lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02C
Asequential_37/lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp?
2sequential_37/lstm_142/while/lstm_cell_145/BiasAddBiasAdd2sequential_37/lstm_142/while/lstm_cell_145/add:z:0Isequential_37/lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????24
2sequential_37/lstm_142/while/lstm_cell_145/BiasAdd?
:sequential_37/lstm_142/while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_37/lstm_142/while/lstm_cell_145/split/split_dim?
0sequential_37/lstm_142/while/lstm_cell_145/splitSplitCsequential_37/lstm_142/while/lstm_cell_145/split/split_dim:output:0;sequential_37/lstm_142/while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split22
0sequential_37/lstm_142/while/lstm_cell_145/split?
2sequential_37/lstm_142/while/lstm_cell_145/SigmoidSigmoid9sequential_37/lstm_142/while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 24
2sequential_37/lstm_142/while/lstm_cell_145/Sigmoid?
4sequential_37/lstm_142/while/lstm_cell_145/Sigmoid_1Sigmoid9sequential_37/lstm_142/while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 26
4sequential_37/lstm_142/while/lstm_cell_145/Sigmoid_1?
.sequential_37/lstm_142/while/lstm_cell_145/mulMul8sequential_37/lstm_142/while/lstm_cell_145/Sigmoid_1:y:0*sequential_37_lstm_142_while_placeholder_3*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_142/while/lstm_cell_145/mul?
/sequential_37/lstm_142/while/lstm_cell_145/ReluRelu9sequential_37/lstm_142/while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 21
/sequential_37/lstm_142/while/lstm_cell_145/Relu?
0sequential_37/lstm_142/while/lstm_cell_145/mul_1Mul6sequential_37/lstm_142/while/lstm_cell_145/Sigmoid:y:0=sequential_37/lstm_142/while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 22
0sequential_37/lstm_142/while/lstm_cell_145/mul_1?
0sequential_37/lstm_142/while/lstm_cell_145/add_1AddV22sequential_37/lstm_142/while/lstm_cell_145/mul:z:04sequential_37/lstm_142/while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 22
0sequential_37/lstm_142/while/lstm_cell_145/add_1?
4sequential_37/lstm_142/while/lstm_cell_145/Sigmoid_2Sigmoid9sequential_37/lstm_142/while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 26
4sequential_37/lstm_142/while/lstm_cell_145/Sigmoid_2?
1sequential_37/lstm_142/while/lstm_cell_145/Relu_1Relu4sequential_37/lstm_142/while/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 23
1sequential_37/lstm_142/while/lstm_cell_145/Relu_1?
0sequential_37/lstm_142/while/lstm_cell_145/mul_2Mul8sequential_37/lstm_142/while/lstm_cell_145/Sigmoid_2:y:0?sequential_37/lstm_142/while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 22
0sequential_37/lstm_142/while/lstm_cell_145/mul_2?
Asequential_37/lstm_142/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_37_lstm_142_while_placeholder_1(sequential_37_lstm_142_while_placeholder4sequential_37/lstm_142/while/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype02C
Asequential_37/lstm_142/while/TensorArrayV2Write/TensorListSetItem?
"sequential_37/lstm_142/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_37/lstm_142/while/add/y?
 sequential_37/lstm_142/while/addAddV2(sequential_37_lstm_142_while_placeholder+sequential_37/lstm_142/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_37/lstm_142/while/add?
$sequential_37/lstm_142/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_37/lstm_142/while/add_1/y?
"sequential_37/lstm_142/while/add_1AddV2Fsequential_37_lstm_142_while_sequential_37_lstm_142_while_loop_counter-sequential_37/lstm_142/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_37/lstm_142/while/add_1?
%sequential_37/lstm_142/while/IdentityIdentity&sequential_37/lstm_142/while/add_1:z:0"^sequential_37/lstm_142/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_37/lstm_142/while/Identity?
'sequential_37/lstm_142/while/Identity_1IdentityLsequential_37_lstm_142_while_sequential_37_lstm_142_while_maximum_iterations"^sequential_37/lstm_142/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_37/lstm_142/while/Identity_1?
'sequential_37/lstm_142/while/Identity_2Identity$sequential_37/lstm_142/while/add:z:0"^sequential_37/lstm_142/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_37/lstm_142/while/Identity_2?
'sequential_37/lstm_142/while/Identity_3IdentityQsequential_37/lstm_142/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_37/lstm_142/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_37/lstm_142/while/Identity_3?
'sequential_37/lstm_142/while/Identity_4Identity4sequential_37/lstm_142/while/lstm_cell_145/mul_2:z:0"^sequential_37/lstm_142/while/NoOp*
T0*'
_output_shapes
:????????? 2)
'sequential_37/lstm_142/while/Identity_4?
'sequential_37/lstm_142/while/Identity_5Identity4sequential_37/lstm_142/while/lstm_cell_145/add_1:z:0"^sequential_37/lstm_142/while/NoOp*
T0*'
_output_shapes
:????????? 2)
'sequential_37/lstm_142/while/Identity_5?
!sequential_37/lstm_142/while/NoOpNoOpB^sequential_37/lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOpA^sequential_37/lstm_142/while/lstm_cell_145/MatMul/ReadVariableOpC^sequential_37/lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2#
!sequential_37/lstm_142/while/NoOp"W
%sequential_37_lstm_142_while_identity.sequential_37/lstm_142/while/Identity:output:0"[
'sequential_37_lstm_142_while_identity_10sequential_37/lstm_142/while/Identity_1:output:0"[
'sequential_37_lstm_142_while_identity_20sequential_37/lstm_142/while/Identity_2:output:0"[
'sequential_37_lstm_142_while_identity_30sequential_37/lstm_142/while/Identity_3:output:0"[
'sequential_37_lstm_142_while_identity_40sequential_37/lstm_142/while/Identity_4:output:0"[
'sequential_37_lstm_142_while_identity_50sequential_37/lstm_142/while/Identity_5:output:0"?
Jsequential_37_lstm_142_while_lstm_cell_145_biasadd_readvariableop_resourceLsequential_37_lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource_0"?
Ksequential_37_lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resourceMsequential_37_lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource_0"?
Isequential_37_lstm_142_while_lstm_cell_145_matmul_readvariableop_resourceKsequential_37_lstm_142_while_lstm_cell_145_matmul_readvariableop_resource_0"?
Csequential_37_lstm_142_while_sequential_37_lstm_142_strided_slice_1Esequential_37_lstm_142_while_sequential_37_lstm_142_strided_slice_1_0"?
sequential_37_lstm_142_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_142_tensorarrayunstack_tensorlistfromtensor?sequential_37_lstm_142_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_142_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2?
Asequential_37/lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOpAsequential_37/lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp2?
@sequential_37/lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp@sequential_37/lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp2?
Bsequential_37/lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOpBsequential_37/lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?\
?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2824983

inputs?
,lstm_cell_144_matmul_readvariableop_resource:	?A
.lstm_cell_144_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_144_biasadd_readvariableop_resource:	?
identity??$lstm_cell_144/BiasAdd/ReadVariableOp?#lstm_cell_144/MatMul/ReadVariableOp?%lstm_cell_144/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp?
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/MatMul?
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp?
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/MatMul_1?
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/add?
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp?
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/BiasAdd?
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim?
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_144/split?
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid?
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid_1?
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul?
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Relu?
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul_1?
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/add_1?
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Relu_1?
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2824899*
condR
while_cond_2824898*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_142_layer_call_fn_2825702

inputs
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_142_layer_call_and_return_conditional_losses_28229112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?\
?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2825880
inputs_0?
,lstm_cell_146_matmul_readvariableop_resource:	 ?A
.lstm_cell_146_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_146_biasadd_readvariableop_resource:	?
identity??$lstm_cell_146/BiasAdd/ReadVariableOp?#lstm_cell_146/MatMul/ReadVariableOp?%lstm_cell_146/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_146/MatMul/ReadVariableOp?
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/MatMul?
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_146/MatMul_1/ReadVariableOp?
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/MatMul_1?
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/add?
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_146/BiasAdd/ReadVariableOp?
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/BiasAdd?
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_146/split/split_dim?
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_146/split?
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid?
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid_1?
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul?
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Relu?
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul_1?
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/add_1?
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid_2
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Relu_1?
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2825796*
condR
while_cond_2825795*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
I
-__inference_dropout_206_layer_call_fn_2826399

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_206_layer_call_and_return_conditional_losses_28224132
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?&
?
while_body_2820112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_144_2820136_0:	?0
while_lstm_cell_144_2820138_0:	 ?,
while_lstm_cell_144_2820140_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_144_2820136:	?.
while_lstm_cell_144_2820138:	 ?*
while_lstm_cell_144_2820140:	???+while/lstm_cell_144/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_144_2820136_0while_lstm_cell_144_2820138_0while_lstm_cell_144_2820140_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_28200982-
+while/lstm_cell_144/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_144/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_144/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_144/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp,^while/lstm_cell_144/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_144_2820136while_lstm_cell_144_2820136_0"<
while_lstm_cell_144_2820138while_lstm_cell_144_2820138_0"<
while_lstm_cell_144_2820140while_lstm_cell_144_2820140_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2Z
+while/lstm_cell_144/StatefulPartitionedCall+while/lstm_cell_144/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?F
?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2821441

inputs(
lstm_cell_146_2821359:	 ?(
lstm_cell_146_2821361:	 ?$
lstm_cell_146_2821363:	?
identity??%lstm_cell_146/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
%lstm_cell_146/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_146_2821359lstm_cell_146_2821361lstm_cell_146_2821363*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_28213582'
%lstm_cell_146/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_146_2821359lstm_cell_146_2821361lstm_cell_146_2821363*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2821372*
condR
while_cond_2821371*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity~
NoOpNoOp&^lstm_cell_146/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2N
%lstm_cell_146/StatefulPartitionedCall%lstm_cell_146/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?\
?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2826333

inputs?
,lstm_cell_146_matmul_readvariableop_resource:	 ?A
.lstm_cell_146_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_146_biasadd_readvariableop_resource:	?
identity??$lstm_cell_146/BiasAdd/ReadVariableOp?#lstm_cell_146/MatMul/ReadVariableOp?%lstm_cell_146/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_146/MatMul/ReadVariableOp?
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/MatMul?
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_146/MatMul_1/ReadVariableOp?
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/MatMul_1?
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/add?
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_146/BiasAdd/ReadVariableOp?
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/BiasAdd?
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_146/split/split_dim?
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_146/split?
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid?
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid_1?
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul?
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Relu?
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul_1?
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/add_1?
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid_2
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Relu_1?
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2826249*
condR
while_cond_2826248*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?L
?

lstm_142_while_body_2823580.
*lstm_142_while_lstm_142_while_loop_counter4
0lstm_142_while_lstm_142_while_maximum_iterations
lstm_142_while_placeholder 
lstm_142_while_placeholder_1 
lstm_142_while_placeholder_2 
lstm_142_while_placeholder_3-
)lstm_142_while_lstm_142_strided_slice_1_0i
elstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_142_while_lstm_cell_145_matmul_readvariableop_resource_0:	 ?R
?lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource_0:	 ?M
>lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
lstm_142_while_identity
lstm_142_while_identity_1
lstm_142_while_identity_2
lstm_142_while_identity_3
lstm_142_while_identity_4
lstm_142_while_identity_5+
'lstm_142_while_lstm_142_strided_slice_1g
clstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensorN
;lstm_142_while_lstm_cell_145_matmul_readvariableop_resource:	 ?P
=lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource:	 ?K
<lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource:	???3lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp?2lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp?4lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp?
@lstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2B
@lstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shape?
2lstm_142/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensor_0lstm_142_while_placeholderIlstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype024
2lstm_142/while/TensorArrayV2Read/TensorListGetItem?
2lstm_142/while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp=lstm_142_while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype024
2lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp?
#lstm_142/while/lstm_cell_145/MatMulMatMul9lstm_142/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_142/while/lstm_cell_145/MatMul?
4lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp?lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype026
4lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp?
%lstm_142/while/lstm_cell_145/MatMul_1MatMullstm_142_while_placeholder_2<lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%lstm_142/while/lstm_cell_145/MatMul_1?
 lstm_142/while/lstm_cell_145/addAddV2-lstm_142/while/lstm_cell_145/MatMul:product:0/lstm_142/while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2"
 lstm_142/while/lstm_cell_145/add?
3lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp>lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype025
3lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp?
$lstm_142/while/lstm_cell_145/BiasAddBiasAdd$lstm_142/while/lstm_cell_145/add:z:0;lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$lstm_142/while/lstm_cell_145/BiasAdd?
,lstm_142/while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_142/while/lstm_cell_145/split/split_dim?
"lstm_142/while/lstm_cell_145/splitSplit5lstm_142/while/lstm_cell_145/split/split_dim:output:0-lstm_142/while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2$
"lstm_142/while/lstm_cell_145/split?
$lstm_142/while/lstm_cell_145/SigmoidSigmoid+lstm_142/while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_142/while/lstm_cell_145/Sigmoid?
&lstm_142/while/lstm_cell_145/Sigmoid_1Sigmoid+lstm_142/while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2(
&lstm_142/while/lstm_cell_145/Sigmoid_1?
 lstm_142/while/lstm_cell_145/mulMul*lstm_142/while/lstm_cell_145/Sigmoid_1:y:0lstm_142_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_142/while/lstm_cell_145/mul?
!lstm_142/while/lstm_cell_145/ReluRelu+lstm_142/while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2#
!lstm_142/while/lstm_cell_145/Relu?
"lstm_142/while/lstm_cell_145/mul_1Mul(lstm_142/while/lstm_cell_145/Sigmoid:y:0/lstm_142/while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2$
"lstm_142/while/lstm_cell_145/mul_1?
"lstm_142/while/lstm_cell_145/add_1AddV2$lstm_142/while/lstm_cell_145/mul:z:0&lstm_142/while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_142/while/lstm_cell_145/add_1?
&lstm_142/while/lstm_cell_145/Sigmoid_2Sigmoid+lstm_142/while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2(
&lstm_142/while/lstm_cell_145/Sigmoid_2?
#lstm_142/while/lstm_cell_145/Relu_1Relu&lstm_142/while/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2%
#lstm_142/while/lstm_cell_145/Relu_1?
"lstm_142/while/lstm_cell_145/mul_2Mul*lstm_142/while/lstm_cell_145/Sigmoid_2:y:01lstm_142/while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2$
"lstm_142/while/lstm_cell_145/mul_2?
3lstm_142/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_142_while_placeholder_1lstm_142_while_placeholder&lstm_142/while/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_142/while/TensorArrayV2Write/TensorListSetItemn
lstm_142/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_142/while/add/y?
lstm_142/while/addAddV2lstm_142_while_placeholderlstm_142/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_142/while/addr
lstm_142/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_142/while/add_1/y?
lstm_142/while/add_1AddV2*lstm_142_while_lstm_142_while_loop_counterlstm_142/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_142/while/add_1?
lstm_142/while/IdentityIdentitylstm_142/while/add_1:z:0^lstm_142/while/NoOp*
T0*
_output_shapes
: 2
lstm_142/while/Identity?
lstm_142/while/Identity_1Identity0lstm_142_while_lstm_142_while_maximum_iterations^lstm_142/while/NoOp*
T0*
_output_shapes
: 2
lstm_142/while/Identity_1?
lstm_142/while/Identity_2Identitylstm_142/while/add:z:0^lstm_142/while/NoOp*
T0*
_output_shapes
: 2
lstm_142/while/Identity_2?
lstm_142/while/Identity_3IdentityClstm_142/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_142/while/NoOp*
T0*
_output_shapes
: 2
lstm_142/while/Identity_3?
lstm_142/while/Identity_4Identity&lstm_142/while/lstm_cell_145/mul_2:z:0^lstm_142/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_142/while/Identity_4?
lstm_142/while/Identity_5Identity&lstm_142/while/lstm_cell_145/add_1:z:0^lstm_142/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_142/while/Identity_5?
lstm_142/while/NoOpNoOp4^lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp3^lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp5^lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_142/while/NoOp";
lstm_142_while_identity lstm_142/while/Identity:output:0"?
lstm_142_while_identity_1"lstm_142/while/Identity_1:output:0"?
lstm_142_while_identity_2"lstm_142/while/Identity_2:output:0"?
lstm_142_while_identity_3"lstm_142/while/Identity_3:output:0"?
lstm_142_while_identity_4"lstm_142/while/Identity_4:output:0"?
lstm_142_while_identity_5"lstm_142/while/Identity_5:output:0"T
'lstm_142_while_lstm_142_strided_slice_1)lstm_142_while_lstm_142_strided_slice_1_0"~
<lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource>lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource_0"?
=lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource?lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource_0"|
;lstm_142_while_lstm_cell_145_matmul_readvariableop_resource=lstm_142_while_lstm_cell_145_matmul_readvariableop_resource_0"?
clstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensorelstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2j
3lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp3lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp2h
2lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp2lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp2l
4lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp4lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
/__inference_lstm_cell_145_layer_call_fn_2826666

inputs
states_0
states_1
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_28208742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
f
H__inference_dropout_206_layer_call_and_return_conditional_losses_2822413

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
while_cond_2825120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2825120___redundant_placeholder05
1while_while_cond_2825120___redundant_placeholder15
1while_while_cond_2825120___redundant_placeholder25
1while_while_cond_2825120___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
??
?
while_body_2825574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_145_matmul_readvariableop_resource_0:	 ?I
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_145_matmul_readvariableop_resource:	 ?G
4while_lstm_cell_145_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_145_biasadd_readvariableop_resource:	???*while/lstm_cell_145/BiasAdd/ReadVariableOp?)while/lstm_cell_145/MatMul/ReadVariableOp?+while/lstm_cell_145/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_145/MatMul/ReadVariableOp?
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/MatMul?
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_145/MatMul_1/ReadVariableOp?
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/MatMul_1?
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/add?
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_145/BiasAdd/ReadVariableOp?
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/BiasAdd?
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_145/split/split_dim?
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_145/split?
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid?
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid_1?
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul?
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Relu?
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul_1?
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/add_1?
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid_2?
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Relu_1?
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
??
?
while_body_2824446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_144_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_144_matmul_readvariableop_resource:	?G
4while_lstm_cell_144_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_144_biasadd_readvariableop_resource:	???*while/lstm_cell_144/BiasAdd/ReadVariableOp?)while/lstm_cell_144/MatMul/ReadVariableOp?+while/lstm_cell_144/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOp?
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/MatMul?
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOp?
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/MatMul_1?
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/add?
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOp?
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/BiasAdd?
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim?
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_144/split?
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid?
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid_1?
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul?
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Relu?
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul_1?
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/add_1?
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid_2?
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Relu_1?
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?\
?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2824530
inputs_0?
,lstm_cell_144_matmul_readvariableop_resource:	?A
.lstm_cell_144_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_144_biasadd_readvariableop_resource:	?
identity??$lstm_cell_144/BiasAdd/ReadVariableOp?#lstm_cell_144/MatMul/ReadVariableOp?%lstm_cell_144/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp?
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/MatMul?
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp?
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/MatMul_1?
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/add?
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp?
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/BiasAdd?
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim?
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_144/split?
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid?
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid_1?
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul?
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Relu?
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul_1?
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/add_1?
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Relu_1?
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2824446*
condR
while_cond_2824445*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identity?
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2820741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2820741___redundant_placeholder05
1while_while_cond_2820741___redundant_placeholder15
1while_while_cond_2820741___redundant_placeholder25
1while_while_cond_2820741___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
f
H__inference_dropout_204_layer_call_and_return_conditional_losses_2822083

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:????????? 2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? :S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
while_cond_2825573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2825573___redundant_placeholder05
1while_while_cond_2825573___redundant_placeholder15
1while_while_cond_2825573___redundant_placeholder25
1while_while_cond_2825573___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
/__inference_sequential_37_layer_call_fn_2822485
lstm_141_input
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2:	 ?
	unknown_3:	 ?
	unknown_4:	?
	unknown_5:	 ?
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_141_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_37_layer_call_and_return_conditional_losses_28224562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_141_input
?\
?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2825205
inputs_0?
,lstm_cell_145_matmul_readvariableop_resource:	 ?A
.lstm_cell_145_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_145_biasadd_readvariableop_resource:	?
identity??$lstm_cell_145/BiasAdd/ReadVariableOp?#lstm_cell_145/MatMul/ReadVariableOp?%lstm_cell_145/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_145/MatMul/ReadVariableOp?
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/MatMul?
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_145/MatMul_1/ReadVariableOp?
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/MatMul_1?
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/add?
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_145/BiasAdd/ReadVariableOp?
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/BiasAdd?
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_145/split/split_dim?
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_145/split?
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid?
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid_1?
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul?
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Relu?
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul_1?
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/add_1?
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid_2
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Relu_1?
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2825121*
condR
while_cond_2825120*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identity?
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2820098

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?
f
H__inference_dropout_205_layer_call_and_return_conditional_losses_2825707

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:????????? 2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? :S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?\
?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2822400

inputs?
,lstm_cell_146_matmul_readvariableop_resource:	 ?A
.lstm_cell_146_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_146_biasadd_readvariableop_resource:	?
identity??$lstm_cell_146/BiasAdd/ReadVariableOp?#lstm_cell_146/MatMul/ReadVariableOp?%lstm_cell_146/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_146/MatMul/ReadVariableOp?
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/MatMul?
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_146/MatMul_1/ReadVariableOp?
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/MatMul_1?
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/add?
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_146/BiasAdd/ReadVariableOp?
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/BiasAdd?
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_146/split/split_dim?
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_146/split?
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid?
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid_1?
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul?
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Relu?
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul_1?
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/add_1?
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid_2
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Relu_1?
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2822316*
condR
while_cond_2822315*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
while_cond_2826097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2826097___redundant_placeholder05
1while_while_cond_2826097___redundant_placeholder15
1while_while_cond_2826097___redundant_placeholder25
1while_while_cond_2826097___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
f
H__inference_dropout_204_layer_call_and_return_conditional_losses_2825032

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:????????? 2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? :S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2820244

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?
I
-__inference_dropout_204_layer_call_fn_2825049

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_204_layer_call_and_return_conditional_losses_28220832
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? :S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?`
?
)sequential_37_lstm_141_while_body_2819628J
Fsequential_37_lstm_141_while_sequential_37_lstm_141_while_loop_counterP
Lsequential_37_lstm_141_while_sequential_37_lstm_141_while_maximum_iterations,
(sequential_37_lstm_141_while_placeholder.
*sequential_37_lstm_141_while_placeholder_1.
*sequential_37_lstm_141_while_placeholder_2.
*sequential_37_lstm_141_while_placeholder_3I
Esequential_37_lstm_141_while_sequential_37_lstm_141_strided_slice_1_0?
?sequential_37_lstm_141_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_141_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_37_lstm_141_while_lstm_cell_144_matmul_readvariableop_resource_0:	?`
Msequential_37_lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource_0:	 ?[
Lsequential_37_lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource_0:	?)
%sequential_37_lstm_141_while_identity+
'sequential_37_lstm_141_while_identity_1+
'sequential_37_lstm_141_while_identity_2+
'sequential_37_lstm_141_while_identity_3+
'sequential_37_lstm_141_while_identity_4+
'sequential_37_lstm_141_while_identity_5G
Csequential_37_lstm_141_while_sequential_37_lstm_141_strided_slice_1?
sequential_37_lstm_141_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_141_tensorarrayunstack_tensorlistfromtensor\
Isequential_37_lstm_141_while_lstm_cell_144_matmul_readvariableop_resource:	?^
Ksequential_37_lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource:	 ?Y
Jsequential_37_lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource:	???Asequential_37/lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp?@sequential_37/lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp?Bsequential_37/lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp?
Nsequential_37/lstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2P
Nsequential_37/lstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shape?
@sequential_37/lstm_141/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_37_lstm_141_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_141_tensorarrayunstack_tensorlistfromtensor_0(sequential_37_lstm_141_while_placeholderWsequential_37/lstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02B
@sequential_37/lstm_141/while/TensorArrayV2Read/TensorListGetItem?
@sequential_37/lstm_141/while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOpKsequential_37_lstm_141_while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02B
@sequential_37/lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp?
1sequential_37/lstm_141/while/lstm_cell_144/MatMulMatMulGsequential_37/lstm_141/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_37/lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????23
1sequential_37/lstm_141/while/lstm_cell_144/MatMul?
Bsequential_37/lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOpMsequential_37_lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02D
Bsequential_37/lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp?
3sequential_37/lstm_141/while/lstm_cell_144/MatMul_1MatMul*sequential_37_lstm_141_while_placeholder_2Jsequential_37/lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????25
3sequential_37/lstm_141/while/lstm_cell_144/MatMul_1?
.sequential_37/lstm_141/while/lstm_cell_144/addAddV2;sequential_37/lstm_141/while/lstm_cell_144/MatMul:product:0=sequential_37/lstm_141/while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????20
.sequential_37/lstm_141/while/lstm_cell_144/add?
Asequential_37/lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOpLsequential_37_lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02C
Asequential_37/lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp?
2sequential_37/lstm_141/while/lstm_cell_144/BiasAddBiasAdd2sequential_37/lstm_141/while/lstm_cell_144/add:z:0Isequential_37/lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????24
2sequential_37/lstm_141/while/lstm_cell_144/BiasAdd?
:sequential_37/lstm_141/while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_37/lstm_141/while/lstm_cell_144/split/split_dim?
0sequential_37/lstm_141/while/lstm_cell_144/splitSplitCsequential_37/lstm_141/while/lstm_cell_144/split/split_dim:output:0;sequential_37/lstm_141/while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split22
0sequential_37/lstm_141/while/lstm_cell_144/split?
2sequential_37/lstm_141/while/lstm_cell_144/SigmoidSigmoid9sequential_37/lstm_141/while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 24
2sequential_37/lstm_141/while/lstm_cell_144/Sigmoid?
4sequential_37/lstm_141/while/lstm_cell_144/Sigmoid_1Sigmoid9sequential_37/lstm_141/while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 26
4sequential_37/lstm_141/while/lstm_cell_144/Sigmoid_1?
.sequential_37/lstm_141/while/lstm_cell_144/mulMul8sequential_37/lstm_141/while/lstm_cell_144/Sigmoid_1:y:0*sequential_37_lstm_141_while_placeholder_3*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_141/while/lstm_cell_144/mul?
/sequential_37/lstm_141/while/lstm_cell_144/ReluRelu9sequential_37/lstm_141/while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 21
/sequential_37/lstm_141/while/lstm_cell_144/Relu?
0sequential_37/lstm_141/while/lstm_cell_144/mul_1Mul6sequential_37/lstm_141/while/lstm_cell_144/Sigmoid:y:0=sequential_37/lstm_141/while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 22
0sequential_37/lstm_141/while/lstm_cell_144/mul_1?
0sequential_37/lstm_141/while/lstm_cell_144/add_1AddV22sequential_37/lstm_141/while/lstm_cell_144/mul:z:04sequential_37/lstm_141/while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 22
0sequential_37/lstm_141/while/lstm_cell_144/add_1?
4sequential_37/lstm_141/while/lstm_cell_144/Sigmoid_2Sigmoid9sequential_37/lstm_141/while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 26
4sequential_37/lstm_141/while/lstm_cell_144/Sigmoid_2?
1sequential_37/lstm_141/while/lstm_cell_144/Relu_1Relu4sequential_37/lstm_141/while/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 23
1sequential_37/lstm_141/while/lstm_cell_144/Relu_1?
0sequential_37/lstm_141/while/lstm_cell_144/mul_2Mul8sequential_37/lstm_141/while/lstm_cell_144/Sigmoid_2:y:0?sequential_37/lstm_141/while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 22
0sequential_37/lstm_141/while/lstm_cell_144/mul_2?
Asequential_37/lstm_141/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_37_lstm_141_while_placeholder_1(sequential_37_lstm_141_while_placeholder4sequential_37/lstm_141/while/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02C
Asequential_37/lstm_141/while/TensorArrayV2Write/TensorListSetItem?
"sequential_37/lstm_141/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_37/lstm_141/while/add/y?
 sequential_37/lstm_141/while/addAddV2(sequential_37_lstm_141_while_placeholder+sequential_37/lstm_141/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_37/lstm_141/while/add?
$sequential_37/lstm_141/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_37/lstm_141/while/add_1/y?
"sequential_37/lstm_141/while/add_1AddV2Fsequential_37_lstm_141_while_sequential_37_lstm_141_while_loop_counter-sequential_37/lstm_141/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_37/lstm_141/while/add_1?
%sequential_37/lstm_141/while/IdentityIdentity&sequential_37/lstm_141/while/add_1:z:0"^sequential_37/lstm_141/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_37/lstm_141/while/Identity?
'sequential_37/lstm_141/while/Identity_1IdentityLsequential_37_lstm_141_while_sequential_37_lstm_141_while_maximum_iterations"^sequential_37/lstm_141/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_37/lstm_141/while/Identity_1?
'sequential_37/lstm_141/while/Identity_2Identity$sequential_37/lstm_141/while/add:z:0"^sequential_37/lstm_141/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_37/lstm_141/while/Identity_2?
'sequential_37/lstm_141/while/Identity_3IdentityQsequential_37/lstm_141/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_37/lstm_141/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_37/lstm_141/while/Identity_3?
'sequential_37/lstm_141/while/Identity_4Identity4sequential_37/lstm_141/while/lstm_cell_144/mul_2:z:0"^sequential_37/lstm_141/while/NoOp*
T0*'
_output_shapes
:????????? 2)
'sequential_37/lstm_141/while/Identity_4?
'sequential_37/lstm_141/while/Identity_5Identity4sequential_37/lstm_141/while/lstm_cell_144/add_1:z:0"^sequential_37/lstm_141/while/NoOp*
T0*'
_output_shapes
:????????? 2)
'sequential_37/lstm_141/while/Identity_5?
!sequential_37/lstm_141/while/NoOpNoOpB^sequential_37/lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOpA^sequential_37/lstm_141/while/lstm_cell_144/MatMul/ReadVariableOpC^sequential_37/lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2#
!sequential_37/lstm_141/while/NoOp"W
%sequential_37_lstm_141_while_identity.sequential_37/lstm_141/while/Identity:output:0"[
'sequential_37_lstm_141_while_identity_10sequential_37/lstm_141/while/Identity_1:output:0"[
'sequential_37_lstm_141_while_identity_20sequential_37/lstm_141/while/Identity_2:output:0"[
'sequential_37_lstm_141_while_identity_30sequential_37/lstm_141/while/Identity_3:output:0"[
'sequential_37_lstm_141_while_identity_40sequential_37/lstm_141/while/Identity_4:output:0"[
'sequential_37_lstm_141_while_identity_50sequential_37/lstm_141/while/Identity_5:output:0"?
Jsequential_37_lstm_141_while_lstm_cell_144_biasadd_readvariableop_resourceLsequential_37_lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource_0"?
Ksequential_37_lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resourceMsequential_37_lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource_0"?
Isequential_37_lstm_141_while_lstm_cell_144_matmul_readvariableop_resourceKsequential_37_lstm_141_while_lstm_cell_144_matmul_readvariableop_resource_0"?
Csequential_37_lstm_141_while_sequential_37_lstm_141_strided_slice_1Esequential_37_lstm_141_while_sequential_37_lstm_141_strided_slice_1_0"?
sequential_37_lstm_141_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_141_tensorarrayunstack_tensorlistfromtensor?sequential_37_lstm_141_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_141_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2?
Asequential_37/lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOpAsequential_37/lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp2?
@sequential_37/lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp@sequential_37/lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp2?
Bsequential_37/lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOpBsequential_37/lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_lstm_142_layer_call_fn_2825680
inputs_0
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_142_layer_call_and_return_conditional_losses_28210212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
I
-__inference_dropout_207_layer_call_fn_2826446

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_207_layer_call_and_return_conditional_losses_28224372
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2826600

inputs
states_0
states_11
matmul_readvariableop_resource:	 ?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
*__inference_lstm_141_layer_call_fn_2825027

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_141_layer_call_and_return_conditional_losses_28231072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?F
?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2820181

inputs(
lstm_cell_144_2820099:	?(
lstm_cell_144_2820101:	 ?$
lstm_cell_144_2820103:	?
identity??%lstm_cell_144/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
%lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_144_2820099lstm_cell_144_2820101lstm_cell_144_2820103*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_28200982'
%lstm_cell_144/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_144_2820099lstm_cell_144_2820101lstm_cell_144_2820103*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2820112*
condR
while_cond_2820111*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identity~
NoOpNoOp&^lstm_cell_144/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_144/StatefulPartitionedCall%lstm_cell_144/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2821358

inputs

states
states_11
matmul_readvariableop_resource:	 ?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?g
?
 __inference__traced_save_2826931
file_prefix/
+savev2_dense_100_kernel_read_readvariableop-
)savev2_dense_100_bias_read_readvariableop/
+savev2_dense_101_kernel_read_readvariableop-
)savev2_dense_101_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_141_lstm_cell_144_kernel_read_readvariableopF
Bsavev2_lstm_141_lstm_cell_144_recurrent_kernel_read_readvariableop:
6savev2_lstm_141_lstm_cell_144_bias_read_readvariableop<
8savev2_lstm_142_lstm_cell_145_kernel_read_readvariableopF
Bsavev2_lstm_142_lstm_cell_145_recurrent_kernel_read_readvariableop:
6savev2_lstm_142_lstm_cell_145_bias_read_readvariableop<
8savev2_lstm_143_lstm_cell_146_kernel_read_readvariableopF
Bsavev2_lstm_143_lstm_cell_146_recurrent_kernel_read_readvariableop:
6savev2_lstm_143_lstm_cell_146_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_100_kernel_m_read_readvariableop4
0savev2_adam_dense_100_bias_m_read_readvariableop6
2savev2_adam_dense_101_kernel_m_read_readvariableop4
0savev2_adam_dense_101_bias_m_read_readvariableopC
?savev2_adam_lstm_141_lstm_cell_144_kernel_m_read_readvariableopM
Isavev2_adam_lstm_141_lstm_cell_144_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_141_lstm_cell_144_bias_m_read_readvariableopC
?savev2_adam_lstm_142_lstm_cell_145_kernel_m_read_readvariableopM
Isavev2_adam_lstm_142_lstm_cell_145_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_142_lstm_cell_145_bias_m_read_readvariableopC
?savev2_adam_lstm_143_lstm_cell_146_kernel_m_read_readvariableopM
Isavev2_adam_lstm_143_lstm_cell_146_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_143_lstm_cell_146_bias_m_read_readvariableop6
2savev2_adam_dense_100_kernel_v_read_readvariableop4
0savev2_adam_dense_100_bias_v_read_readvariableop6
2savev2_adam_dense_101_kernel_v_read_readvariableop4
0savev2_adam_dense_101_bias_v_read_readvariableopC
?savev2_adam_lstm_141_lstm_cell_144_kernel_v_read_readvariableopM
Isavev2_adam_lstm_141_lstm_cell_144_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_141_lstm_cell_144_bias_v_read_readvariableopC
?savev2_adam_lstm_142_lstm_cell_145_kernel_v_read_readvariableopM
Isavev2_adam_lstm_142_lstm_cell_145_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_142_lstm_cell_145_bias_v_read_readvariableopC
?savev2_adam_lstm_143_lstm_cell_146_kernel_v_read_readvariableopM
Isavev2_adam_lstm_143_lstm_cell_146_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_143_lstm_cell_146_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*?
value?B?1B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_100_kernel_read_readvariableop)savev2_dense_100_bias_read_readvariableop+savev2_dense_101_kernel_read_readvariableop)savev2_dense_101_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_141_lstm_cell_144_kernel_read_readvariableopBsavev2_lstm_141_lstm_cell_144_recurrent_kernel_read_readvariableop6savev2_lstm_141_lstm_cell_144_bias_read_readvariableop8savev2_lstm_142_lstm_cell_145_kernel_read_readvariableopBsavev2_lstm_142_lstm_cell_145_recurrent_kernel_read_readvariableop6savev2_lstm_142_lstm_cell_145_bias_read_readvariableop8savev2_lstm_143_lstm_cell_146_kernel_read_readvariableopBsavev2_lstm_143_lstm_cell_146_recurrent_kernel_read_readvariableop6savev2_lstm_143_lstm_cell_146_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_100_kernel_m_read_readvariableop0savev2_adam_dense_100_bias_m_read_readvariableop2savev2_adam_dense_101_kernel_m_read_readvariableop0savev2_adam_dense_101_bias_m_read_readvariableop?savev2_adam_lstm_141_lstm_cell_144_kernel_m_read_readvariableopIsavev2_adam_lstm_141_lstm_cell_144_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_141_lstm_cell_144_bias_m_read_readvariableop?savev2_adam_lstm_142_lstm_cell_145_kernel_m_read_readvariableopIsavev2_adam_lstm_142_lstm_cell_145_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_142_lstm_cell_145_bias_m_read_readvariableop?savev2_adam_lstm_143_lstm_cell_146_kernel_m_read_readvariableopIsavev2_adam_lstm_143_lstm_cell_146_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_143_lstm_cell_146_bias_m_read_readvariableop2savev2_adam_dense_100_kernel_v_read_readvariableop0savev2_adam_dense_100_bias_v_read_readvariableop2savev2_adam_dense_101_kernel_v_read_readvariableop0savev2_adam_dense_101_bias_v_read_readvariableop?savev2_adam_lstm_141_lstm_cell_144_kernel_v_read_readvariableopIsavev2_adam_lstm_141_lstm_cell_144_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_141_lstm_cell_144_bias_v_read_readvariableop?savev2_adam_lstm_142_lstm_cell_145_kernel_v_read_readvariableopIsavev2_adam_lstm_142_lstm_cell_145_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_142_lstm_cell_145_bias_v_read_readvariableop?savev2_adam_lstm_143_lstm_cell_146_kernel_v_read_readvariableopIsavev2_adam_lstm_143_lstm_cell_146_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_143_lstm_cell_146_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes5
321	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :  : : :: : : : : :	?:	 ?:?:	 ?:	 ?:?:	 ?:	 ?:?: : : : :  : : ::	?:	 ?:?:	 ?:	 ?:?:	 ?:	 ?:?:  : : ::	?:	 ?:?:	 ?:	 ?:?:	 ?:	 ?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:%!

_output_shapes
:	 ?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:%!

_output_shapes
:	 ?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:%!

_output_shapes
:	 ?:%!

_output_shapes
:	 ?:! 

_output_shapes	
:?:%!!

_output_shapes
:	 ?:%"!

_output_shapes
:	 ?:!#

_output_shapes	
:?:$$ 

_output_shapes

:  : %

_output_shapes
: :$& 

_output_shapes

: : '

_output_shapes
::%(!

_output_shapes
:	?:%)!

_output_shapes
:	 ?:!*

_output_shapes	
:?:%+!

_output_shapes
:	 ?:%,!

_output_shapes
:	 ?:!-

_output_shapes	
:?:%.!

_output_shapes
:	 ?:%/!

_output_shapes
:	 ?:!0

_output_shapes	
:?:1

_output_shapes
: 
?
?
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2820874

inputs

states
states_11
matmul_readvariableop_resource:	 ?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?
?
/__inference_lstm_cell_144_layer_call_fn_2826568

inputs
states_0
states_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_28202442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?\
?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2825356
inputs_0?
,lstm_cell_145_matmul_readvariableop_resource:	 ?A
.lstm_cell_145_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_145_biasadd_readvariableop_resource:	?
identity??$lstm_cell_145/BiasAdd/ReadVariableOp?#lstm_cell_145/MatMul/ReadVariableOp?%lstm_cell_145/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_145/MatMul/ReadVariableOp?
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/MatMul?
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_145/MatMul_1/ReadVariableOp?
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/MatMul_1?
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/add?
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_145/BiasAdd/ReadVariableOp?
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/BiasAdd?
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_145/split/split_dim?
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_145/split?
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid?
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid_1?
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul?
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Relu?
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul_1?
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/add_1?
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid_2
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Relu_1?
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2825272*
condR
while_cond_2825271*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identity?
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_146_layer_call_fn_2826747

inputs
states_0
states_1
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_28213582
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
while_cond_2821985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2821985___redundant_placeholder05
1while_while_cond_2821985___redundant_placeholder15
1while_while_cond_2821985___redundant_placeholder25
1while_while_cond_2821985___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
*__inference_lstm_143_layer_call_fn_2826355
inputs_0
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_143_layer_call_and_return_conditional_losses_28216512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?\
?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2822070

inputs?
,lstm_cell_144_matmul_readvariableop_resource:	?A
.lstm_cell_144_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_144_biasadd_readvariableop_resource:	?
identity??$lstm_cell_144/BiasAdd/ReadVariableOp?#lstm_cell_144/MatMul/ReadVariableOp?%lstm_cell_144/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp?
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/MatMul?
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp?
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/MatMul_1?
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/add?
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp?
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/BiasAdd?
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim?
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_144/split?
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid?
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid_1?
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul?
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Relu?
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul_1?
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/add_1?
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Relu_1?
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2821986*
condR
while_cond_2821985*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?L
?

lstm_142_while_body_2824049.
*lstm_142_while_lstm_142_while_loop_counter4
0lstm_142_while_lstm_142_while_maximum_iterations
lstm_142_while_placeholder 
lstm_142_while_placeholder_1 
lstm_142_while_placeholder_2 
lstm_142_while_placeholder_3-
)lstm_142_while_lstm_142_strided_slice_1_0i
elstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_142_while_lstm_cell_145_matmul_readvariableop_resource_0:	 ?R
?lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource_0:	 ?M
>lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
lstm_142_while_identity
lstm_142_while_identity_1
lstm_142_while_identity_2
lstm_142_while_identity_3
lstm_142_while_identity_4
lstm_142_while_identity_5+
'lstm_142_while_lstm_142_strided_slice_1g
clstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensorN
;lstm_142_while_lstm_cell_145_matmul_readvariableop_resource:	 ?P
=lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource:	 ?K
<lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource:	???3lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp?2lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp?4lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp?
@lstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2B
@lstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shape?
2lstm_142/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensor_0lstm_142_while_placeholderIlstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype024
2lstm_142/while/TensorArrayV2Read/TensorListGetItem?
2lstm_142/while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp=lstm_142_while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype024
2lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp?
#lstm_142/while/lstm_cell_145/MatMulMatMul9lstm_142/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_142/while/lstm_cell_145/MatMul?
4lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp?lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype026
4lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp?
%lstm_142/while/lstm_cell_145/MatMul_1MatMullstm_142_while_placeholder_2<lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%lstm_142/while/lstm_cell_145/MatMul_1?
 lstm_142/while/lstm_cell_145/addAddV2-lstm_142/while/lstm_cell_145/MatMul:product:0/lstm_142/while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2"
 lstm_142/while/lstm_cell_145/add?
3lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp>lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype025
3lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp?
$lstm_142/while/lstm_cell_145/BiasAddBiasAdd$lstm_142/while/lstm_cell_145/add:z:0;lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$lstm_142/while/lstm_cell_145/BiasAdd?
,lstm_142/while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_142/while/lstm_cell_145/split/split_dim?
"lstm_142/while/lstm_cell_145/splitSplit5lstm_142/while/lstm_cell_145/split/split_dim:output:0-lstm_142/while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2$
"lstm_142/while/lstm_cell_145/split?
$lstm_142/while/lstm_cell_145/SigmoidSigmoid+lstm_142/while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_142/while/lstm_cell_145/Sigmoid?
&lstm_142/while/lstm_cell_145/Sigmoid_1Sigmoid+lstm_142/while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2(
&lstm_142/while/lstm_cell_145/Sigmoid_1?
 lstm_142/while/lstm_cell_145/mulMul*lstm_142/while/lstm_cell_145/Sigmoid_1:y:0lstm_142_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_142/while/lstm_cell_145/mul?
!lstm_142/while/lstm_cell_145/ReluRelu+lstm_142/while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2#
!lstm_142/while/lstm_cell_145/Relu?
"lstm_142/while/lstm_cell_145/mul_1Mul(lstm_142/while/lstm_cell_145/Sigmoid:y:0/lstm_142/while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2$
"lstm_142/while/lstm_cell_145/mul_1?
"lstm_142/while/lstm_cell_145/add_1AddV2$lstm_142/while/lstm_cell_145/mul:z:0&lstm_142/while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_142/while/lstm_cell_145/add_1?
&lstm_142/while/lstm_cell_145/Sigmoid_2Sigmoid+lstm_142/while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2(
&lstm_142/while/lstm_cell_145/Sigmoid_2?
#lstm_142/while/lstm_cell_145/Relu_1Relu&lstm_142/while/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2%
#lstm_142/while/lstm_cell_145/Relu_1?
"lstm_142/while/lstm_cell_145/mul_2Mul*lstm_142/while/lstm_cell_145/Sigmoid_2:y:01lstm_142/while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2$
"lstm_142/while/lstm_cell_145/mul_2?
3lstm_142/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_142_while_placeholder_1lstm_142_while_placeholder&lstm_142/while/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_142/while/TensorArrayV2Write/TensorListSetItemn
lstm_142/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_142/while/add/y?
lstm_142/while/addAddV2lstm_142_while_placeholderlstm_142/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_142/while/addr
lstm_142/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_142/while/add_1/y?
lstm_142/while/add_1AddV2*lstm_142_while_lstm_142_while_loop_counterlstm_142/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_142/while/add_1?
lstm_142/while/IdentityIdentitylstm_142/while/add_1:z:0^lstm_142/while/NoOp*
T0*
_output_shapes
: 2
lstm_142/while/Identity?
lstm_142/while/Identity_1Identity0lstm_142_while_lstm_142_while_maximum_iterations^lstm_142/while/NoOp*
T0*
_output_shapes
: 2
lstm_142/while/Identity_1?
lstm_142/while/Identity_2Identitylstm_142/while/add:z:0^lstm_142/while/NoOp*
T0*
_output_shapes
: 2
lstm_142/while/Identity_2?
lstm_142/while/Identity_3IdentityClstm_142/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_142/while/NoOp*
T0*
_output_shapes
: 2
lstm_142/while/Identity_3?
lstm_142/while/Identity_4Identity&lstm_142/while/lstm_cell_145/mul_2:z:0^lstm_142/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_142/while/Identity_4?
lstm_142/while/Identity_5Identity&lstm_142/while/lstm_cell_145/add_1:z:0^lstm_142/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_142/while/Identity_5?
lstm_142/while/NoOpNoOp4^lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp3^lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp5^lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_142/while/NoOp";
lstm_142_while_identity lstm_142/while/Identity:output:0"?
lstm_142_while_identity_1"lstm_142/while/Identity_1:output:0"?
lstm_142_while_identity_2"lstm_142/while/Identity_2:output:0"?
lstm_142_while_identity_3"lstm_142/while/Identity_3:output:0"?
lstm_142_while_identity_4"lstm_142/while/Identity_4:output:0"?
lstm_142_while_identity_5"lstm_142/while/Identity_5:output:0"T
'lstm_142_while_lstm_142_strided_slice_1)lstm_142_while_lstm_142_strided_slice_1_0"~
<lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource>lstm_142_while_lstm_cell_145_biasadd_readvariableop_resource_0"?
=lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource?lstm_142_while_lstm_cell_145_matmul_1_readvariableop_resource_0"|
;lstm_142_while_lstm_cell_145_matmul_readvariableop_resource=lstm_142_while_lstm_cell_145_matmul_readvariableop_resource_0"?
clstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensorelstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2j
3lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp3lstm_142/while/lstm_cell_145/BiasAdd/ReadVariableOp2h
2lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp2lstm_142/while/lstm_cell_145/MatMul/ReadVariableOp2l
4lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp4lstm_142/while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2820321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2820321___redundant_placeholder05
1while_while_cond_2820321___redundant_placeholder15
1while_while_cond_2820321___redundant_placeholder25
1while_while_cond_2820321___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?\
?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2824832

inputs?
,lstm_cell_144_matmul_readvariableop_resource:	?A
.lstm_cell_144_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_144_biasadd_readvariableop_resource:	?
identity??$lstm_cell_144/BiasAdd/ReadVariableOp?#lstm_cell_144/MatMul/ReadVariableOp?%lstm_cell_144/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp?
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/MatMul?
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp?
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/MatMul_1?
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/add?
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp?
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/BiasAdd?
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim?
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_144/split?
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid?
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid_1?
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul?
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Relu?
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul_1?
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/add_1?
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Relu_1?
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2824748*
condR
while_cond_2824747*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2823022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2823022___redundant_placeholder05
1while_while_cond_2823022___redundant_placeholder15
1while_while_cond_2823022___redundant_placeholder25
1while_while_cond_2823022___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
/__inference_sequential_37_layer_call_fn_2824348

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2:	 ?
	unknown_3:	 ?
	unknown_4:	?
	unknown_5:	 ?
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_37_layer_call_and_return_conditional_losses_28224562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
while_body_2824899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_144_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_144_matmul_readvariableop_resource:	?G
4while_lstm_cell_144_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_144_biasadd_readvariableop_resource:	???*while/lstm_cell_144/BiasAdd/ReadVariableOp?)while/lstm_cell_144/MatMul/ReadVariableOp?+while/lstm_cell_144/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOp?
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/MatMul?
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOp?
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/MatMul_1?
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/add?
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOp?
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/BiasAdd?
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim?
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_144/split?
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid?
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid_1?
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul?
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Relu?
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul_1?
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/add_1?
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid_2?
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Relu_1?
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_lstm_142_layer_call_fn_2825669
inputs_0
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_142_layer_call_and_return_conditional_losses_28208112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
??
?
while_body_2825796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_146_matmul_readvariableop_resource_0:	 ?I
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_146_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_146_matmul_readvariableop_resource:	 ?G
4while_lstm_cell_146_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_146_biasadd_readvariableop_resource:	???*while/lstm_cell_146/BiasAdd/ReadVariableOp?)while/lstm_cell_146/MatMul/ReadVariableOp?+while/lstm_cell_146/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_146/MatMul/ReadVariableOp?
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/MatMul?
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_146/MatMul_1/ReadVariableOp?
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/MatMul_1?
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/add?
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_146/BiasAdd/ReadVariableOp?
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/BiasAdd?
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_146/split/split_dim?
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_146/split?
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid?
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid_1?
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul?
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Relu?
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul_1?
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/add_1?
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid_2?
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Relu_1?
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?

?
F__inference_dense_101_layer_call_and_return_conditional_losses_2826461

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?1
?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2823188

inputs#
lstm_141_2823152:	?#
lstm_141_2823154:	 ?
lstm_141_2823156:	?#
lstm_142_2823160:	 ?#
lstm_142_2823162:	 ?
lstm_142_2823164:	?#
lstm_143_2823168:	 ?#
lstm_143_2823170:	 ?
lstm_143_2823172:	?#
dense_100_2823176:  
dense_100_2823178: #
dense_101_2823182: 
dense_101_2823184:
identity??!dense_100/StatefulPartitionedCall?!dense_101/StatefulPartitionedCall?#dropout_204/StatefulPartitionedCall?#dropout_205/StatefulPartitionedCall?#dropout_206/StatefulPartitionedCall?#dropout_207/StatefulPartitionedCall? lstm_141/StatefulPartitionedCall? lstm_142/StatefulPartitionedCall? lstm_143/StatefulPartitionedCall?
 lstm_141/StatefulPartitionedCallStatefulPartitionedCallinputslstm_141_2823152lstm_141_2823154lstm_141_2823156*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_141_layer_call_and_return_conditional_losses_28231072"
 lstm_141/StatefulPartitionedCall?
#dropout_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_204_layer_call_and_return_conditional_losses_28229402%
#dropout_204/StatefulPartitionedCall?
 lstm_142/StatefulPartitionedCallStatefulPartitionedCall,dropout_204/StatefulPartitionedCall:output:0lstm_142_2823160lstm_142_2823162lstm_142_2823164*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_142_layer_call_and_return_conditional_losses_28229112"
 lstm_142/StatefulPartitionedCall?
#dropout_205/StatefulPartitionedCallStatefulPartitionedCall)lstm_142/StatefulPartitionedCall:output:0$^dropout_204/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_205_layer_call_and_return_conditional_losses_28227442%
#dropout_205/StatefulPartitionedCall?
 lstm_143/StatefulPartitionedCallStatefulPartitionedCall,dropout_205/StatefulPartitionedCall:output:0lstm_143_2823168lstm_143_2823170lstm_143_2823172*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_143_layer_call_and_return_conditional_losses_28227152"
 lstm_143/StatefulPartitionedCall?
#dropout_206/StatefulPartitionedCallStatefulPartitionedCall)lstm_143/StatefulPartitionedCall:output:0$^dropout_205/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_206_layer_call_and_return_conditional_losses_28225482%
#dropout_206/StatefulPartitionedCall?
!dense_100/StatefulPartitionedCallStatefulPartitionedCall,dropout_206/StatefulPartitionedCall:output:0dense_100_2823176dense_100_2823178*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_28224262#
!dense_100/StatefulPartitionedCall?
#dropout_207/StatefulPartitionedCallStatefulPartitionedCall*dense_100/StatefulPartitionedCall:output:0$^dropout_206/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_207_layer_call_and_return_conditional_losses_28225152%
#dropout_207/StatefulPartitionedCall?
!dense_101/StatefulPartitionedCallStatefulPartitionedCall,dropout_207/StatefulPartitionedCall:output:0dense_101_2823182dense_101_2823184*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_101_layer_call_and_return_conditional_losses_28224492#
!dense_101/StatefulPartitionedCall?
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_100/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall$^dropout_204/StatefulPartitionedCall$^dropout_205/StatefulPartitionedCall$^dropout_206/StatefulPartitionedCall$^dropout_207/StatefulPartitionedCall!^lstm_141/StatefulPartitionedCall!^lstm_142/StatefulPartitionedCall!^lstm_143/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2J
#dropout_204/StatefulPartitionedCall#dropout_204/StatefulPartitionedCall2J
#dropout_205/StatefulPartitionedCall#dropout_205/StatefulPartitionedCall2J
#dropout_206/StatefulPartitionedCall#dropout_206/StatefulPartitionedCall2J
#dropout_207/StatefulPartitionedCall#dropout_207/StatefulPartitionedCall2D
 lstm_141/StatefulPartitionedCall lstm_141/StatefulPartitionedCall2D
 lstm_142/StatefulPartitionedCall lstm_142/StatefulPartitionedCall2D
 lstm_143/StatefulPartitionedCall lstm_143/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?`
?
)sequential_37_lstm_143_while_body_2819924J
Fsequential_37_lstm_143_while_sequential_37_lstm_143_while_loop_counterP
Lsequential_37_lstm_143_while_sequential_37_lstm_143_while_maximum_iterations,
(sequential_37_lstm_143_while_placeholder.
*sequential_37_lstm_143_while_placeholder_1.
*sequential_37_lstm_143_while_placeholder_2.
*sequential_37_lstm_143_while_placeholder_3I
Esequential_37_lstm_143_while_sequential_37_lstm_143_strided_slice_1_0?
?sequential_37_lstm_143_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_143_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_37_lstm_143_while_lstm_cell_146_matmul_readvariableop_resource_0:	 ?`
Msequential_37_lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource_0:	 ?[
Lsequential_37_lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource_0:	?)
%sequential_37_lstm_143_while_identity+
'sequential_37_lstm_143_while_identity_1+
'sequential_37_lstm_143_while_identity_2+
'sequential_37_lstm_143_while_identity_3+
'sequential_37_lstm_143_while_identity_4+
'sequential_37_lstm_143_while_identity_5G
Csequential_37_lstm_143_while_sequential_37_lstm_143_strided_slice_1?
sequential_37_lstm_143_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_143_tensorarrayunstack_tensorlistfromtensor\
Isequential_37_lstm_143_while_lstm_cell_146_matmul_readvariableop_resource:	 ?^
Ksequential_37_lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource:	 ?Y
Jsequential_37_lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource:	???Asequential_37/lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp?@sequential_37/lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp?Bsequential_37/lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp?
Nsequential_37/lstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2P
Nsequential_37/lstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shape?
@sequential_37/lstm_143/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_37_lstm_143_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_143_tensorarrayunstack_tensorlistfromtensor_0(sequential_37_lstm_143_while_placeholderWsequential_37/lstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02B
@sequential_37/lstm_143/while/TensorArrayV2Read/TensorListGetItem?
@sequential_37/lstm_143/while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOpKsequential_37_lstm_143_while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02B
@sequential_37/lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp?
1sequential_37/lstm_143/while/lstm_cell_146/MatMulMatMulGsequential_37/lstm_143/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_37/lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????23
1sequential_37/lstm_143/while/lstm_cell_146/MatMul?
Bsequential_37/lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOpMsequential_37_lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02D
Bsequential_37/lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp?
3sequential_37/lstm_143/while/lstm_cell_146/MatMul_1MatMul*sequential_37_lstm_143_while_placeholder_2Jsequential_37/lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????25
3sequential_37/lstm_143/while/lstm_cell_146/MatMul_1?
.sequential_37/lstm_143/while/lstm_cell_146/addAddV2;sequential_37/lstm_143/while/lstm_cell_146/MatMul:product:0=sequential_37/lstm_143/while/lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????20
.sequential_37/lstm_143/while/lstm_cell_146/add?
Asequential_37/lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOpLsequential_37_lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02C
Asequential_37/lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp?
2sequential_37/lstm_143/while/lstm_cell_146/BiasAddBiasAdd2sequential_37/lstm_143/while/lstm_cell_146/add:z:0Isequential_37/lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????24
2sequential_37/lstm_143/while/lstm_cell_146/BiasAdd?
:sequential_37/lstm_143/while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_37/lstm_143/while/lstm_cell_146/split/split_dim?
0sequential_37/lstm_143/while/lstm_cell_146/splitSplitCsequential_37/lstm_143/while/lstm_cell_146/split/split_dim:output:0;sequential_37/lstm_143/while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split22
0sequential_37/lstm_143/while/lstm_cell_146/split?
2sequential_37/lstm_143/while/lstm_cell_146/SigmoidSigmoid9sequential_37/lstm_143/while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 24
2sequential_37/lstm_143/while/lstm_cell_146/Sigmoid?
4sequential_37/lstm_143/while/lstm_cell_146/Sigmoid_1Sigmoid9sequential_37/lstm_143/while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 26
4sequential_37/lstm_143/while/lstm_cell_146/Sigmoid_1?
.sequential_37/lstm_143/while/lstm_cell_146/mulMul8sequential_37/lstm_143/while/lstm_cell_146/Sigmoid_1:y:0*sequential_37_lstm_143_while_placeholder_3*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_143/while/lstm_cell_146/mul?
/sequential_37/lstm_143/while/lstm_cell_146/ReluRelu9sequential_37/lstm_143/while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 21
/sequential_37/lstm_143/while/lstm_cell_146/Relu?
0sequential_37/lstm_143/while/lstm_cell_146/mul_1Mul6sequential_37/lstm_143/while/lstm_cell_146/Sigmoid:y:0=sequential_37/lstm_143/while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 22
0sequential_37/lstm_143/while/lstm_cell_146/mul_1?
0sequential_37/lstm_143/while/lstm_cell_146/add_1AddV22sequential_37/lstm_143/while/lstm_cell_146/mul:z:04sequential_37/lstm_143/while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 22
0sequential_37/lstm_143/while/lstm_cell_146/add_1?
4sequential_37/lstm_143/while/lstm_cell_146/Sigmoid_2Sigmoid9sequential_37/lstm_143/while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 26
4sequential_37/lstm_143/while/lstm_cell_146/Sigmoid_2?
1sequential_37/lstm_143/while/lstm_cell_146/Relu_1Relu4sequential_37/lstm_143/while/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 23
1sequential_37/lstm_143/while/lstm_cell_146/Relu_1?
0sequential_37/lstm_143/while/lstm_cell_146/mul_2Mul8sequential_37/lstm_143/while/lstm_cell_146/Sigmoid_2:y:0?sequential_37/lstm_143/while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 22
0sequential_37/lstm_143/while/lstm_cell_146/mul_2?
Asequential_37/lstm_143/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_37_lstm_143_while_placeholder_1(sequential_37_lstm_143_while_placeholder4sequential_37/lstm_143/while/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype02C
Asequential_37/lstm_143/while/TensorArrayV2Write/TensorListSetItem?
"sequential_37/lstm_143/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_37/lstm_143/while/add/y?
 sequential_37/lstm_143/while/addAddV2(sequential_37_lstm_143_while_placeholder+sequential_37/lstm_143/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_37/lstm_143/while/add?
$sequential_37/lstm_143/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_37/lstm_143/while/add_1/y?
"sequential_37/lstm_143/while/add_1AddV2Fsequential_37_lstm_143_while_sequential_37_lstm_143_while_loop_counter-sequential_37/lstm_143/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_37/lstm_143/while/add_1?
%sequential_37/lstm_143/while/IdentityIdentity&sequential_37/lstm_143/while/add_1:z:0"^sequential_37/lstm_143/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_37/lstm_143/while/Identity?
'sequential_37/lstm_143/while/Identity_1IdentityLsequential_37_lstm_143_while_sequential_37_lstm_143_while_maximum_iterations"^sequential_37/lstm_143/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_37/lstm_143/while/Identity_1?
'sequential_37/lstm_143/while/Identity_2Identity$sequential_37/lstm_143/while/add:z:0"^sequential_37/lstm_143/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_37/lstm_143/while/Identity_2?
'sequential_37/lstm_143/while/Identity_3IdentityQsequential_37/lstm_143/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_37/lstm_143/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_37/lstm_143/while/Identity_3?
'sequential_37/lstm_143/while/Identity_4Identity4sequential_37/lstm_143/while/lstm_cell_146/mul_2:z:0"^sequential_37/lstm_143/while/NoOp*
T0*'
_output_shapes
:????????? 2)
'sequential_37/lstm_143/while/Identity_4?
'sequential_37/lstm_143/while/Identity_5Identity4sequential_37/lstm_143/while/lstm_cell_146/add_1:z:0"^sequential_37/lstm_143/while/NoOp*
T0*'
_output_shapes
:????????? 2)
'sequential_37/lstm_143/while/Identity_5?
!sequential_37/lstm_143/while/NoOpNoOpB^sequential_37/lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOpA^sequential_37/lstm_143/while/lstm_cell_146/MatMul/ReadVariableOpC^sequential_37/lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2#
!sequential_37/lstm_143/while/NoOp"W
%sequential_37_lstm_143_while_identity.sequential_37/lstm_143/while/Identity:output:0"[
'sequential_37_lstm_143_while_identity_10sequential_37/lstm_143/while/Identity_1:output:0"[
'sequential_37_lstm_143_while_identity_20sequential_37/lstm_143/while/Identity_2:output:0"[
'sequential_37_lstm_143_while_identity_30sequential_37/lstm_143/while/Identity_3:output:0"[
'sequential_37_lstm_143_while_identity_40sequential_37/lstm_143/while/Identity_4:output:0"[
'sequential_37_lstm_143_while_identity_50sequential_37/lstm_143/while/Identity_5:output:0"?
Jsequential_37_lstm_143_while_lstm_cell_146_biasadd_readvariableop_resourceLsequential_37_lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource_0"?
Ksequential_37_lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resourceMsequential_37_lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource_0"?
Isequential_37_lstm_143_while_lstm_cell_146_matmul_readvariableop_resourceKsequential_37_lstm_143_while_lstm_cell_146_matmul_readvariableop_resource_0"?
Csequential_37_lstm_143_while_sequential_37_lstm_143_strided_slice_1Esequential_37_lstm_143_while_sequential_37_lstm_143_strided_slice_1_0"?
sequential_37_lstm_143_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_143_tensorarrayunstack_tensorlistfromtensor?sequential_37_lstm_143_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_143_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2?
Asequential_37/lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOpAsequential_37/lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp2?
@sequential_37/lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp@sequential_37/lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp2?
Bsequential_37/lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOpBsequential_37/lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
f
H__inference_dropout_205_layer_call_and_return_conditional_losses_2822248

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:????????? 2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? :S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2824317

inputsH
5lstm_141_lstm_cell_144_matmul_readvariableop_resource:	?J
7lstm_141_lstm_cell_144_matmul_1_readvariableop_resource:	 ?E
6lstm_141_lstm_cell_144_biasadd_readvariableop_resource:	?H
5lstm_142_lstm_cell_145_matmul_readvariableop_resource:	 ?J
7lstm_142_lstm_cell_145_matmul_1_readvariableop_resource:	 ?E
6lstm_142_lstm_cell_145_biasadd_readvariableop_resource:	?H
5lstm_143_lstm_cell_146_matmul_readvariableop_resource:	 ?J
7lstm_143_lstm_cell_146_matmul_1_readvariableop_resource:	 ?E
6lstm_143_lstm_cell_146_biasadd_readvariableop_resource:	?:
(dense_100_matmul_readvariableop_resource:  7
)dense_100_biasadd_readvariableop_resource: :
(dense_101_matmul_readvariableop_resource: 7
)dense_101_biasadd_readvariableop_resource:
identity?? dense_100/BiasAdd/ReadVariableOp?dense_100/MatMul/ReadVariableOp? dense_101/BiasAdd/ReadVariableOp?dense_101/MatMul/ReadVariableOp?-lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp?,lstm_141/lstm_cell_144/MatMul/ReadVariableOp?.lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp?lstm_141/while?-lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp?,lstm_142/lstm_cell_145/MatMul/ReadVariableOp?.lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp?lstm_142/while?-lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp?,lstm_143/lstm_cell_146/MatMul/ReadVariableOp?.lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp?lstm_143/whileV
lstm_141/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_141/Shape?
lstm_141/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_141/strided_slice/stack?
lstm_141/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_141/strided_slice/stack_1?
lstm_141/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_141/strided_slice/stack_2?
lstm_141/strided_sliceStridedSlicelstm_141/Shape:output:0%lstm_141/strided_slice/stack:output:0'lstm_141/strided_slice/stack_1:output:0'lstm_141/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_141/strided_slicen
lstm_141/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_141/zeros/mul/y?
lstm_141/zeros/mulMullstm_141/strided_slice:output:0lstm_141/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_141/zeros/mulq
lstm_141/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_141/zeros/Less/y?
lstm_141/zeros/LessLesslstm_141/zeros/mul:z:0lstm_141/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_141/zeros/Lesst
lstm_141/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_141/zeros/packed/1?
lstm_141/zeros/packedPacklstm_141/strided_slice:output:0 lstm_141/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_141/zeros/packedq
lstm_141/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_141/zeros/Const?
lstm_141/zerosFilllstm_141/zeros/packed:output:0lstm_141/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_141/zerosr
lstm_141/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_141/zeros_1/mul/y?
lstm_141/zeros_1/mulMullstm_141/strided_slice:output:0lstm_141/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_141/zeros_1/mulu
lstm_141/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_141/zeros_1/Less/y?
lstm_141/zeros_1/LessLesslstm_141/zeros_1/mul:z:0 lstm_141/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_141/zeros_1/Lessx
lstm_141/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_141/zeros_1/packed/1?
lstm_141/zeros_1/packedPacklstm_141/strided_slice:output:0"lstm_141/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_141/zeros_1/packedu
lstm_141/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_141/zeros_1/Const?
lstm_141/zeros_1Fill lstm_141/zeros_1/packed:output:0lstm_141/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_141/zeros_1?
lstm_141/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_141/transpose/perm?
lstm_141/transpose	Transposeinputs lstm_141/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_141/transposej
lstm_141/Shape_1Shapelstm_141/transpose:y:0*
T0*
_output_shapes
:2
lstm_141/Shape_1?
lstm_141/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_141/strided_slice_1/stack?
 lstm_141/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_141/strided_slice_1/stack_1?
 lstm_141/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_141/strided_slice_1/stack_2?
lstm_141/strided_slice_1StridedSlicelstm_141/Shape_1:output:0'lstm_141/strided_slice_1/stack:output:0)lstm_141/strided_slice_1/stack_1:output:0)lstm_141/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_141/strided_slice_1?
$lstm_141/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$lstm_141/TensorArrayV2/element_shape?
lstm_141/TensorArrayV2TensorListReserve-lstm_141/TensorArrayV2/element_shape:output:0!lstm_141/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_141/TensorArrayV2?
>lstm_141/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_141/TensorArrayUnstack/TensorListFromTensor/element_shape?
0lstm_141/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_141/transpose:y:0Glstm_141/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_141/TensorArrayUnstack/TensorListFromTensor?
lstm_141/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_141/strided_slice_2/stack?
 lstm_141/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_141/strided_slice_2/stack_1?
 lstm_141/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_141/strided_slice_2/stack_2?
lstm_141/strided_slice_2StridedSlicelstm_141/transpose:y:0'lstm_141/strided_slice_2/stack:output:0)lstm_141/strided_slice_2/stack_1:output:0)lstm_141/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_141/strided_slice_2?
,lstm_141/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp5lstm_141_lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,lstm_141/lstm_cell_144/MatMul/ReadVariableOp?
lstm_141/lstm_cell_144/MatMulMatMul!lstm_141/strided_slice_2:output:04lstm_141/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_141/lstm_cell_144/MatMul?
.lstm_141/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp7lstm_141_lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype020
.lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp?
lstm_141/lstm_cell_144/MatMul_1MatMullstm_141/zeros:output:06lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_141/lstm_cell_144/MatMul_1?
lstm_141/lstm_cell_144/addAddV2'lstm_141/lstm_cell_144/MatMul:product:0)lstm_141/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_141/lstm_cell_144/add?
-lstm_141/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp6lstm_141_lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp?
lstm_141/lstm_cell_144/BiasAddBiasAddlstm_141/lstm_cell_144/add:z:05lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
lstm_141/lstm_cell_144/BiasAdd?
&lstm_141/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_141/lstm_cell_144/split/split_dim?
lstm_141/lstm_cell_144/splitSplit/lstm_141/lstm_cell_144/split/split_dim:output:0'lstm_141/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_141/lstm_cell_144/split?
lstm_141/lstm_cell_144/SigmoidSigmoid%lstm_141/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_141/lstm_cell_144/Sigmoid?
 lstm_141/lstm_cell_144/Sigmoid_1Sigmoid%lstm_141/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2"
 lstm_141/lstm_cell_144/Sigmoid_1?
lstm_141/lstm_cell_144/mulMul$lstm_141/lstm_cell_144/Sigmoid_1:y:0lstm_141/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_141/lstm_cell_144/mul?
lstm_141/lstm_cell_144/ReluRelu%lstm_141/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_141/lstm_cell_144/Relu?
lstm_141/lstm_cell_144/mul_1Mul"lstm_141/lstm_cell_144/Sigmoid:y:0)lstm_141/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_141/lstm_cell_144/mul_1?
lstm_141/lstm_cell_144/add_1AddV2lstm_141/lstm_cell_144/mul:z:0 lstm_141/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_141/lstm_cell_144/add_1?
 lstm_141/lstm_cell_144/Sigmoid_2Sigmoid%lstm_141/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2"
 lstm_141/lstm_cell_144/Sigmoid_2?
lstm_141/lstm_cell_144/Relu_1Relu lstm_141/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_141/lstm_cell_144/Relu_1?
lstm_141/lstm_cell_144/mul_2Mul$lstm_141/lstm_cell_144/Sigmoid_2:y:0+lstm_141/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_141/lstm_cell_144/mul_2?
&lstm_141/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2(
&lstm_141/TensorArrayV2_1/element_shape?
lstm_141/TensorArrayV2_1TensorListReserve/lstm_141/TensorArrayV2_1/element_shape:output:0!lstm_141/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_141/TensorArrayV2_1`
lstm_141/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_141/time?
!lstm_141/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!lstm_141/while/maximum_iterations|
lstm_141/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_141/while/loop_counter?
lstm_141/whileWhile$lstm_141/while/loop_counter:output:0*lstm_141/while/maximum_iterations:output:0lstm_141/time:output:0!lstm_141/TensorArrayV2_1:handle:0lstm_141/zeros:output:0lstm_141/zeros_1:output:0!lstm_141/strided_slice_1:output:0@lstm_141/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_141_lstm_cell_144_matmul_readvariableop_resource7lstm_141_lstm_cell_144_matmul_1_readvariableop_resource6lstm_141_lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_141_while_body_2823894*'
condR
lstm_141_while_cond_2823893*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_141/while?
9lstm_141/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2;
9lstm_141/TensorArrayV2Stack/TensorListStack/element_shape?
+lstm_141/TensorArrayV2Stack/TensorListStackTensorListStacklstm_141/while:output:3Blstm_141/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02-
+lstm_141/TensorArrayV2Stack/TensorListStack?
lstm_141/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
lstm_141/strided_slice_3/stack?
 lstm_141/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_141/strided_slice_3/stack_1?
 lstm_141/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_141/strided_slice_3/stack_2?
lstm_141/strided_slice_3StridedSlice4lstm_141/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_141/strided_slice_3/stack:output:0)lstm_141/strided_slice_3/stack_1:output:0)lstm_141/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_141/strided_slice_3?
lstm_141/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_141/transpose_1/perm?
lstm_141/transpose_1	Transpose4lstm_141/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_141/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_141/transpose_1x
lstm_141/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_141/runtime{
dropout_204/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_204/dropout/Const?
dropout_204/dropout/MulMullstm_141/transpose_1:y:0"dropout_204/dropout/Const:output:0*
T0*+
_output_shapes
:????????? 2
dropout_204/dropout/Mul~
dropout_204/dropout/ShapeShapelstm_141/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_204/dropout/Shape?
0dropout_204/dropout/random_uniform/RandomUniformRandomUniform"dropout_204/dropout/Shape:output:0*
T0*+
_output_shapes
:????????? *
dtype022
0dropout_204/dropout/random_uniform/RandomUniform?
"dropout_204/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"dropout_204/dropout/GreaterEqual/y?
 dropout_204/dropout/GreaterEqualGreaterEqual9dropout_204/dropout/random_uniform/RandomUniform:output:0+dropout_204/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:????????? 2"
 dropout_204/dropout/GreaterEqual?
dropout_204/dropout/CastCast$dropout_204/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:????????? 2
dropout_204/dropout/Cast?
dropout_204/dropout/Mul_1Muldropout_204/dropout/Mul:z:0dropout_204/dropout/Cast:y:0*
T0*+
_output_shapes
:????????? 2
dropout_204/dropout/Mul_1m
lstm_142/ShapeShapedropout_204/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_142/Shape?
lstm_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_142/strided_slice/stack?
lstm_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_142/strided_slice/stack_1?
lstm_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_142/strided_slice/stack_2?
lstm_142/strided_sliceStridedSlicelstm_142/Shape:output:0%lstm_142/strided_slice/stack:output:0'lstm_142/strided_slice/stack_1:output:0'lstm_142/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_142/strided_slicen
lstm_142/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_142/zeros/mul/y?
lstm_142/zeros/mulMullstm_142/strided_slice:output:0lstm_142/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_142/zeros/mulq
lstm_142/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_142/zeros/Less/y?
lstm_142/zeros/LessLesslstm_142/zeros/mul:z:0lstm_142/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_142/zeros/Lesst
lstm_142/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_142/zeros/packed/1?
lstm_142/zeros/packedPacklstm_142/strided_slice:output:0 lstm_142/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_142/zeros/packedq
lstm_142/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_142/zeros/Const?
lstm_142/zerosFilllstm_142/zeros/packed:output:0lstm_142/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_142/zerosr
lstm_142/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_142/zeros_1/mul/y?
lstm_142/zeros_1/mulMullstm_142/strided_slice:output:0lstm_142/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_142/zeros_1/mulu
lstm_142/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_142/zeros_1/Less/y?
lstm_142/zeros_1/LessLesslstm_142/zeros_1/mul:z:0 lstm_142/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_142/zeros_1/Lessx
lstm_142/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_142/zeros_1/packed/1?
lstm_142/zeros_1/packedPacklstm_142/strided_slice:output:0"lstm_142/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_142/zeros_1/packedu
lstm_142/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_142/zeros_1/Const?
lstm_142/zeros_1Fill lstm_142/zeros_1/packed:output:0lstm_142/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_142/zeros_1?
lstm_142/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_142/transpose/perm?
lstm_142/transpose	Transposedropout_204/dropout/Mul_1:z:0 lstm_142/transpose/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_142/transposej
lstm_142/Shape_1Shapelstm_142/transpose:y:0*
T0*
_output_shapes
:2
lstm_142/Shape_1?
lstm_142/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_142/strided_slice_1/stack?
 lstm_142/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_142/strided_slice_1/stack_1?
 lstm_142/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_142/strided_slice_1/stack_2?
lstm_142/strided_slice_1StridedSlicelstm_142/Shape_1:output:0'lstm_142/strided_slice_1/stack:output:0)lstm_142/strided_slice_1/stack_1:output:0)lstm_142/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_142/strided_slice_1?
$lstm_142/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$lstm_142/TensorArrayV2/element_shape?
lstm_142/TensorArrayV2TensorListReserve-lstm_142/TensorArrayV2/element_shape:output:0!lstm_142/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_142/TensorArrayV2?
>lstm_142/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2@
>lstm_142/TensorArrayUnstack/TensorListFromTensor/element_shape?
0lstm_142/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_142/transpose:y:0Glstm_142/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_142/TensorArrayUnstack/TensorListFromTensor?
lstm_142/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_142/strided_slice_2/stack?
 lstm_142/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_142/strided_slice_2/stack_1?
 lstm_142/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_142/strided_slice_2/stack_2?
lstm_142/strided_slice_2StridedSlicelstm_142/transpose:y:0'lstm_142/strided_slice_2/stack:output:0)lstm_142/strided_slice_2/stack_1:output:0)lstm_142/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_142/strided_slice_2?
,lstm_142/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp5lstm_142_lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02.
,lstm_142/lstm_cell_145/MatMul/ReadVariableOp?
lstm_142/lstm_cell_145/MatMulMatMul!lstm_142/strided_slice_2:output:04lstm_142/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_142/lstm_cell_145/MatMul?
.lstm_142/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp7lstm_142_lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype020
.lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp?
lstm_142/lstm_cell_145/MatMul_1MatMullstm_142/zeros:output:06lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_142/lstm_cell_145/MatMul_1?
lstm_142/lstm_cell_145/addAddV2'lstm_142/lstm_cell_145/MatMul:product:0)lstm_142/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_142/lstm_cell_145/add?
-lstm_142/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp6lstm_142_lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp?
lstm_142/lstm_cell_145/BiasAddBiasAddlstm_142/lstm_cell_145/add:z:05lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
lstm_142/lstm_cell_145/BiasAdd?
&lstm_142/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_142/lstm_cell_145/split/split_dim?
lstm_142/lstm_cell_145/splitSplit/lstm_142/lstm_cell_145/split/split_dim:output:0'lstm_142/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_142/lstm_cell_145/split?
lstm_142/lstm_cell_145/SigmoidSigmoid%lstm_142/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_142/lstm_cell_145/Sigmoid?
 lstm_142/lstm_cell_145/Sigmoid_1Sigmoid%lstm_142/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2"
 lstm_142/lstm_cell_145/Sigmoid_1?
lstm_142/lstm_cell_145/mulMul$lstm_142/lstm_cell_145/Sigmoid_1:y:0lstm_142/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_142/lstm_cell_145/mul?
lstm_142/lstm_cell_145/ReluRelu%lstm_142/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_142/lstm_cell_145/Relu?
lstm_142/lstm_cell_145/mul_1Mul"lstm_142/lstm_cell_145/Sigmoid:y:0)lstm_142/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_142/lstm_cell_145/mul_1?
lstm_142/lstm_cell_145/add_1AddV2lstm_142/lstm_cell_145/mul:z:0 lstm_142/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_142/lstm_cell_145/add_1?
 lstm_142/lstm_cell_145/Sigmoid_2Sigmoid%lstm_142/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2"
 lstm_142/lstm_cell_145/Sigmoid_2?
lstm_142/lstm_cell_145/Relu_1Relu lstm_142/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_142/lstm_cell_145/Relu_1?
lstm_142/lstm_cell_145/mul_2Mul$lstm_142/lstm_cell_145/Sigmoid_2:y:0+lstm_142/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_142/lstm_cell_145/mul_2?
&lstm_142/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2(
&lstm_142/TensorArrayV2_1/element_shape?
lstm_142/TensorArrayV2_1TensorListReserve/lstm_142/TensorArrayV2_1/element_shape:output:0!lstm_142/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_142/TensorArrayV2_1`
lstm_142/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_142/time?
!lstm_142/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!lstm_142/while/maximum_iterations|
lstm_142/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_142/while/loop_counter?
lstm_142/whileWhile$lstm_142/while/loop_counter:output:0*lstm_142/while/maximum_iterations:output:0lstm_142/time:output:0!lstm_142/TensorArrayV2_1:handle:0lstm_142/zeros:output:0lstm_142/zeros_1:output:0!lstm_142/strided_slice_1:output:0@lstm_142/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_142_lstm_cell_145_matmul_readvariableop_resource7lstm_142_lstm_cell_145_matmul_1_readvariableop_resource6lstm_142_lstm_cell_145_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_142_while_body_2824049*'
condR
lstm_142_while_cond_2824048*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_142/while?
9lstm_142/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2;
9lstm_142/TensorArrayV2Stack/TensorListStack/element_shape?
+lstm_142/TensorArrayV2Stack/TensorListStackTensorListStacklstm_142/while:output:3Blstm_142/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02-
+lstm_142/TensorArrayV2Stack/TensorListStack?
lstm_142/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
lstm_142/strided_slice_3/stack?
 lstm_142/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_142/strided_slice_3/stack_1?
 lstm_142/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_142/strided_slice_3/stack_2?
lstm_142/strided_slice_3StridedSlice4lstm_142/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_142/strided_slice_3/stack:output:0)lstm_142/strided_slice_3/stack_1:output:0)lstm_142/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_142/strided_slice_3?
lstm_142/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_142/transpose_1/perm?
lstm_142/transpose_1	Transpose4lstm_142/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_142/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_142/transpose_1x
lstm_142/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_142/runtime{
dropout_205/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_205/dropout/Const?
dropout_205/dropout/MulMullstm_142/transpose_1:y:0"dropout_205/dropout/Const:output:0*
T0*+
_output_shapes
:????????? 2
dropout_205/dropout/Mul~
dropout_205/dropout/ShapeShapelstm_142/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_205/dropout/Shape?
0dropout_205/dropout/random_uniform/RandomUniformRandomUniform"dropout_205/dropout/Shape:output:0*
T0*+
_output_shapes
:????????? *
dtype022
0dropout_205/dropout/random_uniform/RandomUniform?
"dropout_205/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"dropout_205/dropout/GreaterEqual/y?
 dropout_205/dropout/GreaterEqualGreaterEqual9dropout_205/dropout/random_uniform/RandomUniform:output:0+dropout_205/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:????????? 2"
 dropout_205/dropout/GreaterEqual?
dropout_205/dropout/CastCast$dropout_205/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:????????? 2
dropout_205/dropout/Cast?
dropout_205/dropout/Mul_1Muldropout_205/dropout/Mul:z:0dropout_205/dropout/Cast:y:0*
T0*+
_output_shapes
:????????? 2
dropout_205/dropout/Mul_1m
lstm_143/ShapeShapedropout_205/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_143/Shape?
lstm_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_143/strided_slice/stack?
lstm_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_143/strided_slice/stack_1?
lstm_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_143/strided_slice/stack_2?
lstm_143/strided_sliceStridedSlicelstm_143/Shape:output:0%lstm_143/strided_slice/stack:output:0'lstm_143/strided_slice/stack_1:output:0'lstm_143/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_143/strided_slicen
lstm_143/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_143/zeros/mul/y?
lstm_143/zeros/mulMullstm_143/strided_slice:output:0lstm_143/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_143/zeros/mulq
lstm_143/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_143/zeros/Less/y?
lstm_143/zeros/LessLesslstm_143/zeros/mul:z:0lstm_143/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_143/zeros/Lesst
lstm_143/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_143/zeros/packed/1?
lstm_143/zeros/packedPacklstm_143/strided_slice:output:0 lstm_143/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_143/zeros/packedq
lstm_143/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_143/zeros/Const?
lstm_143/zerosFilllstm_143/zeros/packed:output:0lstm_143/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_143/zerosr
lstm_143/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_143/zeros_1/mul/y?
lstm_143/zeros_1/mulMullstm_143/strided_slice:output:0lstm_143/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_143/zeros_1/mulu
lstm_143/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_143/zeros_1/Less/y?
lstm_143/zeros_1/LessLesslstm_143/zeros_1/mul:z:0 lstm_143/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_143/zeros_1/Lessx
lstm_143/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_143/zeros_1/packed/1?
lstm_143/zeros_1/packedPacklstm_143/strided_slice:output:0"lstm_143/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_143/zeros_1/packedu
lstm_143/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_143/zeros_1/Const?
lstm_143/zeros_1Fill lstm_143/zeros_1/packed:output:0lstm_143/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_143/zeros_1?
lstm_143/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_143/transpose/perm?
lstm_143/transpose	Transposedropout_205/dropout/Mul_1:z:0 lstm_143/transpose/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_143/transposej
lstm_143/Shape_1Shapelstm_143/transpose:y:0*
T0*
_output_shapes
:2
lstm_143/Shape_1?
lstm_143/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_143/strided_slice_1/stack?
 lstm_143/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_143/strided_slice_1/stack_1?
 lstm_143/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_143/strided_slice_1/stack_2?
lstm_143/strided_slice_1StridedSlicelstm_143/Shape_1:output:0'lstm_143/strided_slice_1/stack:output:0)lstm_143/strided_slice_1/stack_1:output:0)lstm_143/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_143/strided_slice_1?
$lstm_143/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$lstm_143/TensorArrayV2/element_shape?
lstm_143/TensorArrayV2TensorListReserve-lstm_143/TensorArrayV2/element_shape:output:0!lstm_143/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_143/TensorArrayV2?
>lstm_143/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2@
>lstm_143/TensorArrayUnstack/TensorListFromTensor/element_shape?
0lstm_143/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_143/transpose:y:0Glstm_143/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_143/TensorArrayUnstack/TensorListFromTensor?
lstm_143/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_143/strided_slice_2/stack?
 lstm_143/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_143/strided_slice_2/stack_1?
 lstm_143/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_143/strided_slice_2/stack_2?
lstm_143/strided_slice_2StridedSlicelstm_143/transpose:y:0'lstm_143/strided_slice_2/stack:output:0)lstm_143/strided_slice_2/stack_1:output:0)lstm_143/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_143/strided_slice_2?
,lstm_143/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp5lstm_143_lstm_cell_146_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02.
,lstm_143/lstm_cell_146/MatMul/ReadVariableOp?
lstm_143/lstm_cell_146/MatMulMatMul!lstm_143/strided_slice_2:output:04lstm_143/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_143/lstm_cell_146/MatMul?
.lstm_143/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp7lstm_143_lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype020
.lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp?
lstm_143/lstm_cell_146/MatMul_1MatMullstm_143/zeros:output:06lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_143/lstm_cell_146/MatMul_1?
lstm_143/lstm_cell_146/addAddV2'lstm_143/lstm_cell_146/MatMul:product:0)lstm_143/lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_143/lstm_cell_146/add?
-lstm_143/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp6lstm_143_lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp?
lstm_143/lstm_cell_146/BiasAddBiasAddlstm_143/lstm_cell_146/add:z:05lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
lstm_143/lstm_cell_146/BiasAdd?
&lstm_143/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_143/lstm_cell_146/split/split_dim?
lstm_143/lstm_cell_146/splitSplit/lstm_143/lstm_cell_146/split/split_dim:output:0'lstm_143/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_143/lstm_cell_146/split?
lstm_143/lstm_cell_146/SigmoidSigmoid%lstm_143/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_143/lstm_cell_146/Sigmoid?
 lstm_143/lstm_cell_146/Sigmoid_1Sigmoid%lstm_143/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2"
 lstm_143/lstm_cell_146/Sigmoid_1?
lstm_143/lstm_cell_146/mulMul$lstm_143/lstm_cell_146/Sigmoid_1:y:0lstm_143/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_143/lstm_cell_146/mul?
lstm_143/lstm_cell_146/ReluRelu%lstm_143/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_143/lstm_cell_146/Relu?
lstm_143/lstm_cell_146/mul_1Mul"lstm_143/lstm_cell_146/Sigmoid:y:0)lstm_143/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_143/lstm_cell_146/mul_1?
lstm_143/lstm_cell_146/add_1AddV2lstm_143/lstm_cell_146/mul:z:0 lstm_143/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_143/lstm_cell_146/add_1?
 lstm_143/lstm_cell_146/Sigmoid_2Sigmoid%lstm_143/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2"
 lstm_143/lstm_cell_146/Sigmoid_2?
lstm_143/lstm_cell_146/Relu_1Relu lstm_143/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_143/lstm_cell_146/Relu_1?
lstm_143/lstm_cell_146/mul_2Mul$lstm_143/lstm_cell_146/Sigmoid_2:y:0+lstm_143/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_143/lstm_cell_146/mul_2?
&lstm_143/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2(
&lstm_143/TensorArrayV2_1/element_shape?
lstm_143/TensorArrayV2_1TensorListReserve/lstm_143/TensorArrayV2_1/element_shape:output:0!lstm_143/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_143/TensorArrayV2_1`
lstm_143/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_143/time?
!lstm_143/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!lstm_143/while/maximum_iterations|
lstm_143/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_143/while/loop_counter?
lstm_143/whileWhile$lstm_143/while/loop_counter:output:0*lstm_143/while/maximum_iterations:output:0lstm_143/time:output:0!lstm_143/TensorArrayV2_1:handle:0lstm_143/zeros:output:0lstm_143/zeros_1:output:0!lstm_143/strided_slice_1:output:0@lstm_143/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_143_lstm_cell_146_matmul_readvariableop_resource7lstm_143_lstm_cell_146_matmul_1_readvariableop_resource6lstm_143_lstm_cell_146_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_143_while_body_2824204*'
condR
lstm_143_while_cond_2824203*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_143/while?
9lstm_143/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2;
9lstm_143/TensorArrayV2Stack/TensorListStack/element_shape?
+lstm_143/TensorArrayV2Stack/TensorListStackTensorListStacklstm_143/while:output:3Blstm_143/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02-
+lstm_143/TensorArrayV2Stack/TensorListStack?
lstm_143/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
lstm_143/strided_slice_3/stack?
 lstm_143/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_143/strided_slice_3/stack_1?
 lstm_143/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_143/strided_slice_3/stack_2?
lstm_143/strided_slice_3StridedSlice4lstm_143/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_143/strided_slice_3/stack:output:0)lstm_143/strided_slice_3/stack_1:output:0)lstm_143/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_143/strided_slice_3?
lstm_143/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_143/transpose_1/perm?
lstm_143/transpose_1	Transpose4lstm_143/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_143/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_143/transpose_1x
lstm_143/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_143/runtime{
dropout_206/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_206/dropout/Const?
dropout_206/dropout/MulMul!lstm_143/strided_slice_3:output:0"dropout_206/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_206/dropout/Mul?
dropout_206/dropout/ShapeShape!lstm_143/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_206/dropout/Shape?
0dropout_206/dropout/random_uniform/RandomUniformRandomUniform"dropout_206/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype022
0dropout_206/dropout/random_uniform/RandomUniform?
"dropout_206/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"dropout_206/dropout/GreaterEqual/y?
 dropout_206/dropout/GreaterEqualGreaterEqual9dropout_206/dropout/random_uniform/RandomUniform:output:0+dropout_206/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 dropout_206/dropout/GreaterEqual?
dropout_206/dropout/CastCast$dropout_206/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_206/dropout/Cast?
dropout_206/dropout/Mul_1Muldropout_206/dropout/Mul:z:0dropout_206/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_206/dropout/Mul_1?
dense_100/MatMul/ReadVariableOpReadVariableOp(dense_100_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_100/MatMul/ReadVariableOp?
dense_100/MatMulMatMuldropout_206/dropout/Mul_1:z:0'dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_100/MatMul?
 dense_100/BiasAdd/ReadVariableOpReadVariableOp)dense_100_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_100/BiasAdd/ReadVariableOp?
dense_100/BiasAddBiasAdddense_100/MatMul:product:0(dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_100/BiasAddv
dense_100/ReluReludense_100/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_100/Relu{
dropout_207/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_207/dropout/Const?
dropout_207/dropout/MulMuldense_100/Relu:activations:0"dropout_207/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_207/dropout/Mul?
dropout_207/dropout/ShapeShapedense_100/Relu:activations:0*
T0*
_output_shapes
:2
dropout_207/dropout/Shape?
0dropout_207/dropout/random_uniform/RandomUniformRandomUniform"dropout_207/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype022
0dropout_207/dropout/random_uniform/RandomUniform?
"dropout_207/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"dropout_207/dropout/GreaterEqual/y?
 dropout_207/dropout/GreaterEqualGreaterEqual9dropout_207/dropout/random_uniform/RandomUniform:output:0+dropout_207/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 dropout_207/dropout/GreaterEqual?
dropout_207/dropout/CastCast$dropout_207/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_207/dropout/Cast?
dropout_207/dropout/Mul_1Muldropout_207/dropout/Mul:z:0dropout_207/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_207/dropout/Mul_1?
dense_101/MatMul/ReadVariableOpReadVariableOp(dense_101_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_101/MatMul/ReadVariableOp?
dense_101/MatMulMatMuldropout_207/dropout/Mul_1:z:0'dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_101/MatMul?
 dense_101/BiasAdd/ReadVariableOpReadVariableOp)dense_101_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_101/BiasAdd/ReadVariableOp?
dense_101/BiasAddBiasAdddense_101/MatMul:product:0(dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_101/BiasAddu
IdentityIdentitydense_101/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_100/BiasAdd/ReadVariableOp ^dense_100/MatMul/ReadVariableOp!^dense_101/BiasAdd/ReadVariableOp ^dense_101/MatMul/ReadVariableOp.^lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp-^lstm_141/lstm_cell_144/MatMul/ReadVariableOp/^lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp^lstm_141/while.^lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp-^lstm_142/lstm_cell_145/MatMul/ReadVariableOp/^lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp^lstm_142/while.^lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp-^lstm_143/lstm_cell_146/MatMul/ReadVariableOp/^lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp^lstm_143/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2D
 dense_100/BiasAdd/ReadVariableOp dense_100/BiasAdd/ReadVariableOp2B
dense_100/MatMul/ReadVariableOpdense_100/MatMul/ReadVariableOp2D
 dense_101/BiasAdd/ReadVariableOp dense_101/BiasAdd/ReadVariableOp2B
dense_101/MatMul/ReadVariableOpdense_101/MatMul/ReadVariableOp2^
-lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp-lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp2\
,lstm_141/lstm_cell_144/MatMul/ReadVariableOp,lstm_141/lstm_cell_144/MatMul/ReadVariableOp2`
.lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp.lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp2 
lstm_141/whilelstm_141/while2^
-lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp-lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp2\
,lstm_142/lstm_cell_145/MatMul/ReadVariableOp,lstm_142/lstm_cell_145/MatMul/ReadVariableOp2`
.lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp.lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp2 
lstm_142/whilelstm_142/while2^
-lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp-lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp2\
,lstm_143/lstm_cell_146/MatMul/ReadVariableOp,lstm_143/lstm_cell_146/MatMul/ReadVariableOp2`
.lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp.lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp2 
lstm_143/whilelstm_143/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?L
?

lstm_141_while_body_2823432.
*lstm_141_while_lstm_141_while_loop_counter4
0lstm_141_while_lstm_141_while_maximum_iterations
lstm_141_while_placeholder 
lstm_141_while_placeholder_1 
lstm_141_while_placeholder_2 
lstm_141_while_placeholder_3-
)lstm_141_while_lstm_141_strided_slice_1_0i
elstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_141_while_lstm_cell_144_matmul_readvariableop_resource_0:	?R
?lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource_0:	 ?M
>lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
lstm_141_while_identity
lstm_141_while_identity_1
lstm_141_while_identity_2
lstm_141_while_identity_3
lstm_141_while_identity_4
lstm_141_while_identity_5+
'lstm_141_while_lstm_141_strided_slice_1g
clstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensorN
;lstm_141_while_lstm_cell_144_matmul_readvariableop_resource:	?P
=lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource:	 ?K
<lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource:	???3lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp?2lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp?4lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp?
@lstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@lstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shape?
2lstm_141/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensor_0lstm_141_while_placeholderIlstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype024
2lstm_141/while/TensorArrayV2Read/TensorListGetItem?
2lstm_141/while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp=lstm_141_while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype024
2lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp?
#lstm_141/while/lstm_cell_144/MatMulMatMul9lstm_141/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_141/while/lstm_cell_144/MatMul?
4lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp?lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype026
4lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp?
%lstm_141/while/lstm_cell_144/MatMul_1MatMullstm_141_while_placeholder_2<lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%lstm_141/while/lstm_cell_144/MatMul_1?
 lstm_141/while/lstm_cell_144/addAddV2-lstm_141/while/lstm_cell_144/MatMul:product:0/lstm_141/while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2"
 lstm_141/while/lstm_cell_144/add?
3lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp>lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype025
3lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp?
$lstm_141/while/lstm_cell_144/BiasAddBiasAdd$lstm_141/while/lstm_cell_144/add:z:0;lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$lstm_141/while/lstm_cell_144/BiasAdd?
,lstm_141/while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_141/while/lstm_cell_144/split/split_dim?
"lstm_141/while/lstm_cell_144/splitSplit5lstm_141/while/lstm_cell_144/split/split_dim:output:0-lstm_141/while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2$
"lstm_141/while/lstm_cell_144/split?
$lstm_141/while/lstm_cell_144/SigmoidSigmoid+lstm_141/while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_141/while/lstm_cell_144/Sigmoid?
&lstm_141/while/lstm_cell_144/Sigmoid_1Sigmoid+lstm_141/while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2(
&lstm_141/while/lstm_cell_144/Sigmoid_1?
 lstm_141/while/lstm_cell_144/mulMul*lstm_141/while/lstm_cell_144/Sigmoid_1:y:0lstm_141_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_141/while/lstm_cell_144/mul?
!lstm_141/while/lstm_cell_144/ReluRelu+lstm_141/while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2#
!lstm_141/while/lstm_cell_144/Relu?
"lstm_141/while/lstm_cell_144/mul_1Mul(lstm_141/while/lstm_cell_144/Sigmoid:y:0/lstm_141/while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2$
"lstm_141/while/lstm_cell_144/mul_1?
"lstm_141/while/lstm_cell_144/add_1AddV2$lstm_141/while/lstm_cell_144/mul:z:0&lstm_141/while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_141/while/lstm_cell_144/add_1?
&lstm_141/while/lstm_cell_144/Sigmoid_2Sigmoid+lstm_141/while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2(
&lstm_141/while/lstm_cell_144/Sigmoid_2?
#lstm_141/while/lstm_cell_144/Relu_1Relu&lstm_141/while/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2%
#lstm_141/while/lstm_cell_144/Relu_1?
"lstm_141/while/lstm_cell_144/mul_2Mul*lstm_141/while/lstm_cell_144/Sigmoid_2:y:01lstm_141/while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2$
"lstm_141/while/lstm_cell_144/mul_2?
3lstm_141/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_141_while_placeholder_1lstm_141_while_placeholder&lstm_141/while/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_141/while/TensorArrayV2Write/TensorListSetItemn
lstm_141/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_141/while/add/y?
lstm_141/while/addAddV2lstm_141_while_placeholderlstm_141/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_141/while/addr
lstm_141/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_141/while/add_1/y?
lstm_141/while/add_1AddV2*lstm_141_while_lstm_141_while_loop_counterlstm_141/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_141/while/add_1?
lstm_141/while/IdentityIdentitylstm_141/while/add_1:z:0^lstm_141/while/NoOp*
T0*
_output_shapes
: 2
lstm_141/while/Identity?
lstm_141/while/Identity_1Identity0lstm_141_while_lstm_141_while_maximum_iterations^lstm_141/while/NoOp*
T0*
_output_shapes
: 2
lstm_141/while/Identity_1?
lstm_141/while/Identity_2Identitylstm_141/while/add:z:0^lstm_141/while/NoOp*
T0*
_output_shapes
: 2
lstm_141/while/Identity_2?
lstm_141/while/Identity_3IdentityClstm_141/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_141/while/NoOp*
T0*
_output_shapes
: 2
lstm_141/while/Identity_3?
lstm_141/while/Identity_4Identity&lstm_141/while/lstm_cell_144/mul_2:z:0^lstm_141/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_141/while/Identity_4?
lstm_141/while/Identity_5Identity&lstm_141/while/lstm_cell_144/add_1:z:0^lstm_141/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_141/while/Identity_5?
lstm_141/while/NoOpNoOp4^lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp3^lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp5^lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_141/while/NoOp";
lstm_141_while_identity lstm_141/while/Identity:output:0"?
lstm_141_while_identity_1"lstm_141/while/Identity_1:output:0"?
lstm_141_while_identity_2"lstm_141/while/Identity_2:output:0"?
lstm_141_while_identity_3"lstm_141/while/Identity_3:output:0"?
lstm_141_while_identity_4"lstm_141/while/Identity_4:output:0"?
lstm_141_while_identity_5"lstm_141/while/Identity_5:output:0"T
'lstm_141_while_lstm_141_strided_slice_1)lstm_141_while_lstm_141_strided_slice_1_0"~
<lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource>lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource_0"?
=lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource?lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource_0"|
;lstm_141_while_lstm_cell_144_matmul_readvariableop_resource=lstm_141_while_lstm_cell_144_matmul_readvariableop_resource_0"?
clstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensorelstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2j
3lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp3lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp2h
2lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp2lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp2l
4lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp4lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2820728

inputs

states
states_11
matmul_readvariableop_resource:	 ?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
??
?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2823827

inputsH
5lstm_141_lstm_cell_144_matmul_readvariableop_resource:	?J
7lstm_141_lstm_cell_144_matmul_1_readvariableop_resource:	 ?E
6lstm_141_lstm_cell_144_biasadd_readvariableop_resource:	?H
5lstm_142_lstm_cell_145_matmul_readvariableop_resource:	 ?J
7lstm_142_lstm_cell_145_matmul_1_readvariableop_resource:	 ?E
6lstm_142_lstm_cell_145_biasadd_readvariableop_resource:	?H
5lstm_143_lstm_cell_146_matmul_readvariableop_resource:	 ?J
7lstm_143_lstm_cell_146_matmul_1_readvariableop_resource:	 ?E
6lstm_143_lstm_cell_146_biasadd_readvariableop_resource:	?:
(dense_100_matmul_readvariableop_resource:  7
)dense_100_biasadd_readvariableop_resource: :
(dense_101_matmul_readvariableop_resource: 7
)dense_101_biasadd_readvariableop_resource:
identity?? dense_100/BiasAdd/ReadVariableOp?dense_100/MatMul/ReadVariableOp? dense_101/BiasAdd/ReadVariableOp?dense_101/MatMul/ReadVariableOp?-lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp?,lstm_141/lstm_cell_144/MatMul/ReadVariableOp?.lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp?lstm_141/while?-lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp?,lstm_142/lstm_cell_145/MatMul/ReadVariableOp?.lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp?lstm_142/while?-lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp?,lstm_143/lstm_cell_146/MatMul/ReadVariableOp?.lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp?lstm_143/whileV
lstm_141/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_141/Shape?
lstm_141/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_141/strided_slice/stack?
lstm_141/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_141/strided_slice/stack_1?
lstm_141/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_141/strided_slice/stack_2?
lstm_141/strided_sliceStridedSlicelstm_141/Shape:output:0%lstm_141/strided_slice/stack:output:0'lstm_141/strided_slice/stack_1:output:0'lstm_141/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_141/strided_slicen
lstm_141/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_141/zeros/mul/y?
lstm_141/zeros/mulMullstm_141/strided_slice:output:0lstm_141/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_141/zeros/mulq
lstm_141/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_141/zeros/Less/y?
lstm_141/zeros/LessLesslstm_141/zeros/mul:z:0lstm_141/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_141/zeros/Lesst
lstm_141/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_141/zeros/packed/1?
lstm_141/zeros/packedPacklstm_141/strided_slice:output:0 lstm_141/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_141/zeros/packedq
lstm_141/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_141/zeros/Const?
lstm_141/zerosFilllstm_141/zeros/packed:output:0lstm_141/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_141/zerosr
lstm_141/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_141/zeros_1/mul/y?
lstm_141/zeros_1/mulMullstm_141/strided_slice:output:0lstm_141/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_141/zeros_1/mulu
lstm_141/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_141/zeros_1/Less/y?
lstm_141/zeros_1/LessLesslstm_141/zeros_1/mul:z:0 lstm_141/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_141/zeros_1/Lessx
lstm_141/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_141/zeros_1/packed/1?
lstm_141/zeros_1/packedPacklstm_141/strided_slice:output:0"lstm_141/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_141/zeros_1/packedu
lstm_141/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_141/zeros_1/Const?
lstm_141/zeros_1Fill lstm_141/zeros_1/packed:output:0lstm_141/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_141/zeros_1?
lstm_141/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_141/transpose/perm?
lstm_141/transpose	Transposeinputs lstm_141/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_141/transposej
lstm_141/Shape_1Shapelstm_141/transpose:y:0*
T0*
_output_shapes
:2
lstm_141/Shape_1?
lstm_141/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_141/strided_slice_1/stack?
 lstm_141/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_141/strided_slice_1/stack_1?
 lstm_141/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_141/strided_slice_1/stack_2?
lstm_141/strided_slice_1StridedSlicelstm_141/Shape_1:output:0'lstm_141/strided_slice_1/stack:output:0)lstm_141/strided_slice_1/stack_1:output:0)lstm_141/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_141/strided_slice_1?
$lstm_141/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$lstm_141/TensorArrayV2/element_shape?
lstm_141/TensorArrayV2TensorListReserve-lstm_141/TensorArrayV2/element_shape:output:0!lstm_141/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_141/TensorArrayV2?
>lstm_141/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_141/TensorArrayUnstack/TensorListFromTensor/element_shape?
0lstm_141/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_141/transpose:y:0Glstm_141/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_141/TensorArrayUnstack/TensorListFromTensor?
lstm_141/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_141/strided_slice_2/stack?
 lstm_141/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_141/strided_slice_2/stack_1?
 lstm_141/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_141/strided_slice_2/stack_2?
lstm_141/strided_slice_2StridedSlicelstm_141/transpose:y:0'lstm_141/strided_slice_2/stack:output:0)lstm_141/strided_slice_2/stack_1:output:0)lstm_141/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_141/strided_slice_2?
,lstm_141/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp5lstm_141_lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,lstm_141/lstm_cell_144/MatMul/ReadVariableOp?
lstm_141/lstm_cell_144/MatMulMatMul!lstm_141/strided_slice_2:output:04lstm_141/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_141/lstm_cell_144/MatMul?
.lstm_141/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp7lstm_141_lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype020
.lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp?
lstm_141/lstm_cell_144/MatMul_1MatMullstm_141/zeros:output:06lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_141/lstm_cell_144/MatMul_1?
lstm_141/lstm_cell_144/addAddV2'lstm_141/lstm_cell_144/MatMul:product:0)lstm_141/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_141/lstm_cell_144/add?
-lstm_141/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp6lstm_141_lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp?
lstm_141/lstm_cell_144/BiasAddBiasAddlstm_141/lstm_cell_144/add:z:05lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
lstm_141/lstm_cell_144/BiasAdd?
&lstm_141/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_141/lstm_cell_144/split/split_dim?
lstm_141/lstm_cell_144/splitSplit/lstm_141/lstm_cell_144/split/split_dim:output:0'lstm_141/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_141/lstm_cell_144/split?
lstm_141/lstm_cell_144/SigmoidSigmoid%lstm_141/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_141/lstm_cell_144/Sigmoid?
 lstm_141/lstm_cell_144/Sigmoid_1Sigmoid%lstm_141/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2"
 lstm_141/lstm_cell_144/Sigmoid_1?
lstm_141/lstm_cell_144/mulMul$lstm_141/lstm_cell_144/Sigmoid_1:y:0lstm_141/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_141/lstm_cell_144/mul?
lstm_141/lstm_cell_144/ReluRelu%lstm_141/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_141/lstm_cell_144/Relu?
lstm_141/lstm_cell_144/mul_1Mul"lstm_141/lstm_cell_144/Sigmoid:y:0)lstm_141/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_141/lstm_cell_144/mul_1?
lstm_141/lstm_cell_144/add_1AddV2lstm_141/lstm_cell_144/mul:z:0 lstm_141/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_141/lstm_cell_144/add_1?
 lstm_141/lstm_cell_144/Sigmoid_2Sigmoid%lstm_141/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2"
 lstm_141/lstm_cell_144/Sigmoid_2?
lstm_141/lstm_cell_144/Relu_1Relu lstm_141/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_141/lstm_cell_144/Relu_1?
lstm_141/lstm_cell_144/mul_2Mul$lstm_141/lstm_cell_144/Sigmoid_2:y:0+lstm_141/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_141/lstm_cell_144/mul_2?
&lstm_141/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2(
&lstm_141/TensorArrayV2_1/element_shape?
lstm_141/TensorArrayV2_1TensorListReserve/lstm_141/TensorArrayV2_1/element_shape:output:0!lstm_141/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_141/TensorArrayV2_1`
lstm_141/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_141/time?
!lstm_141/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!lstm_141/while/maximum_iterations|
lstm_141/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_141/while/loop_counter?
lstm_141/whileWhile$lstm_141/while/loop_counter:output:0*lstm_141/while/maximum_iterations:output:0lstm_141/time:output:0!lstm_141/TensorArrayV2_1:handle:0lstm_141/zeros:output:0lstm_141/zeros_1:output:0!lstm_141/strided_slice_1:output:0@lstm_141/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_141_lstm_cell_144_matmul_readvariableop_resource7lstm_141_lstm_cell_144_matmul_1_readvariableop_resource6lstm_141_lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_141_while_body_2823432*'
condR
lstm_141_while_cond_2823431*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_141/while?
9lstm_141/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2;
9lstm_141/TensorArrayV2Stack/TensorListStack/element_shape?
+lstm_141/TensorArrayV2Stack/TensorListStackTensorListStacklstm_141/while:output:3Blstm_141/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02-
+lstm_141/TensorArrayV2Stack/TensorListStack?
lstm_141/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
lstm_141/strided_slice_3/stack?
 lstm_141/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_141/strided_slice_3/stack_1?
 lstm_141/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_141/strided_slice_3/stack_2?
lstm_141/strided_slice_3StridedSlice4lstm_141/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_141/strided_slice_3/stack:output:0)lstm_141/strided_slice_3/stack_1:output:0)lstm_141/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_141/strided_slice_3?
lstm_141/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_141/transpose_1/perm?
lstm_141/transpose_1	Transpose4lstm_141/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_141/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_141/transpose_1x
lstm_141/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_141/runtime?
dropout_204/IdentityIdentitylstm_141/transpose_1:y:0*
T0*+
_output_shapes
:????????? 2
dropout_204/Identitym
lstm_142/ShapeShapedropout_204/Identity:output:0*
T0*
_output_shapes
:2
lstm_142/Shape?
lstm_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_142/strided_slice/stack?
lstm_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_142/strided_slice/stack_1?
lstm_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_142/strided_slice/stack_2?
lstm_142/strided_sliceStridedSlicelstm_142/Shape:output:0%lstm_142/strided_slice/stack:output:0'lstm_142/strided_slice/stack_1:output:0'lstm_142/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_142/strided_slicen
lstm_142/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_142/zeros/mul/y?
lstm_142/zeros/mulMullstm_142/strided_slice:output:0lstm_142/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_142/zeros/mulq
lstm_142/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_142/zeros/Less/y?
lstm_142/zeros/LessLesslstm_142/zeros/mul:z:0lstm_142/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_142/zeros/Lesst
lstm_142/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_142/zeros/packed/1?
lstm_142/zeros/packedPacklstm_142/strided_slice:output:0 lstm_142/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_142/zeros/packedq
lstm_142/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_142/zeros/Const?
lstm_142/zerosFilllstm_142/zeros/packed:output:0lstm_142/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_142/zerosr
lstm_142/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_142/zeros_1/mul/y?
lstm_142/zeros_1/mulMullstm_142/strided_slice:output:0lstm_142/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_142/zeros_1/mulu
lstm_142/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_142/zeros_1/Less/y?
lstm_142/zeros_1/LessLesslstm_142/zeros_1/mul:z:0 lstm_142/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_142/zeros_1/Lessx
lstm_142/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_142/zeros_1/packed/1?
lstm_142/zeros_1/packedPacklstm_142/strided_slice:output:0"lstm_142/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_142/zeros_1/packedu
lstm_142/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_142/zeros_1/Const?
lstm_142/zeros_1Fill lstm_142/zeros_1/packed:output:0lstm_142/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_142/zeros_1?
lstm_142/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_142/transpose/perm?
lstm_142/transpose	Transposedropout_204/Identity:output:0 lstm_142/transpose/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_142/transposej
lstm_142/Shape_1Shapelstm_142/transpose:y:0*
T0*
_output_shapes
:2
lstm_142/Shape_1?
lstm_142/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_142/strided_slice_1/stack?
 lstm_142/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_142/strided_slice_1/stack_1?
 lstm_142/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_142/strided_slice_1/stack_2?
lstm_142/strided_slice_1StridedSlicelstm_142/Shape_1:output:0'lstm_142/strided_slice_1/stack:output:0)lstm_142/strided_slice_1/stack_1:output:0)lstm_142/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_142/strided_slice_1?
$lstm_142/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$lstm_142/TensorArrayV2/element_shape?
lstm_142/TensorArrayV2TensorListReserve-lstm_142/TensorArrayV2/element_shape:output:0!lstm_142/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_142/TensorArrayV2?
>lstm_142/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2@
>lstm_142/TensorArrayUnstack/TensorListFromTensor/element_shape?
0lstm_142/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_142/transpose:y:0Glstm_142/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_142/TensorArrayUnstack/TensorListFromTensor?
lstm_142/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_142/strided_slice_2/stack?
 lstm_142/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_142/strided_slice_2/stack_1?
 lstm_142/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_142/strided_slice_2/stack_2?
lstm_142/strided_slice_2StridedSlicelstm_142/transpose:y:0'lstm_142/strided_slice_2/stack:output:0)lstm_142/strided_slice_2/stack_1:output:0)lstm_142/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_142/strided_slice_2?
,lstm_142/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp5lstm_142_lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02.
,lstm_142/lstm_cell_145/MatMul/ReadVariableOp?
lstm_142/lstm_cell_145/MatMulMatMul!lstm_142/strided_slice_2:output:04lstm_142/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_142/lstm_cell_145/MatMul?
.lstm_142/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp7lstm_142_lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype020
.lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp?
lstm_142/lstm_cell_145/MatMul_1MatMullstm_142/zeros:output:06lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_142/lstm_cell_145/MatMul_1?
lstm_142/lstm_cell_145/addAddV2'lstm_142/lstm_cell_145/MatMul:product:0)lstm_142/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_142/lstm_cell_145/add?
-lstm_142/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp6lstm_142_lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp?
lstm_142/lstm_cell_145/BiasAddBiasAddlstm_142/lstm_cell_145/add:z:05lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
lstm_142/lstm_cell_145/BiasAdd?
&lstm_142/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_142/lstm_cell_145/split/split_dim?
lstm_142/lstm_cell_145/splitSplit/lstm_142/lstm_cell_145/split/split_dim:output:0'lstm_142/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_142/lstm_cell_145/split?
lstm_142/lstm_cell_145/SigmoidSigmoid%lstm_142/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_142/lstm_cell_145/Sigmoid?
 lstm_142/lstm_cell_145/Sigmoid_1Sigmoid%lstm_142/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2"
 lstm_142/lstm_cell_145/Sigmoid_1?
lstm_142/lstm_cell_145/mulMul$lstm_142/lstm_cell_145/Sigmoid_1:y:0lstm_142/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_142/lstm_cell_145/mul?
lstm_142/lstm_cell_145/ReluRelu%lstm_142/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_142/lstm_cell_145/Relu?
lstm_142/lstm_cell_145/mul_1Mul"lstm_142/lstm_cell_145/Sigmoid:y:0)lstm_142/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_142/lstm_cell_145/mul_1?
lstm_142/lstm_cell_145/add_1AddV2lstm_142/lstm_cell_145/mul:z:0 lstm_142/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_142/lstm_cell_145/add_1?
 lstm_142/lstm_cell_145/Sigmoid_2Sigmoid%lstm_142/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2"
 lstm_142/lstm_cell_145/Sigmoid_2?
lstm_142/lstm_cell_145/Relu_1Relu lstm_142/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_142/lstm_cell_145/Relu_1?
lstm_142/lstm_cell_145/mul_2Mul$lstm_142/lstm_cell_145/Sigmoid_2:y:0+lstm_142/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_142/lstm_cell_145/mul_2?
&lstm_142/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2(
&lstm_142/TensorArrayV2_1/element_shape?
lstm_142/TensorArrayV2_1TensorListReserve/lstm_142/TensorArrayV2_1/element_shape:output:0!lstm_142/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_142/TensorArrayV2_1`
lstm_142/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_142/time?
!lstm_142/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!lstm_142/while/maximum_iterations|
lstm_142/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_142/while/loop_counter?
lstm_142/whileWhile$lstm_142/while/loop_counter:output:0*lstm_142/while/maximum_iterations:output:0lstm_142/time:output:0!lstm_142/TensorArrayV2_1:handle:0lstm_142/zeros:output:0lstm_142/zeros_1:output:0!lstm_142/strided_slice_1:output:0@lstm_142/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_142_lstm_cell_145_matmul_readvariableop_resource7lstm_142_lstm_cell_145_matmul_1_readvariableop_resource6lstm_142_lstm_cell_145_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_142_while_body_2823580*'
condR
lstm_142_while_cond_2823579*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_142/while?
9lstm_142/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2;
9lstm_142/TensorArrayV2Stack/TensorListStack/element_shape?
+lstm_142/TensorArrayV2Stack/TensorListStackTensorListStacklstm_142/while:output:3Blstm_142/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02-
+lstm_142/TensorArrayV2Stack/TensorListStack?
lstm_142/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
lstm_142/strided_slice_3/stack?
 lstm_142/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_142/strided_slice_3/stack_1?
 lstm_142/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_142/strided_slice_3/stack_2?
lstm_142/strided_slice_3StridedSlice4lstm_142/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_142/strided_slice_3/stack:output:0)lstm_142/strided_slice_3/stack_1:output:0)lstm_142/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_142/strided_slice_3?
lstm_142/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_142/transpose_1/perm?
lstm_142/transpose_1	Transpose4lstm_142/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_142/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_142/transpose_1x
lstm_142/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_142/runtime?
dropout_205/IdentityIdentitylstm_142/transpose_1:y:0*
T0*+
_output_shapes
:????????? 2
dropout_205/Identitym
lstm_143/ShapeShapedropout_205/Identity:output:0*
T0*
_output_shapes
:2
lstm_143/Shape?
lstm_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_143/strided_slice/stack?
lstm_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_143/strided_slice/stack_1?
lstm_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_143/strided_slice/stack_2?
lstm_143/strided_sliceStridedSlicelstm_143/Shape:output:0%lstm_143/strided_slice/stack:output:0'lstm_143/strided_slice/stack_1:output:0'lstm_143/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_143/strided_slicen
lstm_143/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_143/zeros/mul/y?
lstm_143/zeros/mulMullstm_143/strided_slice:output:0lstm_143/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_143/zeros/mulq
lstm_143/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_143/zeros/Less/y?
lstm_143/zeros/LessLesslstm_143/zeros/mul:z:0lstm_143/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_143/zeros/Lesst
lstm_143/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_143/zeros/packed/1?
lstm_143/zeros/packedPacklstm_143/strided_slice:output:0 lstm_143/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_143/zeros/packedq
lstm_143/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_143/zeros/Const?
lstm_143/zerosFilllstm_143/zeros/packed:output:0lstm_143/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_143/zerosr
lstm_143/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_143/zeros_1/mul/y?
lstm_143/zeros_1/mulMullstm_143/strided_slice:output:0lstm_143/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_143/zeros_1/mulu
lstm_143/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_143/zeros_1/Less/y?
lstm_143/zeros_1/LessLesslstm_143/zeros_1/mul:z:0 lstm_143/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_143/zeros_1/Lessx
lstm_143/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_143/zeros_1/packed/1?
lstm_143/zeros_1/packedPacklstm_143/strided_slice:output:0"lstm_143/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_143/zeros_1/packedu
lstm_143/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_143/zeros_1/Const?
lstm_143/zeros_1Fill lstm_143/zeros_1/packed:output:0lstm_143/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_143/zeros_1?
lstm_143/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_143/transpose/perm?
lstm_143/transpose	Transposedropout_205/Identity:output:0 lstm_143/transpose/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_143/transposej
lstm_143/Shape_1Shapelstm_143/transpose:y:0*
T0*
_output_shapes
:2
lstm_143/Shape_1?
lstm_143/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_143/strided_slice_1/stack?
 lstm_143/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_143/strided_slice_1/stack_1?
 lstm_143/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_143/strided_slice_1/stack_2?
lstm_143/strided_slice_1StridedSlicelstm_143/Shape_1:output:0'lstm_143/strided_slice_1/stack:output:0)lstm_143/strided_slice_1/stack_1:output:0)lstm_143/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_143/strided_slice_1?
$lstm_143/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$lstm_143/TensorArrayV2/element_shape?
lstm_143/TensorArrayV2TensorListReserve-lstm_143/TensorArrayV2/element_shape:output:0!lstm_143/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_143/TensorArrayV2?
>lstm_143/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2@
>lstm_143/TensorArrayUnstack/TensorListFromTensor/element_shape?
0lstm_143/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_143/transpose:y:0Glstm_143/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_143/TensorArrayUnstack/TensorListFromTensor?
lstm_143/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_143/strided_slice_2/stack?
 lstm_143/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_143/strided_slice_2/stack_1?
 lstm_143/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_143/strided_slice_2/stack_2?
lstm_143/strided_slice_2StridedSlicelstm_143/transpose:y:0'lstm_143/strided_slice_2/stack:output:0)lstm_143/strided_slice_2/stack_1:output:0)lstm_143/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_143/strided_slice_2?
,lstm_143/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp5lstm_143_lstm_cell_146_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02.
,lstm_143/lstm_cell_146/MatMul/ReadVariableOp?
lstm_143/lstm_cell_146/MatMulMatMul!lstm_143/strided_slice_2:output:04lstm_143/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_143/lstm_cell_146/MatMul?
.lstm_143/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp7lstm_143_lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype020
.lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp?
lstm_143/lstm_cell_146/MatMul_1MatMullstm_143/zeros:output:06lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_143/lstm_cell_146/MatMul_1?
lstm_143/lstm_cell_146/addAddV2'lstm_143/lstm_cell_146/MatMul:product:0)lstm_143/lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_143/lstm_cell_146/add?
-lstm_143/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp6lstm_143_lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp?
lstm_143/lstm_cell_146/BiasAddBiasAddlstm_143/lstm_cell_146/add:z:05lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
lstm_143/lstm_cell_146/BiasAdd?
&lstm_143/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_143/lstm_cell_146/split/split_dim?
lstm_143/lstm_cell_146/splitSplit/lstm_143/lstm_cell_146/split/split_dim:output:0'lstm_143/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_143/lstm_cell_146/split?
lstm_143/lstm_cell_146/SigmoidSigmoid%lstm_143/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_143/lstm_cell_146/Sigmoid?
 lstm_143/lstm_cell_146/Sigmoid_1Sigmoid%lstm_143/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2"
 lstm_143/lstm_cell_146/Sigmoid_1?
lstm_143/lstm_cell_146/mulMul$lstm_143/lstm_cell_146/Sigmoid_1:y:0lstm_143/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_143/lstm_cell_146/mul?
lstm_143/lstm_cell_146/ReluRelu%lstm_143/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_143/lstm_cell_146/Relu?
lstm_143/lstm_cell_146/mul_1Mul"lstm_143/lstm_cell_146/Sigmoid:y:0)lstm_143/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_143/lstm_cell_146/mul_1?
lstm_143/lstm_cell_146/add_1AddV2lstm_143/lstm_cell_146/mul:z:0 lstm_143/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_143/lstm_cell_146/add_1?
 lstm_143/lstm_cell_146/Sigmoid_2Sigmoid%lstm_143/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2"
 lstm_143/lstm_cell_146/Sigmoid_2?
lstm_143/lstm_cell_146/Relu_1Relu lstm_143/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_143/lstm_cell_146/Relu_1?
lstm_143/lstm_cell_146/mul_2Mul$lstm_143/lstm_cell_146/Sigmoid_2:y:0+lstm_143/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_143/lstm_cell_146/mul_2?
&lstm_143/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2(
&lstm_143/TensorArrayV2_1/element_shape?
lstm_143/TensorArrayV2_1TensorListReserve/lstm_143/TensorArrayV2_1/element_shape:output:0!lstm_143/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_143/TensorArrayV2_1`
lstm_143/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_143/time?
!lstm_143/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!lstm_143/while/maximum_iterations|
lstm_143/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_143/while/loop_counter?
lstm_143/whileWhile$lstm_143/while/loop_counter:output:0*lstm_143/while/maximum_iterations:output:0lstm_143/time:output:0!lstm_143/TensorArrayV2_1:handle:0lstm_143/zeros:output:0lstm_143/zeros_1:output:0!lstm_143/strided_slice_1:output:0@lstm_143/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_143_lstm_cell_146_matmul_readvariableop_resource7lstm_143_lstm_cell_146_matmul_1_readvariableop_resource6lstm_143_lstm_cell_146_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_143_while_body_2823728*'
condR
lstm_143_while_cond_2823727*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_143/while?
9lstm_143/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2;
9lstm_143/TensorArrayV2Stack/TensorListStack/element_shape?
+lstm_143/TensorArrayV2Stack/TensorListStackTensorListStacklstm_143/while:output:3Blstm_143/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02-
+lstm_143/TensorArrayV2Stack/TensorListStack?
lstm_143/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
lstm_143/strided_slice_3/stack?
 lstm_143/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_143/strided_slice_3/stack_1?
 lstm_143/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_143/strided_slice_3/stack_2?
lstm_143/strided_slice_3StridedSlice4lstm_143/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_143/strided_slice_3/stack:output:0)lstm_143/strided_slice_3/stack_1:output:0)lstm_143/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_143/strided_slice_3?
lstm_143/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_143/transpose_1/perm?
lstm_143/transpose_1	Transpose4lstm_143/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_143/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_143/transpose_1x
lstm_143/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_143/runtime?
dropout_206/IdentityIdentity!lstm_143/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
dropout_206/Identity?
dense_100/MatMul/ReadVariableOpReadVariableOp(dense_100_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_100/MatMul/ReadVariableOp?
dense_100/MatMulMatMuldropout_206/Identity:output:0'dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_100/MatMul?
 dense_100/BiasAdd/ReadVariableOpReadVariableOp)dense_100_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_100/BiasAdd/ReadVariableOp?
dense_100/BiasAddBiasAdddense_100/MatMul:product:0(dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_100/BiasAddv
dense_100/ReluReludense_100/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_100/Relu?
dropout_207/IdentityIdentitydense_100/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
dropout_207/Identity?
dense_101/MatMul/ReadVariableOpReadVariableOp(dense_101_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_101/MatMul/ReadVariableOp?
dense_101/MatMulMatMuldropout_207/Identity:output:0'dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_101/MatMul?
 dense_101/BiasAdd/ReadVariableOpReadVariableOp)dense_101_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_101/BiasAdd/ReadVariableOp?
dense_101/BiasAddBiasAdddense_101/MatMul:product:0(dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_101/BiasAddu
IdentityIdentitydense_101/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_100/BiasAdd/ReadVariableOp ^dense_100/MatMul/ReadVariableOp!^dense_101/BiasAdd/ReadVariableOp ^dense_101/MatMul/ReadVariableOp.^lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp-^lstm_141/lstm_cell_144/MatMul/ReadVariableOp/^lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp^lstm_141/while.^lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp-^lstm_142/lstm_cell_145/MatMul/ReadVariableOp/^lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp^lstm_142/while.^lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp-^lstm_143/lstm_cell_146/MatMul/ReadVariableOp/^lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp^lstm_143/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2D
 dense_100/BiasAdd/ReadVariableOp dense_100/BiasAdd/ReadVariableOp2B
dense_100/MatMul/ReadVariableOpdense_100/MatMul/ReadVariableOp2D
 dense_101/BiasAdd/ReadVariableOp dense_101/BiasAdd/ReadVariableOp2B
dense_101/MatMul/ReadVariableOpdense_101/MatMul/ReadVariableOp2^
-lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp-lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp2\
,lstm_141/lstm_cell_144/MatMul/ReadVariableOp,lstm_141/lstm_cell_144/MatMul/ReadVariableOp2`
.lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp.lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp2 
lstm_141/whilelstm_141/while2^
-lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp-lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp2\
,lstm_142/lstm_cell_145/MatMul/ReadVariableOp,lstm_142/lstm_cell_145/MatMul/ReadVariableOp2`
.lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp.lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp2 
lstm_142/whilelstm_142/while2^
-lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp-lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp2\
,lstm_143/lstm_cell_146/MatMul/ReadVariableOp,lstm_143/lstm_cell_146/MatMul/ReadVariableOp2`
.lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp.lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp2 
lstm_143/whilelstm_143/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
while_body_2822151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_145_matmul_readvariableop_resource_0:	 ?I
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_145_matmul_readvariableop_resource:	 ?G
4while_lstm_cell_145_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_145_biasadd_readvariableop_resource:	???*while/lstm_cell_145/BiasAdd/ReadVariableOp?)while/lstm_cell_145/MatMul/ReadVariableOp?+while/lstm_cell_145/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_145/MatMul/ReadVariableOp?
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/MatMul?
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_145/MatMul_1/ReadVariableOp?
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/MatMul_1?
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/add?
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_145/BiasAdd/ReadVariableOp?
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/BiasAdd?
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_145/split/split_dim?
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_145/split?
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid?
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid_1?
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul?
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Relu?
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul_1?
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/add_1?
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid_2?
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Relu_1?
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2821371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2821371___redundant_placeholder05
1while_while_cond_2821371___redundant_placeholder15
1while_while_cond_2821371___redundant_placeholder25
1while_while_cond_2821371___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2822315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2822315___redundant_placeholder05
1while_while_cond_2822315___redundant_placeholder15
1while_while_cond_2822315___redundant_placeholder25
1while_while_cond_2822315___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?

?
lstm_143_while_cond_2824203.
*lstm_143_while_lstm_143_while_loop_counter4
0lstm_143_while_lstm_143_while_maximum_iterations
lstm_143_while_placeholder 
lstm_143_while_placeholder_1 
lstm_143_while_placeholder_2 
lstm_143_while_placeholder_30
,lstm_143_while_less_lstm_143_strided_slice_1G
Clstm_143_while_lstm_143_while_cond_2824203___redundant_placeholder0G
Clstm_143_while_lstm_143_while_cond_2824203___redundant_placeholder1G
Clstm_143_while_lstm_143_while_cond_2824203___redundant_placeholder2G
Clstm_143_while_lstm_143_while_cond_2824203___redundant_placeholder3
lstm_143_while_identity
?
lstm_143/while/LessLesslstm_143_while_placeholder,lstm_143_while_less_lstm_143_strided_slice_1*
T0*
_output_shapes
: 2
lstm_143/while/Lessx
lstm_143/while/IdentityIdentitylstm_143/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_143/while/Identity";
lstm_143_while_identity lstm_143/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
f
H__inference_dropout_206_layer_call_and_return_conditional_losses_2826382

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
while_body_2826098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_146_matmul_readvariableop_resource_0:	 ?I
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_146_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_146_matmul_readvariableop_resource:	 ?G
4while_lstm_cell_146_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_146_biasadd_readvariableop_resource:	???*while/lstm_cell_146/BiasAdd/ReadVariableOp?)while/lstm_cell_146/MatMul/ReadVariableOp?+while/lstm_cell_146/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_146/MatMul/ReadVariableOp?
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/MatMul?
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_146/MatMul_1/ReadVariableOp?
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/MatMul_1?
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/add?
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_146/BiasAdd/ReadVariableOp?
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/BiasAdd?
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_146/split/split_dim?
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_146/split?
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid?
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid_1?
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul?
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Relu?
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul_1?
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/add_1?
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid_2?
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Relu_1?
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?F
?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2821651

inputs(
lstm_cell_146_2821569:	 ?(
lstm_cell_146_2821571:	 ?$
lstm_cell_146_2821573:	?
identity??%lstm_cell_146/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
%lstm_cell_146/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_146_2821569lstm_cell_146_2821571lstm_cell_146_2821573*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_28215042'
%lstm_cell_146/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_146_2821569lstm_cell_146_2821571lstm_cell_146_2821573*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2821582*
condR
while_cond_2821581*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity~
NoOpNoOp&^lstm_cell_146/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2N
%lstm_cell_146/StatefulPartitionedCall%lstm_cell_146/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
+__inference_dense_101_layer_call_fn_2826470

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_101_layer_call_and_return_conditional_losses_28224492
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
while_body_2822827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_145_matmul_readvariableop_resource_0:	 ?I
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_145_matmul_readvariableop_resource:	 ?G
4while_lstm_cell_145_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_145_biasadd_readvariableop_resource:	???*while/lstm_cell_145/BiasAdd/ReadVariableOp?)while/lstm_cell_145/MatMul/ReadVariableOp?+while/lstm_cell_145/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_145/MatMul/ReadVariableOp?
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/MatMul?
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_145/MatMul_1/ReadVariableOp?
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/MatMul_1?
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/add?
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_145/BiasAdd/ReadVariableOp?
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/BiasAdd?
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_145/split/split_dim?
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_145/split?
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid?
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid_1?
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul?
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Relu?
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul_1?
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/add_1?
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid_2?
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Relu_1?
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2821504

inputs

states
states_11
matmul_readvariableop_resource:	 ?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
??
?
while_body_2821986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_144_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_144_matmul_readvariableop_resource:	?G
4while_lstm_cell_144_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_144_biasadd_readvariableop_resource:	???*while/lstm_cell_144/BiasAdd/ReadVariableOp?)while/lstm_cell_144/MatMul/ReadVariableOp?+while/lstm_cell_144/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOp?
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/MatMul?
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOp?
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/MatMul_1?
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/add?
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOp?
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/BiasAdd?
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim?
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_144/split?
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid?
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid_1?
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul?
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Relu?
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul_1?
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/add_1?
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid_2?
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Relu_1?
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
??
?
"__inference__wrapped_model_2820023
lstm_141_inputV
Csequential_37_lstm_141_lstm_cell_144_matmul_readvariableop_resource:	?X
Esequential_37_lstm_141_lstm_cell_144_matmul_1_readvariableop_resource:	 ?S
Dsequential_37_lstm_141_lstm_cell_144_biasadd_readvariableop_resource:	?V
Csequential_37_lstm_142_lstm_cell_145_matmul_readvariableop_resource:	 ?X
Esequential_37_lstm_142_lstm_cell_145_matmul_1_readvariableop_resource:	 ?S
Dsequential_37_lstm_142_lstm_cell_145_biasadd_readvariableop_resource:	?V
Csequential_37_lstm_143_lstm_cell_146_matmul_readvariableop_resource:	 ?X
Esequential_37_lstm_143_lstm_cell_146_matmul_1_readvariableop_resource:	 ?S
Dsequential_37_lstm_143_lstm_cell_146_biasadd_readvariableop_resource:	?H
6sequential_37_dense_100_matmul_readvariableop_resource:  E
7sequential_37_dense_100_biasadd_readvariableop_resource: H
6sequential_37_dense_101_matmul_readvariableop_resource: E
7sequential_37_dense_101_biasadd_readvariableop_resource:
identity??.sequential_37/dense_100/BiasAdd/ReadVariableOp?-sequential_37/dense_100/MatMul/ReadVariableOp?.sequential_37/dense_101/BiasAdd/ReadVariableOp?-sequential_37/dense_101/MatMul/ReadVariableOp?;sequential_37/lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp?:sequential_37/lstm_141/lstm_cell_144/MatMul/ReadVariableOp?<sequential_37/lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp?sequential_37/lstm_141/while?;sequential_37/lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp?:sequential_37/lstm_142/lstm_cell_145/MatMul/ReadVariableOp?<sequential_37/lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp?sequential_37/lstm_142/while?;sequential_37/lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp?:sequential_37/lstm_143/lstm_cell_146/MatMul/ReadVariableOp?<sequential_37/lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp?sequential_37/lstm_143/whilez
sequential_37/lstm_141/ShapeShapelstm_141_input*
T0*
_output_shapes
:2
sequential_37/lstm_141/Shape?
*sequential_37/lstm_141/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_37/lstm_141/strided_slice/stack?
,sequential_37/lstm_141/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_37/lstm_141/strided_slice/stack_1?
,sequential_37/lstm_141/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_37/lstm_141/strided_slice/stack_2?
$sequential_37/lstm_141/strided_sliceStridedSlice%sequential_37/lstm_141/Shape:output:03sequential_37/lstm_141/strided_slice/stack:output:05sequential_37/lstm_141/strided_slice/stack_1:output:05sequential_37/lstm_141/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_37/lstm_141/strided_slice?
"sequential_37/lstm_141/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_37/lstm_141/zeros/mul/y?
 sequential_37/lstm_141/zeros/mulMul-sequential_37/lstm_141/strided_slice:output:0+sequential_37/lstm_141/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_37/lstm_141/zeros/mul?
#sequential_37/lstm_141/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_37/lstm_141/zeros/Less/y?
!sequential_37/lstm_141/zeros/LessLess$sequential_37/lstm_141/zeros/mul:z:0,sequential_37/lstm_141/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_37/lstm_141/zeros/Less?
%sequential_37/lstm_141/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_37/lstm_141/zeros/packed/1?
#sequential_37/lstm_141/zeros/packedPack-sequential_37/lstm_141/strided_slice:output:0.sequential_37/lstm_141/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_37/lstm_141/zeros/packed?
"sequential_37/lstm_141/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_37/lstm_141/zeros/Const?
sequential_37/lstm_141/zerosFill,sequential_37/lstm_141/zeros/packed:output:0+sequential_37/lstm_141/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_37/lstm_141/zeros?
$sequential_37/lstm_141/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_37/lstm_141/zeros_1/mul/y?
"sequential_37/lstm_141/zeros_1/mulMul-sequential_37/lstm_141/strided_slice:output:0-sequential_37/lstm_141/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2$
"sequential_37/lstm_141/zeros_1/mul?
%sequential_37/lstm_141/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_37/lstm_141/zeros_1/Less/y?
#sequential_37/lstm_141/zeros_1/LessLess&sequential_37/lstm_141/zeros_1/mul:z:0.sequential_37/lstm_141/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2%
#sequential_37/lstm_141/zeros_1/Less?
'sequential_37/lstm_141/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_37/lstm_141/zeros_1/packed/1?
%sequential_37/lstm_141/zeros_1/packedPack-sequential_37/lstm_141/strided_slice:output:00sequential_37/lstm_141/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_37/lstm_141/zeros_1/packed?
$sequential_37/lstm_141/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$sequential_37/lstm_141/zeros_1/Const?
sequential_37/lstm_141/zeros_1Fill.sequential_37/lstm_141/zeros_1/packed:output:0-sequential_37/lstm_141/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2 
sequential_37/lstm_141/zeros_1?
%sequential_37/lstm_141/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_37/lstm_141/transpose/perm?
 sequential_37/lstm_141/transpose	Transposelstm_141_input.sequential_37/lstm_141/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2"
 sequential_37/lstm_141/transpose?
sequential_37/lstm_141/Shape_1Shape$sequential_37/lstm_141/transpose:y:0*
T0*
_output_shapes
:2 
sequential_37/lstm_141/Shape_1?
,sequential_37/lstm_141/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_37/lstm_141/strided_slice_1/stack?
.sequential_37/lstm_141/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_141/strided_slice_1/stack_1?
.sequential_37/lstm_141/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_141/strided_slice_1/stack_2?
&sequential_37/lstm_141/strided_slice_1StridedSlice'sequential_37/lstm_141/Shape_1:output:05sequential_37/lstm_141/strided_slice_1/stack:output:07sequential_37/lstm_141/strided_slice_1/stack_1:output:07sequential_37/lstm_141/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_37/lstm_141/strided_slice_1?
2sequential_37/lstm_141/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2sequential_37/lstm_141/TensorArrayV2/element_shape?
$sequential_37/lstm_141/TensorArrayV2TensorListReserve;sequential_37/lstm_141/TensorArrayV2/element_shape:output:0/sequential_37/lstm_141/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_37/lstm_141/TensorArrayV2?
Lsequential_37/lstm_141/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2N
Lsequential_37/lstm_141/TensorArrayUnstack/TensorListFromTensor/element_shape?
>sequential_37/lstm_141/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_37/lstm_141/transpose:y:0Usequential_37/lstm_141/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_37/lstm_141/TensorArrayUnstack/TensorListFromTensor?
,sequential_37/lstm_141/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_37/lstm_141/strided_slice_2/stack?
.sequential_37/lstm_141/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_141/strided_slice_2/stack_1?
.sequential_37/lstm_141/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_141/strided_slice_2/stack_2?
&sequential_37/lstm_141/strided_slice_2StridedSlice$sequential_37/lstm_141/transpose:y:05sequential_37/lstm_141/strided_slice_2/stack:output:07sequential_37/lstm_141/strided_slice_2/stack_1:output:07sequential_37/lstm_141/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2(
&sequential_37/lstm_141/strided_slice_2?
:sequential_37/lstm_141/lstm_cell_144/MatMul/ReadVariableOpReadVariableOpCsequential_37_lstm_141_lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02<
:sequential_37/lstm_141/lstm_cell_144/MatMul/ReadVariableOp?
+sequential_37/lstm_141/lstm_cell_144/MatMulMatMul/sequential_37/lstm_141/strided_slice_2:output:0Bsequential_37/lstm_141/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+sequential_37/lstm_141/lstm_cell_144/MatMul?
<sequential_37/lstm_141/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOpEsequential_37_lstm_141_lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02>
<sequential_37/lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp?
-sequential_37/lstm_141/lstm_cell_144/MatMul_1MatMul%sequential_37/lstm_141/zeros:output:0Dsequential_37/lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_37/lstm_141/lstm_cell_144/MatMul_1?
(sequential_37/lstm_141/lstm_cell_144/addAddV25sequential_37/lstm_141/lstm_cell_144/MatMul:product:07sequential_37/lstm_141/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2*
(sequential_37/lstm_141/lstm_cell_144/add?
;sequential_37/lstm_141/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOpDsequential_37_lstm_141_lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_37/lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp?
,sequential_37/lstm_141/lstm_cell_144/BiasAddBiasAdd,sequential_37/lstm_141/lstm_cell_144/add:z:0Csequential_37/lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,sequential_37/lstm_141/lstm_cell_144/BiasAdd?
4sequential_37/lstm_141/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_37/lstm_141/lstm_cell_144/split/split_dim?
*sequential_37/lstm_141/lstm_cell_144/splitSplit=sequential_37/lstm_141/lstm_cell_144/split/split_dim:output:05sequential_37/lstm_141/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2,
*sequential_37/lstm_141/lstm_cell_144/split?
,sequential_37/lstm_141/lstm_cell_144/SigmoidSigmoid3sequential_37/lstm_141/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_37/lstm_141/lstm_cell_144/Sigmoid?
.sequential_37/lstm_141/lstm_cell_144/Sigmoid_1Sigmoid3sequential_37/lstm_141/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_141/lstm_cell_144/Sigmoid_1?
(sequential_37/lstm_141/lstm_cell_144/mulMul2sequential_37/lstm_141/lstm_cell_144/Sigmoid_1:y:0'sequential_37/lstm_141/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_141/lstm_cell_144/mul?
)sequential_37/lstm_141/lstm_cell_144/ReluRelu3sequential_37/lstm_141/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2+
)sequential_37/lstm_141/lstm_cell_144/Relu?
*sequential_37/lstm_141/lstm_cell_144/mul_1Mul0sequential_37/lstm_141/lstm_cell_144/Sigmoid:y:07sequential_37/lstm_141/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2,
*sequential_37/lstm_141/lstm_cell_144/mul_1?
*sequential_37/lstm_141/lstm_cell_144/add_1AddV2,sequential_37/lstm_141/lstm_cell_144/mul:z:0.sequential_37/lstm_141/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2,
*sequential_37/lstm_141/lstm_cell_144/add_1?
.sequential_37/lstm_141/lstm_cell_144/Sigmoid_2Sigmoid3sequential_37/lstm_141/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_141/lstm_cell_144/Sigmoid_2?
+sequential_37/lstm_141/lstm_cell_144/Relu_1Relu.sequential_37/lstm_141/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2-
+sequential_37/lstm_141/lstm_cell_144/Relu_1?
*sequential_37/lstm_141/lstm_cell_144/mul_2Mul2sequential_37/lstm_141/lstm_cell_144/Sigmoid_2:y:09sequential_37/lstm_141/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2,
*sequential_37/lstm_141/lstm_cell_144/mul_2?
4sequential_37/lstm_141/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    26
4sequential_37/lstm_141/TensorArrayV2_1/element_shape?
&sequential_37/lstm_141/TensorArrayV2_1TensorListReserve=sequential_37/lstm_141/TensorArrayV2_1/element_shape:output:0/sequential_37/lstm_141/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_37/lstm_141/TensorArrayV2_1|
sequential_37/lstm_141/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_37/lstm_141/time?
/sequential_37/lstm_141/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_37/lstm_141/while/maximum_iterations?
)sequential_37/lstm_141/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_37/lstm_141/while/loop_counter?
sequential_37/lstm_141/whileWhile2sequential_37/lstm_141/while/loop_counter:output:08sequential_37/lstm_141/while/maximum_iterations:output:0$sequential_37/lstm_141/time:output:0/sequential_37/lstm_141/TensorArrayV2_1:handle:0%sequential_37/lstm_141/zeros:output:0'sequential_37/lstm_141/zeros_1:output:0/sequential_37/lstm_141/strided_slice_1:output:0Nsequential_37/lstm_141/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_37_lstm_141_lstm_cell_144_matmul_readvariableop_resourceEsequential_37_lstm_141_lstm_cell_144_matmul_1_readvariableop_resourceDsequential_37_lstm_141_lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_37_lstm_141_while_body_2819628*5
cond-R+
)sequential_37_lstm_141_while_cond_2819627*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential_37/lstm_141/while?
Gsequential_37/lstm_141/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2I
Gsequential_37/lstm_141/TensorArrayV2Stack/TensorListStack/element_shape?
9sequential_37/lstm_141/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_37/lstm_141/while:output:3Psequential_37/lstm_141/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02;
9sequential_37/lstm_141/TensorArrayV2Stack/TensorListStack?
,sequential_37/lstm_141/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2.
,sequential_37/lstm_141/strided_slice_3/stack?
.sequential_37/lstm_141/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_37/lstm_141/strided_slice_3/stack_1?
.sequential_37/lstm_141/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_141/strided_slice_3/stack_2?
&sequential_37/lstm_141/strided_slice_3StridedSliceBsequential_37/lstm_141/TensorArrayV2Stack/TensorListStack:tensor:05sequential_37/lstm_141/strided_slice_3/stack:output:07sequential_37/lstm_141/strided_slice_3/stack_1:output:07sequential_37/lstm_141/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2(
&sequential_37/lstm_141/strided_slice_3?
'sequential_37/lstm_141/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_37/lstm_141/transpose_1/perm?
"sequential_37/lstm_141/transpose_1	TransposeBsequential_37/lstm_141/TensorArrayV2Stack/TensorListStack:tensor:00sequential_37/lstm_141/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2$
"sequential_37/lstm_141/transpose_1?
sequential_37/lstm_141/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_37/lstm_141/runtime?
"sequential_37/dropout_204/IdentityIdentity&sequential_37/lstm_141/transpose_1:y:0*
T0*+
_output_shapes
:????????? 2$
"sequential_37/dropout_204/Identity?
sequential_37/lstm_142/ShapeShape+sequential_37/dropout_204/Identity:output:0*
T0*
_output_shapes
:2
sequential_37/lstm_142/Shape?
*sequential_37/lstm_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_37/lstm_142/strided_slice/stack?
,sequential_37/lstm_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_37/lstm_142/strided_slice/stack_1?
,sequential_37/lstm_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_37/lstm_142/strided_slice/stack_2?
$sequential_37/lstm_142/strided_sliceStridedSlice%sequential_37/lstm_142/Shape:output:03sequential_37/lstm_142/strided_slice/stack:output:05sequential_37/lstm_142/strided_slice/stack_1:output:05sequential_37/lstm_142/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_37/lstm_142/strided_slice?
"sequential_37/lstm_142/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_37/lstm_142/zeros/mul/y?
 sequential_37/lstm_142/zeros/mulMul-sequential_37/lstm_142/strided_slice:output:0+sequential_37/lstm_142/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_37/lstm_142/zeros/mul?
#sequential_37/lstm_142/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_37/lstm_142/zeros/Less/y?
!sequential_37/lstm_142/zeros/LessLess$sequential_37/lstm_142/zeros/mul:z:0,sequential_37/lstm_142/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_37/lstm_142/zeros/Less?
%sequential_37/lstm_142/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_37/lstm_142/zeros/packed/1?
#sequential_37/lstm_142/zeros/packedPack-sequential_37/lstm_142/strided_slice:output:0.sequential_37/lstm_142/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_37/lstm_142/zeros/packed?
"sequential_37/lstm_142/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_37/lstm_142/zeros/Const?
sequential_37/lstm_142/zerosFill,sequential_37/lstm_142/zeros/packed:output:0+sequential_37/lstm_142/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_37/lstm_142/zeros?
$sequential_37/lstm_142/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_37/lstm_142/zeros_1/mul/y?
"sequential_37/lstm_142/zeros_1/mulMul-sequential_37/lstm_142/strided_slice:output:0-sequential_37/lstm_142/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2$
"sequential_37/lstm_142/zeros_1/mul?
%sequential_37/lstm_142/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_37/lstm_142/zeros_1/Less/y?
#sequential_37/lstm_142/zeros_1/LessLess&sequential_37/lstm_142/zeros_1/mul:z:0.sequential_37/lstm_142/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2%
#sequential_37/lstm_142/zeros_1/Less?
'sequential_37/lstm_142/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_37/lstm_142/zeros_1/packed/1?
%sequential_37/lstm_142/zeros_1/packedPack-sequential_37/lstm_142/strided_slice:output:00sequential_37/lstm_142/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_37/lstm_142/zeros_1/packed?
$sequential_37/lstm_142/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$sequential_37/lstm_142/zeros_1/Const?
sequential_37/lstm_142/zeros_1Fill.sequential_37/lstm_142/zeros_1/packed:output:0-sequential_37/lstm_142/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2 
sequential_37/lstm_142/zeros_1?
%sequential_37/lstm_142/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_37/lstm_142/transpose/perm?
 sequential_37/lstm_142/transpose	Transpose+sequential_37/dropout_204/Identity:output:0.sequential_37/lstm_142/transpose/perm:output:0*
T0*+
_output_shapes
:????????? 2"
 sequential_37/lstm_142/transpose?
sequential_37/lstm_142/Shape_1Shape$sequential_37/lstm_142/transpose:y:0*
T0*
_output_shapes
:2 
sequential_37/lstm_142/Shape_1?
,sequential_37/lstm_142/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_37/lstm_142/strided_slice_1/stack?
.sequential_37/lstm_142/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_142/strided_slice_1/stack_1?
.sequential_37/lstm_142/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_142/strided_slice_1/stack_2?
&sequential_37/lstm_142/strided_slice_1StridedSlice'sequential_37/lstm_142/Shape_1:output:05sequential_37/lstm_142/strided_slice_1/stack:output:07sequential_37/lstm_142/strided_slice_1/stack_1:output:07sequential_37/lstm_142/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_37/lstm_142/strided_slice_1?
2sequential_37/lstm_142/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2sequential_37/lstm_142/TensorArrayV2/element_shape?
$sequential_37/lstm_142/TensorArrayV2TensorListReserve;sequential_37/lstm_142/TensorArrayV2/element_shape:output:0/sequential_37/lstm_142/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_37/lstm_142/TensorArrayV2?
Lsequential_37/lstm_142/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2N
Lsequential_37/lstm_142/TensorArrayUnstack/TensorListFromTensor/element_shape?
>sequential_37/lstm_142/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_37/lstm_142/transpose:y:0Usequential_37/lstm_142/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_37/lstm_142/TensorArrayUnstack/TensorListFromTensor?
,sequential_37/lstm_142/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_37/lstm_142/strided_slice_2/stack?
.sequential_37/lstm_142/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_142/strided_slice_2/stack_1?
.sequential_37/lstm_142/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_142/strided_slice_2/stack_2?
&sequential_37/lstm_142/strided_slice_2StridedSlice$sequential_37/lstm_142/transpose:y:05sequential_37/lstm_142/strided_slice_2/stack:output:07sequential_37/lstm_142/strided_slice_2/stack_1:output:07sequential_37/lstm_142/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2(
&sequential_37/lstm_142/strided_slice_2?
:sequential_37/lstm_142/lstm_cell_145/MatMul/ReadVariableOpReadVariableOpCsequential_37_lstm_142_lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02<
:sequential_37/lstm_142/lstm_cell_145/MatMul/ReadVariableOp?
+sequential_37/lstm_142/lstm_cell_145/MatMulMatMul/sequential_37/lstm_142/strided_slice_2:output:0Bsequential_37/lstm_142/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+sequential_37/lstm_142/lstm_cell_145/MatMul?
<sequential_37/lstm_142/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOpEsequential_37_lstm_142_lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02>
<sequential_37/lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp?
-sequential_37/lstm_142/lstm_cell_145/MatMul_1MatMul%sequential_37/lstm_142/zeros:output:0Dsequential_37/lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_37/lstm_142/lstm_cell_145/MatMul_1?
(sequential_37/lstm_142/lstm_cell_145/addAddV25sequential_37/lstm_142/lstm_cell_145/MatMul:product:07sequential_37/lstm_142/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2*
(sequential_37/lstm_142/lstm_cell_145/add?
;sequential_37/lstm_142/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOpDsequential_37_lstm_142_lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_37/lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp?
,sequential_37/lstm_142/lstm_cell_145/BiasAddBiasAdd,sequential_37/lstm_142/lstm_cell_145/add:z:0Csequential_37/lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,sequential_37/lstm_142/lstm_cell_145/BiasAdd?
4sequential_37/lstm_142/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_37/lstm_142/lstm_cell_145/split/split_dim?
*sequential_37/lstm_142/lstm_cell_145/splitSplit=sequential_37/lstm_142/lstm_cell_145/split/split_dim:output:05sequential_37/lstm_142/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2,
*sequential_37/lstm_142/lstm_cell_145/split?
,sequential_37/lstm_142/lstm_cell_145/SigmoidSigmoid3sequential_37/lstm_142/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_37/lstm_142/lstm_cell_145/Sigmoid?
.sequential_37/lstm_142/lstm_cell_145/Sigmoid_1Sigmoid3sequential_37/lstm_142/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_142/lstm_cell_145/Sigmoid_1?
(sequential_37/lstm_142/lstm_cell_145/mulMul2sequential_37/lstm_142/lstm_cell_145/Sigmoid_1:y:0'sequential_37/lstm_142/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_142/lstm_cell_145/mul?
)sequential_37/lstm_142/lstm_cell_145/ReluRelu3sequential_37/lstm_142/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2+
)sequential_37/lstm_142/lstm_cell_145/Relu?
*sequential_37/lstm_142/lstm_cell_145/mul_1Mul0sequential_37/lstm_142/lstm_cell_145/Sigmoid:y:07sequential_37/lstm_142/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2,
*sequential_37/lstm_142/lstm_cell_145/mul_1?
*sequential_37/lstm_142/lstm_cell_145/add_1AddV2,sequential_37/lstm_142/lstm_cell_145/mul:z:0.sequential_37/lstm_142/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2,
*sequential_37/lstm_142/lstm_cell_145/add_1?
.sequential_37/lstm_142/lstm_cell_145/Sigmoid_2Sigmoid3sequential_37/lstm_142/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_142/lstm_cell_145/Sigmoid_2?
+sequential_37/lstm_142/lstm_cell_145/Relu_1Relu.sequential_37/lstm_142/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2-
+sequential_37/lstm_142/lstm_cell_145/Relu_1?
*sequential_37/lstm_142/lstm_cell_145/mul_2Mul2sequential_37/lstm_142/lstm_cell_145/Sigmoid_2:y:09sequential_37/lstm_142/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2,
*sequential_37/lstm_142/lstm_cell_145/mul_2?
4sequential_37/lstm_142/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    26
4sequential_37/lstm_142/TensorArrayV2_1/element_shape?
&sequential_37/lstm_142/TensorArrayV2_1TensorListReserve=sequential_37/lstm_142/TensorArrayV2_1/element_shape:output:0/sequential_37/lstm_142/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_37/lstm_142/TensorArrayV2_1|
sequential_37/lstm_142/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_37/lstm_142/time?
/sequential_37/lstm_142/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_37/lstm_142/while/maximum_iterations?
)sequential_37/lstm_142/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_37/lstm_142/while/loop_counter?
sequential_37/lstm_142/whileWhile2sequential_37/lstm_142/while/loop_counter:output:08sequential_37/lstm_142/while/maximum_iterations:output:0$sequential_37/lstm_142/time:output:0/sequential_37/lstm_142/TensorArrayV2_1:handle:0%sequential_37/lstm_142/zeros:output:0'sequential_37/lstm_142/zeros_1:output:0/sequential_37/lstm_142/strided_slice_1:output:0Nsequential_37/lstm_142/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_37_lstm_142_lstm_cell_145_matmul_readvariableop_resourceEsequential_37_lstm_142_lstm_cell_145_matmul_1_readvariableop_resourceDsequential_37_lstm_142_lstm_cell_145_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_37_lstm_142_while_body_2819776*5
cond-R+
)sequential_37_lstm_142_while_cond_2819775*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential_37/lstm_142/while?
Gsequential_37/lstm_142/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2I
Gsequential_37/lstm_142/TensorArrayV2Stack/TensorListStack/element_shape?
9sequential_37/lstm_142/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_37/lstm_142/while:output:3Psequential_37/lstm_142/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02;
9sequential_37/lstm_142/TensorArrayV2Stack/TensorListStack?
,sequential_37/lstm_142/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2.
,sequential_37/lstm_142/strided_slice_3/stack?
.sequential_37/lstm_142/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_37/lstm_142/strided_slice_3/stack_1?
.sequential_37/lstm_142/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_142/strided_slice_3/stack_2?
&sequential_37/lstm_142/strided_slice_3StridedSliceBsequential_37/lstm_142/TensorArrayV2Stack/TensorListStack:tensor:05sequential_37/lstm_142/strided_slice_3/stack:output:07sequential_37/lstm_142/strided_slice_3/stack_1:output:07sequential_37/lstm_142/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2(
&sequential_37/lstm_142/strided_slice_3?
'sequential_37/lstm_142/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_37/lstm_142/transpose_1/perm?
"sequential_37/lstm_142/transpose_1	TransposeBsequential_37/lstm_142/TensorArrayV2Stack/TensorListStack:tensor:00sequential_37/lstm_142/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2$
"sequential_37/lstm_142/transpose_1?
sequential_37/lstm_142/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_37/lstm_142/runtime?
"sequential_37/dropout_205/IdentityIdentity&sequential_37/lstm_142/transpose_1:y:0*
T0*+
_output_shapes
:????????? 2$
"sequential_37/dropout_205/Identity?
sequential_37/lstm_143/ShapeShape+sequential_37/dropout_205/Identity:output:0*
T0*
_output_shapes
:2
sequential_37/lstm_143/Shape?
*sequential_37/lstm_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_37/lstm_143/strided_slice/stack?
,sequential_37/lstm_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_37/lstm_143/strided_slice/stack_1?
,sequential_37/lstm_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_37/lstm_143/strided_slice/stack_2?
$sequential_37/lstm_143/strided_sliceStridedSlice%sequential_37/lstm_143/Shape:output:03sequential_37/lstm_143/strided_slice/stack:output:05sequential_37/lstm_143/strided_slice/stack_1:output:05sequential_37/lstm_143/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_37/lstm_143/strided_slice?
"sequential_37/lstm_143/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_37/lstm_143/zeros/mul/y?
 sequential_37/lstm_143/zeros/mulMul-sequential_37/lstm_143/strided_slice:output:0+sequential_37/lstm_143/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_37/lstm_143/zeros/mul?
#sequential_37/lstm_143/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_37/lstm_143/zeros/Less/y?
!sequential_37/lstm_143/zeros/LessLess$sequential_37/lstm_143/zeros/mul:z:0,sequential_37/lstm_143/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_37/lstm_143/zeros/Less?
%sequential_37/lstm_143/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_37/lstm_143/zeros/packed/1?
#sequential_37/lstm_143/zeros/packedPack-sequential_37/lstm_143/strided_slice:output:0.sequential_37/lstm_143/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_37/lstm_143/zeros/packed?
"sequential_37/lstm_143/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_37/lstm_143/zeros/Const?
sequential_37/lstm_143/zerosFill,sequential_37/lstm_143/zeros/packed:output:0+sequential_37/lstm_143/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_37/lstm_143/zeros?
$sequential_37/lstm_143/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_37/lstm_143/zeros_1/mul/y?
"sequential_37/lstm_143/zeros_1/mulMul-sequential_37/lstm_143/strided_slice:output:0-sequential_37/lstm_143/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2$
"sequential_37/lstm_143/zeros_1/mul?
%sequential_37/lstm_143/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_37/lstm_143/zeros_1/Less/y?
#sequential_37/lstm_143/zeros_1/LessLess&sequential_37/lstm_143/zeros_1/mul:z:0.sequential_37/lstm_143/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2%
#sequential_37/lstm_143/zeros_1/Less?
'sequential_37/lstm_143/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_37/lstm_143/zeros_1/packed/1?
%sequential_37/lstm_143/zeros_1/packedPack-sequential_37/lstm_143/strided_slice:output:00sequential_37/lstm_143/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_37/lstm_143/zeros_1/packed?
$sequential_37/lstm_143/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$sequential_37/lstm_143/zeros_1/Const?
sequential_37/lstm_143/zeros_1Fill.sequential_37/lstm_143/zeros_1/packed:output:0-sequential_37/lstm_143/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2 
sequential_37/lstm_143/zeros_1?
%sequential_37/lstm_143/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_37/lstm_143/transpose/perm?
 sequential_37/lstm_143/transpose	Transpose+sequential_37/dropout_205/Identity:output:0.sequential_37/lstm_143/transpose/perm:output:0*
T0*+
_output_shapes
:????????? 2"
 sequential_37/lstm_143/transpose?
sequential_37/lstm_143/Shape_1Shape$sequential_37/lstm_143/transpose:y:0*
T0*
_output_shapes
:2 
sequential_37/lstm_143/Shape_1?
,sequential_37/lstm_143/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_37/lstm_143/strided_slice_1/stack?
.sequential_37/lstm_143/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_143/strided_slice_1/stack_1?
.sequential_37/lstm_143/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_143/strided_slice_1/stack_2?
&sequential_37/lstm_143/strided_slice_1StridedSlice'sequential_37/lstm_143/Shape_1:output:05sequential_37/lstm_143/strided_slice_1/stack:output:07sequential_37/lstm_143/strided_slice_1/stack_1:output:07sequential_37/lstm_143/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_37/lstm_143/strided_slice_1?
2sequential_37/lstm_143/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2sequential_37/lstm_143/TensorArrayV2/element_shape?
$sequential_37/lstm_143/TensorArrayV2TensorListReserve;sequential_37/lstm_143/TensorArrayV2/element_shape:output:0/sequential_37/lstm_143/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_37/lstm_143/TensorArrayV2?
Lsequential_37/lstm_143/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2N
Lsequential_37/lstm_143/TensorArrayUnstack/TensorListFromTensor/element_shape?
>sequential_37/lstm_143/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_37/lstm_143/transpose:y:0Usequential_37/lstm_143/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_37/lstm_143/TensorArrayUnstack/TensorListFromTensor?
,sequential_37/lstm_143/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_37/lstm_143/strided_slice_2/stack?
.sequential_37/lstm_143/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_143/strided_slice_2/stack_1?
.sequential_37/lstm_143/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_143/strided_slice_2/stack_2?
&sequential_37/lstm_143/strided_slice_2StridedSlice$sequential_37/lstm_143/transpose:y:05sequential_37/lstm_143/strided_slice_2/stack:output:07sequential_37/lstm_143/strided_slice_2/stack_1:output:07sequential_37/lstm_143/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2(
&sequential_37/lstm_143/strided_slice_2?
:sequential_37/lstm_143/lstm_cell_146/MatMul/ReadVariableOpReadVariableOpCsequential_37_lstm_143_lstm_cell_146_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02<
:sequential_37/lstm_143/lstm_cell_146/MatMul/ReadVariableOp?
+sequential_37/lstm_143/lstm_cell_146/MatMulMatMul/sequential_37/lstm_143/strided_slice_2:output:0Bsequential_37/lstm_143/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+sequential_37/lstm_143/lstm_cell_146/MatMul?
<sequential_37/lstm_143/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOpEsequential_37_lstm_143_lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02>
<sequential_37/lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp?
-sequential_37/lstm_143/lstm_cell_146/MatMul_1MatMul%sequential_37/lstm_143/zeros:output:0Dsequential_37/lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_37/lstm_143/lstm_cell_146/MatMul_1?
(sequential_37/lstm_143/lstm_cell_146/addAddV25sequential_37/lstm_143/lstm_cell_146/MatMul:product:07sequential_37/lstm_143/lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2*
(sequential_37/lstm_143/lstm_cell_146/add?
;sequential_37/lstm_143/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOpDsequential_37_lstm_143_lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;sequential_37/lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp?
,sequential_37/lstm_143/lstm_cell_146/BiasAddBiasAdd,sequential_37/lstm_143/lstm_cell_146/add:z:0Csequential_37/lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,sequential_37/lstm_143/lstm_cell_146/BiasAdd?
4sequential_37/lstm_143/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_37/lstm_143/lstm_cell_146/split/split_dim?
*sequential_37/lstm_143/lstm_cell_146/splitSplit=sequential_37/lstm_143/lstm_cell_146/split/split_dim:output:05sequential_37/lstm_143/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2,
*sequential_37/lstm_143/lstm_cell_146/split?
,sequential_37/lstm_143/lstm_cell_146/SigmoidSigmoid3sequential_37/lstm_143/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_37/lstm_143/lstm_cell_146/Sigmoid?
.sequential_37/lstm_143/lstm_cell_146/Sigmoid_1Sigmoid3sequential_37/lstm_143/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_143/lstm_cell_146/Sigmoid_1?
(sequential_37/lstm_143/lstm_cell_146/mulMul2sequential_37/lstm_143/lstm_cell_146/Sigmoid_1:y:0'sequential_37/lstm_143/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_143/lstm_cell_146/mul?
)sequential_37/lstm_143/lstm_cell_146/ReluRelu3sequential_37/lstm_143/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2+
)sequential_37/lstm_143/lstm_cell_146/Relu?
*sequential_37/lstm_143/lstm_cell_146/mul_1Mul0sequential_37/lstm_143/lstm_cell_146/Sigmoid:y:07sequential_37/lstm_143/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2,
*sequential_37/lstm_143/lstm_cell_146/mul_1?
*sequential_37/lstm_143/lstm_cell_146/add_1AddV2,sequential_37/lstm_143/lstm_cell_146/mul:z:0.sequential_37/lstm_143/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2,
*sequential_37/lstm_143/lstm_cell_146/add_1?
.sequential_37/lstm_143/lstm_cell_146/Sigmoid_2Sigmoid3sequential_37/lstm_143/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_143/lstm_cell_146/Sigmoid_2?
+sequential_37/lstm_143/lstm_cell_146/Relu_1Relu.sequential_37/lstm_143/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2-
+sequential_37/lstm_143/lstm_cell_146/Relu_1?
*sequential_37/lstm_143/lstm_cell_146/mul_2Mul2sequential_37/lstm_143/lstm_cell_146/Sigmoid_2:y:09sequential_37/lstm_143/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2,
*sequential_37/lstm_143/lstm_cell_146/mul_2?
4sequential_37/lstm_143/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    26
4sequential_37/lstm_143/TensorArrayV2_1/element_shape?
&sequential_37/lstm_143/TensorArrayV2_1TensorListReserve=sequential_37/lstm_143/TensorArrayV2_1/element_shape:output:0/sequential_37/lstm_143/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_37/lstm_143/TensorArrayV2_1|
sequential_37/lstm_143/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_37/lstm_143/time?
/sequential_37/lstm_143/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_37/lstm_143/while/maximum_iterations?
)sequential_37/lstm_143/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_37/lstm_143/while/loop_counter?
sequential_37/lstm_143/whileWhile2sequential_37/lstm_143/while/loop_counter:output:08sequential_37/lstm_143/while/maximum_iterations:output:0$sequential_37/lstm_143/time:output:0/sequential_37/lstm_143/TensorArrayV2_1:handle:0%sequential_37/lstm_143/zeros:output:0'sequential_37/lstm_143/zeros_1:output:0/sequential_37/lstm_143/strided_slice_1:output:0Nsequential_37/lstm_143/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_37_lstm_143_lstm_cell_146_matmul_readvariableop_resourceEsequential_37_lstm_143_lstm_cell_146_matmul_1_readvariableop_resourceDsequential_37_lstm_143_lstm_cell_146_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_37_lstm_143_while_body_2819924*5
cond-R+
)sequential_37_lstm_143_while_cond_2819923*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential_37/lstm_143/while?
Gsequential_37/lstm_143/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2I
Gsequential_37/lstm_143/TensorArrayV2Stack/TensorListStack/element_shape?
9sequential_37/lstm_143/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_37/lstm_143/while:output:3Psequential_37/lstm_143/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02;
9sequential_37/lstm_143/TensorArrayV2Stack/TensorListStack?
,sequential_37/lstm_143/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2.
,sequential_37/lstm_143/strided_slice_3/stack?
.sequential_37/lstm_143/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_37/lstm_143/strided_slice_3/stack_1?
.sequential_37/lstm_143/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/lstm_143/strided_slice_3/stack_2?
&sequential_37/lstm_143/strided_slice_3StridedSliceBsequential_37/lstm_143/TensorArrayV2Stack/TensorListStack:tensor:05sequential_37/lstm_143/strided_slice_3/stack:output:07sequential_37/lstm_143/strided_slice_3/stack_1:output:07sequential_37/lstm_143/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2(
&sequential_37/lstm_143/strided_slice_3?
'sequential_37/lstm_143/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_37/lstm_143/transpose_1/perm?
"sequential_37/lstm_143/transpose_1	TransposeBsequential_37/lstm_143/TensorArrayV2Stack/TensorListStack:tensor:00sequential_37/lstm_143/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2$
"sequential_37/lstm_143/transpose_1?
sequential_37/lstm_143/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_37/lstm_143/runtime?
"sequential_37/dropout_206/IdentityIdentity/sequential_37/lstm_143/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2$
"sequential_37/dropout_206/Identity?
-sequential_37/dense_100/MatMul/ReadVariableOpReadVariableOp6sequential_37_dense_100_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_37/dense_100/MatMul/ReadVariableOp?
sequential_37/dense_100/MatMulMatMul+sequential_37/dropout_206/Identity:output:05sequential_37/dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential_37/dense_100/MatMul?
.sequential_37/dense_100/BiasAdd/ReadVariableOpReadVariableOp7sequential_37_dense_100_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_37/dense_100/BiasAdd/ReadVariableOp?
sequential_37/dense_100/BiasAddBiasAdd(sequential_37/dense_100/MatMul:product:06sequential_37/dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2!
sequential_37/dense_100/BiasAdd?
sequential_37/dense_100/ReluRelu(sequential_37/dense_100/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_37/dense_100/Relu?
"sequential_37/dropout_207/IdentityIdentity*sequential_37/dense_100/Relu:activations:0*
T0*'
_output_shapes
:????????? 2$
"sequential_37/dropout_207/Identity?
-sequential_37/dense_101/MatMul/ReadVariableOpReadVariableOp6sequential_37_dense_101_matmul_readvariableop_resource*
_output_shapes

: *
dtype02/
-sequential_37/dense_101/MatMul/ReadVariableOp?
sequential_37/dense_101/MatMulMatMul+sequential_37/dropout_207/Identity:output:05sequential_37/dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_37/dense_101/MatMul?
.sequential_37/dense_101/BiasAdd/ReadVariableOpReadVariableOp7sequential_37_dense_101_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_37/dense_101/BiasAdd/ReadVariableOp?
sequential_37/dense_101/BiasAddBiasAdd(sequential_37/dense_101/MatMul:product:06sequential_37/dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_37/dense_101/BiasAdd?
IdentityIdentity(sequential_37/dense_101/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp/^sequential_37/dense_100/BiasAdd/ReadVariableOp.^sequential_37/dense_100/MatMul/ReadVariableOp/^sequential_37/dense_101/BiasAdd/ReadVariableOp.^sequential_37/dense_101/MatMul/ReadVariableOp<^sequential_37/lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp;^sequential_37/lstm_141/lstm_cell_144/MatMul/ReadVariableOp=^sequential_37/lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp^sequential_37/lstm_141/while<^sequential_37/lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp;^sequential_37/lstm_142/lstm_cell_145/MatMul/ReadVariableOp=^sequential_37/lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp^sequential_37/lstm_142/while<^sequential_37/lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp;^sequential_37/lstm_143/lstm_cell_146/MatMul/ReadVariableOp=^sequential_37/lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp^sequential_37/lstm_143/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2`
.sequential_37/dense_100/BiasAdd/ReadVariableOp.sequential_37/dense_100/BiasAdd/ReadVariableOp2^
-sequential_37/dense_100/MatMul/ReadVariableOp-sequential_37/dense_100/MatMul/ReadVariableOp2`
.sequential_37/dense_101/BiasAdd/ReadVariableOp.sequential_37/dense_101/BiasAdd/ReadVariableOp2^
-sequential_37/dense_101/MatMul/ReadVariableOp-sequential_37/dense_101/MatMul/ReadVariableOp2z
;sequential_37/lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp;sequential_37/lstm_141/lstm_cell_144/BiasAdd/ReadVariableOp2x
:sequential_37/lstm_141/lstm_cell_144/MatMul/ReadVariableOp:sequential_37/lstm_141/lstm_cell_144/MatMul/ReadVariableOp2|
<sequential_37/lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp<sequential_37/lstm_141/lstm_cell_144/MatMul_1/ReadVariableOp2<
sequential_37/lstm_141/whilesequential_37/lstm_141/while2z
;sequential_37/lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp;sequential_37/lstm_142/lstm_cell_145/BiasAdd/ReadVariableOp2x
:sequential_37/lstm_142/lstm_cell_145/MatMul/ReadVariableOp:sequential_37/lstm_142/lstm_cell_145/MatMul/ReadVariableOp2|
<sequential_37/lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp<sequential_37/lstm_142/lstm_cell_145/MatMul_1/ReadVariableOp2<
sequential_37/lstm_142/whilesequential_37/lstm_142/while2z
;sequential_37/lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp;sequential_37/lstm_143/lstm_cell_146/BiasAdd/ReadVariableOp2x
:sequential_37/lstm_143/lstm_cell_146/MatMul/ReadVariableOp:sequential_37/lstm_143/lstm_cell_146/MatMul/ReadVariableOp2|
<sequential_37/lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp<sequential_37/lstm_143/lstm_cell_146/MatMul_1/ReadVariableOp2<
sequential_37/lstm_143/whilesequential_37/lstm_143/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_141_input
?&
?
while_body_2821582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_146_2821606_0:	 ?0
while_lstm_cell_146_2821608_0:	 ?,
while_lstm_cell_146_2821610_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_146_2821606:	 ?.
while_lstm_cell_146_2821608:	 ?*
while_lstm_cell_146_2821610:	???+while/lstm_cell_146/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_146/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_146_2821606_0while_lstm_cell_146_2821608_0while_lstm_cell_146_2821610_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_28215042-
+while/lstm_cell_146/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_146/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_146/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_146/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp,^while/lstm_cell_146/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_146_2821606while_lstm_cell_146_2821606_0"<
while_lstm_cell_146_2821608while_lstm_cell_146_2821608_0"<
while_lstm_cell_146_2821610while_lstm_cell_146_2821610_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2Z
+while/lstm_cell_146/StatefulPartitionedCall+while/lstm_cell_146/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2826502

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
while_cond_2824596
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2824596___redundant_placeholder05
1while_while_cond_2824596___redundant_placeholder15
1while_while_cond_2824596___redundant_placeholder25
1while_while_cond_2824596___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
*__inference_lstm_143_layer_call_fn_2826377

inputs
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_143_layer_call_and_return_conditional_losses_28227152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
F__inference_dense_100_layer_call_and_return_conditional_losses_2826415

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
while_cond_2822630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2822630___redundant_placeholder05
1while_while_cond_2822630___redundant_placeholder15
1while_while_cond_2822630___redundant_placeholder25
1while_while_cond_2822630___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
f
H__inference_dropout_207_layer_call_and_return_conditional_losses_2822437

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
lstm_143_while_cond_2823727.
*lstm_143_while_lstm_143_while_loop_counter4
0lstm_143_while_lstm_143_while_maximum_iterations
lstm_143_while_placeholder 
lstm_143_while_placeholder_1 
lstm_143_while_placeholder_2 
lstm_143_while_placeholder_30
,lstm_143_while_less_lstm_143_strided_slice_1G
Clstm_143_while_lstm_143_while_cond_2823727___redundant_placeholder0G
Clstm_143_while_lstm_143_while_cond_2823727___redundant_placeholder1G
Clstm_143_while_lstm_143_while_cond_2823727___redundant_placeholder2G
Clstm_143_while_lstm_143_while_cond_2823727___redundant_placeholder3
lstm_143_while_identity
?
lstm_143/while/LessLesslstm_143_while_placeholder,lstm_143_while_less_lstm_143_strided_slice_1*
T0*
_output_shapes
: 2
lstm_143/while/Lessx
lstm_143/while/IdentityIdentitylstm_143/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_143/while/Identity";
lstm_143_while_identity lstm_143/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2826534

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
)sequential_37_lstm_143_while_cond_2819923J
Fsequential_37_lstm_143_while_sequential_37_lstm_143_while_loop_counterP
Lsequential_37_lstm_143_while_sequential_37_lstm_143_while_maximum_iterations,
(sequential_37_lstm_143_while_placeholder.
*sequential_37_lstm_143_while_placeholder_1.
*sequential_37_lstm_143_while_placeholder_2.
*sequential_37_lstm_143_while_placeholder_3L
Hsequential_37_lstm_143_while_less_sequential_37_lstm_143_strided_slice_1c
_sequential_37_lstm_143_while_sequential_37_lstm_143_while_cond_2819923___redundant_placeholder0c
_sequential_37_lstm_143_while_sequential_37_lstm_143_while_cond_2819923___redundant_placeholder1c
_sequential_37_lstm_143_while_sequential_37_lstm_143_while_cond_2819923___redundant_placeholder2c
_sequential_37_lstm_143_while_sequential_37_lstm_143_while_cond_2819923___redundant_placeholder3)
%sequential_37_lstm_143_while_identity
?
!sequential_37/lstm_143/while/LessLess(sequential_37_lstm_143_while_placeholderHsequential_37_lstm_143_while_less_sequential_37_lstm_143_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_37/lstm_143/while/Less?
%sequential_37/lstm_143/while/IdentityIdentity%sequential_37/lstm_143/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_37/lstm_143/while/Identity"W
%sequential_37_lstm_143_while_identity.sequential_37/lstm_143/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
??
?
while_body_2822316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_146_matmul_readvariableop_resource_0:	 ?I
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_146_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_146_matmul_readvariableop_resource:	 ?G
4while_lstm_cell_146_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_146_biasadd_readvariableop_resource:	???*while/lstm_cell_146/BiasAdd/ReadVariableOp?)while/lstm_cell_146/MatMul/ReadVariableOp?+while/lstm_cell_146/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_146/MatMul/ReadVariableOp?
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/MatMul?
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_146/MatMul_1/ReadVariableOp?
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/MatMul_1?
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/add?
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_146/BiasAdd/ReadVariableOp?
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/BiasAdd?
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_146/split/split_dim?
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_146/split?
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid?
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid_1?
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul?
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Relu?
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul_1?
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/add_1?
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid_2?
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Relu_1?
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?

?
lstm_142_while_cond_2823579.
*lstm_142_while_lstm_142_while_loop_counter4
0lstm_142_while_lstm_142_while_maximum_iterations
lstm_142_while_placeholder 
lstm_142_while_placeholder_1 
lstm_142_while_placeholder_2 
lstm_142_while_placeholder_30
,lstm_142_while_less_lstm_142_strided_slice_1G
Clstm_142_while_lstm_142_while_cond_2823579___redundant_placeholder0G
Clstm_142_while_lstm_142_while_cond_2823579___redundant_placeholder1G
Clstm_142_while_lstm_142_while_cond_2823579___redundant_placeholder2G
Clstm_142_while_lstm_142_while_cond_2823579___redundant_placeholder3
lstm_142_while_identity
?
lstm_142/while/LessLesslstm_142_while_placeholder,lstm_142_while_less_lstm_142_strided_slice_1*
T0*
_output_shapes
: 2
lstm_142/while/Lessx
lstm_142/while/IdentityIdentitylstm_142/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_142/while/Identity";
lstm_142_while_identity lstm_142/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?F
?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2821021

inputs(
lstm_cell_145_2820939:	 ?(
lstm_cell_145_2820941:	 ?$
lstm_cell_145_2820943:	?
identity??%lstm_cell_145/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
%lstm_cell_145/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_145_2820939lstm_cell_145_2820941lstm_cell_145_2820943*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_28208742'
%lstm_cell_145/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_145_2820939lstm_cell_145_2820941lstm_cell_145_2820943*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2820952*
condR
while_cond_2820951*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identity~
NoOpNoOp&^lstm_cell_145/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2N
%lstm_cell_145/StatefulPartitionedCall%lstm_cell_145/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
*__inference_lstm_143_layer_call_fn_2826366

inputs
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_143_layer_call_and_return_conditional_losses_28224002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
H__inference_dropout_206_layer_call_and_return_conditional_losses_2822548

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
F__inference_dense_101_layer_call_and_return_conditional_losses_2822449

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?\
?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2823107

inputs?
,lstm_cell_144_matmul_readvariableop_resource:	?A
.lstm_cell_144_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_144_biasadd_readvariableop_resource:	?
identity??$lstm_cell_144/BiasAdd/ReadVariableOp?#lstm_cell_144/MatMul/ReadVariableOp?%lstm_cell_144/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp?
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/MatMul?
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp?
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/MatMul_1?
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/add?
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp?
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/BiasAdd?
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim?
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_144/split?
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid?
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid_1?
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul?
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Relu?
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul_1?
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/add_1?
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Relu_1?
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2823023*
condR
while_cond_2823022*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)sequential_37_lstm_142_while_cond_2819775J
Fsequential_37_lstm_142_while_sequential_37_lstm_142_while_loop_counterP
Lsequential_37_lstm_142_while_sequential_37_lstm_142_while_maximum_iterations,
(sequential_37_lstm_142_while_placeholder.
*sequential_37_lstm_142_while_placeholder_1.
*sequential_37_lstm_142_while_placeholder_2.
*sequential_37_lstm_142_while_placeholder_3L
Hsequential_37_lstm_142_while_less_sequential_37_lstm_142_strided_slice_1c
_sequential_37_lstm_142_while_sequential_37_lstm_142_while_cond_2819775___redundant_placeholder0c
_sequential_37_lstm_142_while_sequential_37_lstm_142_while_cond_2819775___redundant_placeholder1c
_sequential_37_lstm_142_while_sequential_37_lstm_142_while_cond_2819775___redundant_placeholder2c
_sequential_37_lstm_142_while_sequential_37_lstm_142_while_cond_2819775___redundant_placeholder3)
%sequential_37_lstm_142_while_identity
?
!sequential_37/lstm_142/while/LessLess(sequential_37_lstm_142_while_placeholderHsequential_37_lstm_142_while_less_sequential_37_lstm_142_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_37/lstm_142/while/Less?
%sequential_37/lstm_142/while/IdentityIdentity%sequential_37/lstm_142/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_37/lstm_142/while/Identity"W
%sequential_37_lstm_142_while_identity.sequential_37/lstm_142/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?\
?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2825658

inputs?
,lstm_cell_145_matmul_readvariableop_resource:	 ?A
.lstm_cell_145_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_145_biasadd_readvariableop_resource:	?
identity??$lstm_cell_145/BiasAdd/ReadVariableOp?#lstm_cell_145/MatMul/ReadVariableOp?%lstm_cell_145/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_145/MatMul/ReadVariableOp?
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/MatMul?
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_145/MatMul_1/ReadVariableOp?
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/MatMul_1?
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/add?
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_145/BiasAdd/ReadVariableOp?
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/BiasAdd?
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_145/split/split_dim?
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_145/split?
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid?
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid_1?
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul?
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Relu?
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul_1?
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/add_1?
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid_2
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Relu_1?
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2825574*
condR
while_cond_2825573*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
/__inference_sequential_37_layer_call_fn_2824379

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2:	 ?
	unknown_3:	 ?
	unknown_4:	?
	unknown_5:	 ?
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_37_layer_call_and_return_conditional_losses_28231882
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2824898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2824898___redundant_placeholder05
1while_while_cond_2824898___redundant_placeholder15
1while_while_cond_2824898___redundant_placeholder25
1while_while_cond_2824898___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?&
?
while_body_2820742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_145_2820766_0:	 ?0
while_lstm_cell_145_2820768_0:	 ?,
while_lstm_cell_145_2820770_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_145_2820766:	 ?.
while_lstm_cell_145_2820768:	 ?*
while_lstm_cell_145_2820770:	???+while/lstm_cell_145/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_145/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_145_2820766_0while_lstm_cell_145_2820768_0while_lstm_cell_145_2820770_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_28207282-
+while/lstm_cell_145/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_145/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_145/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_145/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp,^while/lstm_cell_145/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_145_2820766while_lstm_cell_145_2820766_0"<
while_lstm_cell_145_2820768while_lstm_cell_145_2820768_0"<
while_lstm_cell_145_2820770while_lstm_cell_145_2820770_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2Z
+while/lstm_cell_145/StatefulPartitionedCall+while/lstm_cell_145/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
g
H__inference_dropout_207_layer_call_and_return_conditional_losses_2822515

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?\
?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2824681
inputs_0?
,lstm_cell_144_matmul_readvariableop_resource:	?A
.lstm_cell_144_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_144_biasadd_readvariableop_resource:	?
identity??$lstm_cell_144/BiasAdd/ReadVariableOp?#lstm_cell_144/MatMul/ReadVariableOp?%lstm_cell_144/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp?
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/MatMul?
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp?
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/MatMul_1?
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/add?
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp?
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_144/BiasAdd?
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim?
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_144/split?
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid?
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid_1?
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul?
lstm_cell_144/ReluRelulstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Relu?
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0 lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul_1?
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/add_1?
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Relu_1Relulstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/Relu_1?
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0"lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_144/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2824597*
condR
while_cond_2824596*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identity?
NoOpNoOp%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_142_layer_call_fn_2825691

inputs
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_142_layer_call_and_return_conditional_losses_28222352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
while_body_2825272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_145_matmul_readvariableop_resource_0:	 ?I
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_145_matmul_readvariableop_resource:	 ?G
4while_lstm_cell_145_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_145_biasadd_readvariableop_resource:	???*while/lstm_cell_145/BiasAdd/ReadVariableOp?)while/lstm_cell_145/MatMul/ReadVariableOp?+while/lstm_cell_145/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_145/MatMul/ReadVariableOp?
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/MatMul?
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_145/MatMul_1/ReadVariableOp?
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/MatMul_1?
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/add?
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_145/BiasAdd/ReadVariableOp?
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/BiasAdd?
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_145/split/split_dim?
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_145/split?
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid?
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid_1?
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul?
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Relu?
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul_1?
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/add_1?
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid_2?
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Relu_1?
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
f
-__inference_dropout_204_layer_call_fn_2825054

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_204_layer_call_and_return_conditional_losses_28229402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
+__inference_dense_100_layer_call_fn_2826424

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_28224262
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
*__inference_lstm_141_layer_call_fn_2825016

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_141_layer_call_and_return_conditional_losses_28220702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
-__inference_dropout_206_layer_call_fn_2826404

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_206_layer_call_and_return_conditional_losses_28225482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?2
?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2823326
lstm_141_input#
lstm_141_2823290:	?#
lstm_141_2823292:	 ?
lstm_141_2823294:	?#
lstm_142_2823298:	 ?#
lstm_142_2823300:	 ?
lstm_142_2823302:	?#
lstm_143_2823306:	 ?#
lstm_143_2823308:	 ?
lstm_143_2823310:	?#
dense_100_2823314:  
dense_100_2823316: #
dense_101_2823320: 
dense_101_2823322:
identity??!dense_100/StatefulPartitionedCall?!dense_101/StatefulPartitionedCall?#dropout_204/StatefulPartitionedCall?#dropout_205/StatefulPartitionedCall?#dropout_206/StatefulPartitionedCall?#dropout_207/StatefulPartitionedCall? lstm_141/StatefulPartitionedCall? lstm_142/StatefulPartitionedCall? lstm_143/StatefulPartitionedCall?
 lstm_141/StatefulPartitionedCallStatefulPartitionedCalllstm_141_inputlstm_141_2823290lstm_141_2823292lstm_141_2823294*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_141_layer_call_and_return_conditional_losses_28231072"
 lstm_141/StatefulPartitionedCall?
#dropout_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_204_layer_call_and_return_conditional_losses_28229402%
#dropout_204/StatefulPartitionedCall?
 lstm_142/StatefulPartitionedCallStatefulPartitionedCall,dropout_204/StatefulPartitionedCall:output:0lstm_142_2823298lstm_142_2823300lstm_142_2823302*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_142_layer_call_and_return_conditional_losses_28229112"
 lstm_142/StatefulPartitionedCall?
#dropout_205/StatefulPartitionedCallStatefulPartitionedCall)lstm_142/StatefulPartitionedCall:output:0$^dropout_204/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_205_layer_call_and_return_conditional_losses_28227442%
#dropout_205/StatefulPartitionedCall?
 lstm_143/StatefulPartitionedCallStatefulPartitionedCall,dropout_205/StatefulPartitionedCall:output:0lstm_143_2823306lstm_143_2823308lstm_143_2823310*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_143_layer_call_and_return_conditional_losses_28227152"
 lstm_143/StatefulPartitionedCall?
#dropout_206/StatefulPartitionedCallStatefulPartitionedCall)lstm_143/StatefulPartitionedCall:output:0$^dropout_205/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_206_layer_call_and_return_conditional_losses_28225482%
#dropout_206/StatefulPartitionedCall?
!dense_100/StatefulPartitionedCallStatefulPartitionedCall,dropout_206/StatefulPartitionedCall:output:0dense_100_2823314dense_100_2823316*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_28224262#
!dense_100/StatefulPartitionedCall?
#dropout_207/StatefulPartitionedCallStatefulPartitionedCall*dense_100/StatefulPartitionedCall:output:0$^dropout_206/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_207_layer_call_and_return_conditional_losses_28225152%
#dropout_207/StatefulPartitionedCall?
!dense_101/StatefulPartitionedCallStatefulPartitionedCall,dropout_207/StatefulPartitionedCall:output:0dense_101_2823320dense_101_2823322*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_101_layer_call_and_return_conditional_losses_28224492#
!dense_101/StatefulPartitionedCall?
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_100/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall$^dropout_204/StatefulPartitionedCall$^dropout_205/StatefulPartitionedCall$^dropout_206/StatefulPartitionedCall$^dropout_207/StatefulPartitionedCall!^lstm_141/StatefulPartitionedCall!^lstm_142/StatefulPartitionedCall!^lstm_143/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2J
#dropout_204/StatefulPartitionedCall#dropout_204/StatefulPartitionedCall2J
#dropout_205/StatefulPartitionedCall#dropout_205/StatefulPartitionedCall2J
#dropout_206/StatefulPartitionedCall#dropout_206/StatefulPartitionedCall2J
#dropout_207/StatefulPartitionedCall#dropout_207/StatefulPartitionedCall2D
 lstm_141/StatefulPartitionedCall lstm_141/StatefulPartitionedCall2D
 lstm_142/StatefulPartitionedCall lstm_142/StatefulPartitionedCall2D
 lstm_143/StatefulPartitionedCall lstm_143/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_141_input
?\
?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2822235

inputs?
,lstm_cell_145_matmul_readvariableop_resource:	 ?A
.lstm_cell_145_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_145_biasadd_readvariableop_resource:	?
identity??$lstm_cell_145/BiasAdd/ReadVariableOp?#lstm_cell_145/MatMul/ReadVariableOp?%lstm_cell_145/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_145/MatMul/ReadVariableOp?
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/MatMul?
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_145/MatMul_1/ReadVariableOp?
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/MatMul_1?
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/add?
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_145/BiasAdd/ReadVariableOp?
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/BiasAdd?
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_145/split/split_dim?
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_145/split?
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid?
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid_1?
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul?
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Relu?
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul_1?
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/add_1?
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid_2
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Relu_1?
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2822151*
condR
while_cond_2822150*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
while_body_2825947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_146_matmul_readvariableop_resource_0:	 ?I
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_146_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_146_matmul_readvariableop_resource:	 ?G
4while_lstm_cell_146_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_146_biasadd_readvariableop_resource:	???*while/lstm_cell_146/BiasAdd/ReadVariableOp?)while/lstm_cell_146/MatMul/ReadVariableOp?+while/lstm_cell_146/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_146/MatMul/ReadVariableOp?
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/MatMul?
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_146/MatMul_1/ReadVariableOp?
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/MatMul_1?
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/add?
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_146/BiasAdd/ReadVariableOp?
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/BiasAdd?
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_146/split/split_dim?
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_146/split?
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid?
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid_1?
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul?
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Relu?
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul_1?
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/add_1?
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid_2?
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Relu_1?
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2826730

inputs
states_0
states_11
matmul_readvariableop_resource:	 ?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
*__inference_lstm_141_layer_call_fn_2824994
inputs_0
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_141_layer_call_and_return_conditional_losses_28201812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_145_layer_call_fn_2826649

inputs
states_0
states_1
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_28207282
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?

?
lstm_142_while_cond_2824048.
*lstm_142_while_lstm_142_while_loop_counter4
0lstm_142_while_lstm_142_while_maximum_iterations
lstm_142_while_placeholder 
lstm_142_while_placeholder_1 
lstm_142_while_placeholder_2 
lstm_142_while_placeholder_30
,lstm_142_while_less_lstm_142_strided_slice_1G
Clstm_142_while_lstm_142_while_cond_2824048___redundant_placeholder0G
Clstm_142_while_lstm_142_while_cond_2824048___redundant_placeholder1G
Clstm_142_while_lstm_142_while_cond_2824048___redundant_placeholder2G
Clstm_142_while_lstm_142_while_cond_2824048___redundant_placeholder3
lstm_142_while_identity
?
lstm_142/while/LessLesslstm_142_while_placeholder,lstm_142_while_less_lstm_142_strided_slice_1*
T0*
_output_shapes
: 2
lstm_142/while/Lessx
lstm_142/while/IdentityIdentitylstm_142/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_142/while/Identity";
lstm_142_while_identity lstm_142/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
f
H__inference_dropout_207_layer_call_and_return_conditional_losses_2826429

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
while_cond_2820951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2820951___redundant_placeholder05
1while_while_cond_2820951___redundant_placeholder15
1while_while_cond_2820951___redundant_placeholder25
1while_while_cond_2820951___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?F
?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2820811

inputs(
lstm_cell_145_2820729:	 ?(
lstm_cell_145_2820731:	 ?$
lstm_cell_145_2820733:	?
identity??%lstm_cell_145/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
%lstm_cell_145/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_145_2820729lstm_cell_145_2820731lstm_cell_145_2820733*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_28207282'
%lstm_cell_145/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_145_2820729lstm_cell_145_2820731lstm_cell_145_2820733*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2820742*
condR
while_cond_2820741*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identity~
NoOpNoOp&^lstm_cell_145/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2N
%lstm_cell_145/StatefulPartitionedCall%lstm_cell_145/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?

?
lstm_141_while_cond_2823893.
*lstm_141_while_lstm_141_while_loop_counter4
0lstm_141_while_lstm_141_while_maximum_iterations
lstm_141_while_placeholder 
lstm_141_while_placeholder_1 
lstm_141_while_placeholder_2 
lstm_141_while_placeholder_30
,lstm_141_while_less_lstm_141_strided_slice_1G
Clstm_141_while_lstm_141_while_cond_2823893___redundant_placeholder0G
Clstm_141_while_lstm_141_while_cond_2823893___redundant_placeholder1G
Clstm_141_while_lstm_141_while_cond_2823893___redundant_placeholder2G
Clstm_141_while_lstm_141_while_cond_2823893___redundant_placeholder3
lstm_141_while_identity
?
lstm_141/while/LessLesslstm_141_while_placeholder,lstm_141_while_less_lstm_141_strided_slice_1*
T0*
_output_shapes
: 2
lstm_141/while/Lessx
lstm_141/while/IdentityIdentitylstm_141/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_141/while/Identity";
lstm_141_while_identity lstm_141/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
??
?
while_body_2824597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_144_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_144_matmul_readvariableop_resource:	?G
4while_lstm_cell_144_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_144_biasadd_readvariableop_resource:	???*while/lstm_cell_144/BiasAdd/ReadVariableOp?)while/lstm_cell_144/MatMul/ReadVariableOp?+while/lstm_cell_144/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOp?
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/MatMul?
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOp?
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/MatMul_1?
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/add?
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOp?
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/BiasAdd?
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim?
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_144/split?
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid?
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid_1?
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul?
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Relu?
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul_1?
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/add_1?
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid_2?
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Relu_1?
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2826632

inputs
states_0
states_11
matmul_readvariableop_resource:	 ?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2826698

inputs
states_0
states_11
matmul_readvariableop_resource:	 ?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
g
H__inference_dropout_205_layer_call_and_return_conditional_losses_2825719

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:????????? 2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:????????? 2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? :S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
while_body_2825423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_145_matmul_readvariableop_resource_0:	 ?I
6while_lstm_cell_145_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_145_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_145_matmul_readvariableop_resource:	 ?G
4while_lstm_cell_145_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_145_biasadd_readvariableop_resource:	???*while/lstm_cell_145/BiasAdd/ReadVariableOp?)while/lstm_cell_145/MatMul/ReadVariableOp?+while/lstm_cell_145/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_145/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_145_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_145/MatMul/ReadVariableOp?
while/lstm_cell_145/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/MatMul?
+while/lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_145_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_145/MatMul_1/ReadVariableOp?
while/lstm_cell_145/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/MatMul_1?
while/lstm_cell_145/addAddV2$while/lstm_cell_145/MatMul:product:0&while/lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/add?
*while/lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_145_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_145/BiasAdd/ReadVariableOp?
while/lstm_cell_145/BiasAddBiasAddwhile/lstm_cell_145/add:z:02while/lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_145/BiasAdd?
#while/lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_145/split/split_dim?
while/lstm_cell_145/splitSplit,while/lstm_cell_145/split/split_dim:output:0$while/lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_145/split?
while/lstm_cell_145/SigmoidSigmoid"while/lstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid?
while/lstm_cell_145/Sigmoid_1Sigmoid"while/lstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid_1?
while/lstm_cell_145/mulMul!while/lstm_cell_145/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul?
while/lstm_cell_145/ReluRelu"while/lstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Relu?
while/lstm_cell_145/mul_1Mulwhile/lstm_cell_145/Sigmoid:y:0&while/lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul_1?
while/lstm_cell_145/add_1AddV2while/lstm_cell_145/mul:z:0while/lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/add_1?
while/lstm_cell_145/Sigmoid_2Sigmoid"while/lstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Sigmoid_2?
while/lstm_cell_145/Relu_1Reluwhile/lstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/Relu_1?
while/lstm_cell_145/mul_2Mul!while/lstm_cell_145/Sigmoid_2:y:0(while/lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_145/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_145/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_145/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_145/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_145/BiasAdd/ReadVariableOp*^while/lstm_cell_145/MatMul/ReadVariableOp,^while/lstm_cell_145/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_145_biasadd_readvariableop_resource5while_lstm_cell_145_biasadd_readvariableop_resource_0"n
4while_lstm_cell_145_matmul_1_readvariableop_resource6while_lstm_cell_145_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_145_matmul_readvariableop_resource4while_lstm_cell_145_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_145/BiasAdd/ReadVariableOp*while/lstm_cell_145/BiasAdd/ReadVariableOp2V
)while/lstm_cell_145/MatMul/ReadVariableOp)while/lstm_cell_145/MatMul/ReadVariableOp2Z
+while/lstm_cell_145/MatMul_1/ReadVariableOp+while/lstm_cell_145/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2821581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2821581___redundant_placeholder05
1while_while_cond_2821581___redundant_placeholder15
1while_while_cond_2821581___redundant_placeholder25
1while_while_cond_2821581___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2825946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2825946___redundant_placeholder05
1while_while_cond_2825946___redundant_placeholder15
1while_while_cond_2825946___redundant_placeholder25
1while_while_cond_2825946___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2824445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2824445___redundant_placeholder05
1while_while_cond_2824445___redundant_placeholder15
1while_while_cond_2824445___redundant_placeholder25
1while_while_cond_2824445___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
f
-__inference_dropout_207_layer_call_fn_2826451

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_207_layer_call_and_return_conditional_losses_28225152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
while_body_2822631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_146_matmul_readvariableop_resource_0:	 ?I
6while_lstm_cell_146_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_146_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_146_matmul_readvariableop_resource:	 ?G
4while_lstm_cell_146_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_146_biasadd_readvariableop_resource:	???*while/lstm_cell_146/BiasAdd/ReadVariableOp?)while/lstm_cell_146/MatMul/ReadVariableOp?+while/lstm_cell_146/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_146/MatMul/ReadVariableOp?
while/lstm_cell_146/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/MatMul?
+while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_146/MatMul_1/ReadVariableOp?
while/lstm_cell_146/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/MatMul_1?
while/lstm_cell_146/addAddV2$while/lstm_cell_146/MatMul:product:0&while/lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/add?
*while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_146/BiasAdd/ReadVariableOp?
while/lstm_cell_146/BiasAddBiasAddwhile/lstm_cell_146/add:z:02while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_146/BiasAdd?
#while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_146/split/split_dim?
while/lstm_cell_146/splitSplit,while/lstm_cell_146/split/split_dim:output:0$while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_146/split?
while/lstm_cell_146/SigmoidSigmoid"while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid?
while/lstm_cell_146/Sigmoid_1Sigmoid"while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid_1?
while/lstm_cell_146/mulMul!while/lstm_cell_146/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul?
while/lstm_cell_146/ReluRelu"while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Relu?
while/lstm_cell_146/mul_1Mulwhile/lstm_cell_146/Sigmoid:y:0&while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul_1?
while/lstm_cell_146/add_1AddV2while/lstm_cell_146/mul:z:0while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/add_1?
while/lstm_cell_146/Sigmoid_2Sigmoid"while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Sigmoid_2?
while/lstm_cell_146/Relu_1Reluwhile/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/Relu_1?
while/lstm_cell_146/mul_2Mul!while/lstm_cell_146/Sigmoid_2:y:0(while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_146/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_146/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_146/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_146/BiasAdd/ReadVariableOp*^while/lstm_cell_146/MatMul/ReadVariableOp,^while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_146_biasadd_readvariableop_resource5while_lstm_cell_146_biasadd_readvariableop_resource_0"n
4while_lstm_cell_146_matmul_1_readvariableop_resource6while_lstm_cell_146_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_146_matmul_readvariableop_resource4while_lstm_cell_146_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_146/BiasAdd/ReadVariableOp*while/lstm_cell_146/BiasAdd/ReadVariableOp2V
)while/lstm_cell_146/MatMul/ReadVariableOp)while/lstm_cell_146/MatMul/ReadVariableOp2Z
+while/lstm_cell_146/MatMul_1/ReadVariableOp+while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
f
-__inference_dropout_205_layer_call_fn_2825729

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_205_layer_call_and_return_conditional_losses_28227442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
while_cond_2826248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2826248___redundant_placeholder05
1while_while_cond_2826248___redundant_placeholder15
1while_while_cond_2826248___redundant_placeholder25
1while_while_cond_2826248___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
??
?
while_body_2823023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_144_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_144_matmul_1_readvariableop_resource_0:	 ?D
5while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_144_matmul_readvariableop_resource:	?G
4while_lstm_cell_144_matmul_1_readvariableop_resource:	 ?B
3while_lstm_cell_144_biasadd_readvariableop_resource:	???*while/lstm_cell_144/BiasAdd/ReadVariableOp?)while/lstm_cell_144/MatMul/ReadVariableOp?+while/lstm_cell_144/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOp?
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/MatMul?
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOp?
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/MatMul_1?
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/add?
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOp?
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_144/BiasAdd?
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim?
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_144/split?
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid?
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid_1?
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul?
while/lstm_cell_144/ReluRelu"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Relu?
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0&while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul_1?
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/add_1?
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Sigmoid_2?
while/lstm_cell_144/Relu_1Reluwhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/Relu_1?
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0(while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_144/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2824747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2824747___redundant_placeholder05
1while_while_cond_2824747___redundant_placeholder15
1while_while_cond_2824747___redundant_placeholder25
1while_while_cond_2824747___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?F
?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2820391

inputs(
lstm_cell_144_2820309:	?(
lstm_cell_144_2820311:	 ?$
lstm_cell_144_2820313:	?
identity??%lstm_cell_144/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
%lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_144_2820309lstm_cell_144_2820311lstm_cell_144_2820313*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_28202442'
%lstm_cell_144/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_144_2820309lstm_cell_144_2820311lstm_cell_144_2820313*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2820322*
condR
while_cond_2820321*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identity~
NoOpNoOp&^lstm_cell_144/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_144/StatefulPartitionedCall%lstm_cell_144/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?L
?

lstm_143_while_body_2823728.
*lstm_143_while_lstm_143_while_loop_counter4
0lstm_143_while_lstm_143_while_maximum_iterations
lstm_143_while_placeholder 
lstm_143_while_placeholder_1 
lstm_143_while_placeholder_2 
lstm_143_while_placeholder_3-
)lstm_143_while_lstm_143_strided_slice_1_0i
elstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_143_while_lstm_cell_146_matmul_readvariableop_resource_0:	 ?R
?lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource_0:	 ?M
>lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource_0:	?
lstm_143_while_identity
lstm_143_while_identity_1
lstm_143_while_identity_2
lstm_143_while_identity_3
lstm_143_while_identity_4
lstm_143_while_identity_5+
'lstm_143_while_lstm_143_strided_slice_1g
clstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensorN
;lstm_143_while_lstm_cell_146_matmul_readvariableop_resource:	 ?P
=lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource:	 ?K
<lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource:	???3lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp?2lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp?4lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp?
@lstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2B
@lstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shape?
2lstm_143/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensor_0lstm_143_while_placeholderIlstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype024
2lstm_143/while/TensorArrayV2Read/TensorListGetItem?
2lstm_143/while/lstm_cell_146/MatMul/ReadVariableOpReadVariableOp=lstm_143_while_lstm_cell_146_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype024
2lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp?
#lstm_143/while/lstm_cell_146/MatMulMatMul9lstm_143/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_143/while/lstm_cell_146/MatMul?
4lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp?lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype026
4lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp?
%lstm_143/while/lstm_cell_146/MatMul_1MatMullstm_143_while_placeholder_2<lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%lstm_143/while/lstm_cell_146/MatMul_1?
 lstm_143/while/lstm_cell_146/addAddV2-lstm_143/while/lstm_cell_146/MatMul:product:0/lstm_143/while/lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2"
 lstm_143/while/lstm_cell_146/add?
3lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp>lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype025
3lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp?
$lstm_143/while/lstm_cell_146/BiasAddBiasAdd$lstm_143/while/lstm_cell_146/add:z:0;lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$lstm_143/while/lstm_cell_146/BiasAdd?
,lstm_143/while/lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_143/while/lstm_cell_146/split/split_dim?
"lstm_143/while/lstm_cell_146/splitSplit5lstm_143/while/lstm_cell_146/split/split_dim:output:0-lstm_143/while/lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2$
"lstm_143/while/lstm_cell_146/split?
$lstm_143/while/lstm_cell_146/SigmoidSigmoid+lstm_143/while/lstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_143/while/lstm_cell_146/Sigmoid?
&lstm_143/while/lstm_cell_146/Sigmoid_1Sigmoid+lstm_143/while/lstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2(
&lstm_143/while/lstm_cell_146/Sigmoid_1?
 lstm_143/while/lstm_cell_146/mulMul*lstm_143/while/lstm_cell_146/Sigmoid_1:y:0lstm_143_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_143/while/lstm_cell_146/mul?
!lstm_143/while/lstm_cell_146/ReluRelu+lstm_143/while/lstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2#
!lstm_143/while/lstm_cell_146/Relu?
"lstm_143/while/lstm_cell_146/mul_1Mul(lstm_143/while/lstm_cell_146/Sigmoid:y:0/lstm_143/while/lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2$
"lstm_143/while/lstm_cell_146/mul_1?
"lstm_143/while/lstm_cell_146/add_1AddV2$lstm_143/while/lstm_cell_146/mul:z:0&lstm_143/while/lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_143/while/lstm_cell_146/add_1?
&lstm_143/while/lstm_cell_146/Sigmoid_2Sigmoid+lstm_143/while/lstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2(
&lstm_143/while/lstm_cell_146/Sigmoid_2?
#lstm_143/while/lstm_cell_146/Relu_1Relu&lstm_143/while/lstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2%
#lstm_143/while/lstm_cell_146/Relu_1?
"lstm_143/while/lstm_cell_146/mul_2Mul*lstm_143/while/lstm_cell_146/Sigmoid_2:y:01lstm_143/while/lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2$
"lstm_143/while/lstm_cell_146/mul_2?
3lstm_143/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_143_while_placeholder_1lstm_143_while_placeholder&lstm_143/while/lstm_cell_146/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_143/while/TensorArrayV2Write/TensorListSetItemn
lstm_143/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_143/while/add/y?
lstm_143/while/addAddV2lstm_143_while_placeholderlstm_143/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_143/while/addr
lstm_143/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_143/while/add_1/y?
lstm_143/while/add_1AddV2*lstm_143_while_lstm_143_while_loop_counterlstm_143/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_143/while/add_1?
lstm_143/while/IdentityIdentitylstm_143/while/add_1:z:0^lstm_143/while/NoOp*
T0*
_output_shapes
: 2
lstm_143/while/Identity?
lstm_143/while/Identity_1Identity0lstm_143_while_lstm_143_while_maximum_iterations^lstm_143/while/NoOp*
T0*
_output_shapes
: 2
lstm_143/while/Identity_1?
lstm_143/while/Identity_2Identitylstm_143/while/add:z:0^lstm_143/while/NoOp*
T0*
_output_shapes
: 2
lstm_143/while/Identity_2?
lstm_143/while/Identity_3IdentityClstm_143/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_143/while/NoOp*
T0*
_output_shapes
: 2
lstm_143/while/Identity_3?
lstm_143/while/Identity_4Identity&lstm_143/while/lstm_cell_146/mul_2:z:0^lstm_143/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_143/while/Identity_4?
lstm_143/while/Identity_5Identity&lstm_143/while/lstm_cell_146/add_1:z:0^lstm_143/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_143/while/Identity_5?
lstm_143/while/NoOpNoOp4^lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp3^lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp5^lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_143/while/NoOp";
lstm_143_while_identity lstm_143/while/Identity:output:0"?
lstm_143_while_identity_1"lstm_143/while/Identity_1:output:0"?
lstm_143_while_identity_2"lstm_143/while/Identity_2:output:0"?
lstm_143_while_identity_3"lstm_143/while/Identity_3:output:0"?
lstm_143_while_identity_4"lstm_143/while/Identity_4:output:0"?
lstm_143_while_identity_5"lstm_143/while/Identity_5:output:0"T
'lstm_143_while_lstm_143_strided_slice_1)lstm_143_while_lstm_143_strided_slice_1_0"~
<lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource>lstm_143_while_lstm_cell_146_biasadd_readvariableop_resource_0"?
=lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource?lstm_143_while_lstm_cell_146_matmul_1_readvariableop_resource_0"|
;lstm_143_while_lstm_cell_146_matmul_readvariableop_resource=lstm_143_while_lstm_cell_146_matmul_readvariableop_resource_0"?
clstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensorelstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2j
3lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp3lstm_143/while/lstm_cell_146/BiasAdd/ReadVariableOp2h
2lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp2lstm_143/while/lstm_cell_146/MatMul/ReadVariableOp2l
4lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp4lstm_143/while/lstm_cell_146/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
/__inference_lstm_cell_146_layer_call_fn_2826764

inputs
states_0
states_1
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_28215042
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?L
?

lstm_141_while_body_2823894.
*lstm_141_while_lstm_141_while_loop_counter4
0lstm_141_while_lstm_141_while_maximum_iterations
lstm_141_while_placeholder 
lstm_141_while_placeholder_1 
lstm_141_while_placeholder_2 
lstm_141_while_placeholder_3-
)lstm_141_while_lstm_141_strided_slice_1_0i
elstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_141_while_lstm_cell_144_matmul_readvariableop_resource_0:	?R
?lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource_0:	 ?M
>lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource_0:	?
lstm_141_while_identity
lstm_141_while_identity_1
lstm_141_while_identity_2
lstm_141_while_identity_3
lstm_141_while_identity_4
lstm_141_while_identity_5+
'lstm_141_while_lstm_141_strided_slice_1g
clstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensorN
;lstm_141_while_lstm_cell_144_matmul_readvariableop_resource:	?P
=lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource:	 ?K
<lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource:	???3lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp?2lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp?4lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp?
@lstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@lstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shape?
2lstm_141/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensor_0lstm_141_while_placeholderIlstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype024
2lstm_141/while/TensorArrayV2Read/TensorListGetItem?
2lstm_141/while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp=lstm_141_while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype024
2lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp?
#lstm_141/while/lstm_cell_144/MatMulMatMul9lstm_141/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_141/while/lstm_cell_144/MatMul?
4lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp?lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype026
4lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp?
%lstm_141/while/lstm_cell_144/MatMul_1MatMullstm_141_while_placeholder_2<lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%lstm_141/while/lstm_cell_144/MatMul_1?
 lstm_141/while/lstm_cell_144/addAddV2-lstm_141/while/lstm_cell_144/MatMul:product:0/lstm_141/while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2"
 lstm_141/while/lstm_cell_144/add?
3lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp>lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype025
3lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp?
$lstm_141/while/lstm_cell_144/BiasAddBiasAdd$lstm_141/while/lstm_cell_144/add:z:0;lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$lstm_141/while/lstm_cell_144/BiasAdd?
,lstm_141/while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_141/while/lstm_cell_144/split/split_dim?
"lstm_141/while/lstm_cell_144/splitSplit5lstm_141/while/lstm_cell_144/split/split_dim:output:0-lstm_141/while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2$
"lstm_141/while/lstm_cell_144/split?
$lstm_141/while/lstm_cell_144/SigmoidSigmoid+lstm_141/while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_141/while/lstm_cell_144/Sigmoid?
&lstm_141/while/lstm_cell_144/Sigmoid_1Sigmoid+lstm_141/while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:????????? 2(
&lstm_141/while/lstm_cell_144/Sigmoid_1?
 lstm_141/while/lstm_cell_144/mulMul*lstm_141/while/lstm_cell_144/Sigmoid_1:y:0lstm_141_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_141/while/lstm_cell_144/mul?
!lstm_141/while/lstm_cell_144/ReluRelu+lstm_141/while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:????????? 2#
!lstm_141/while/lstm_cell_144/Relu?
"lstm_141/while/lstm_cell_144/mul_1Mul(lstm_141/while/lstm_cell_144/Sigmoid:y:0/lstm_141/while/lstm_cell_144/Relu:activations:0*
T0*'
_output_shapes
:????????? 2$
"lstm_141/while/lstm_cell_144/mul_1?
"lstm_141/while/lstm_cell_144/add_1AddV2$lstm_141/while/lstm_cell_144/mul:z:0&lstm_141/while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_141/while/lstm_cell_144/add_1?
&lstm_141/while/lstm_cell_144/Sigmoid_2Sigmoid+lstm_141/while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:????????? 2(
&lstm_141/while/lstm_cell_144/Sigmoid_2?
#lstm_141/while/lstm_cell_144/Relu_1Relu&lstm_141/while/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:????????? 2%
#lstm_141/while/lstm_cell_144/Relu_1?
"lstm_141/while/lstm_cell_144/mul_2Mul*lstm_141/while/lstm_cell_144/Sigmoid_2:y:01lstm_141/while/lstm_cell_144/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2$
"lstm_141/while/lstm_cell_144/mul_2?
3lstm_141/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_141_while_placeholder_1lstm_141_while_placeholder&lstm_141/while/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_141/while/TensorArrayV2Write/TensorListSetItemn
lstm_141/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_141/while/add/y?
lstm_141/while/addAddV2lstm_141_while_placeholderlstm_141/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_141/while/addr
lstm_141/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_141/while/add_1/y?
lstm_141/while/add_1AddV2*lstm_141_while_lstm_141_while_loop_counterlstm_141/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_141/while/add_1?
lstm_141/while/IdentityIdentitylstm_141/while/add_1:z:0^lstm_141/while/NoOp*
T0*
_output_shapes
: 2
lstm_141/while/Identity?
lstm_141/while/Identity_1Identity0lstm_141_while_lstm_141_while_maximum_iterations^lstm_141/while/NoOp*
T0*
_output_shapes
: 2
lstm_141/while/Identity_1?
lstm_141/while/Identity_2Identitylstm_141/while/add:z:0^lstm_141/while/NoOp*
T0*
_output_shapes
: 2
lstm_141/while/Identity_2?
lstm_141/while/Identity_3IdentityClstm_141/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_141/while/NoOp*
T0*
_output_shapes
: 2
lstm_141/while/Identity_3?
lstm_141/while/Identity_4Identity&lstm_141/while/lstm_cell_144/mul_2:z:0^lstm_141/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_141/while/Identity_4?
lstm_141/while/Identity_5Identity&lstm_141/while/lstm_cell_144/add_1:z:0^lstm_141/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_141/while/Identity_5?
lstm_141/while/NoOpNoOp4^lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp3^lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp5^lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_141/while/NoOp";
lstm_141_while_identity lstm_141/while/Identity:output:0"?
lstm_141_while_identity_1"lstm_141/while/Identity_1:output:0"?
lstm_141_while_identity_2"lstm_141/while/Identity_2:output:0"?
lstm_141_while_identity_3"lstm_141/while/Identity_3:output:0"?
lstm_141_while_identity_4"lstm_141/while/Identity_4:output:0"?
lstm_141_while_identity_5"lstm_141/while/Identity_5:output:0"T
'lstm_141_while_lstm_141_strided_slice_1)lstm_141_while_lstm_141_strided_slice_1_0"~
<lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource>lstm_141_while_lstm_cell_144_biasadd_readvariableop_resource_0"?
=lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource?lstm_141_while_lstm_cell_144_matmul_1_readvariableop_resource_0"|
;lstm_141_while_lstm_cell_144_matmul_readvariableop_resource=lstm_141_while_lstm_cell_144_matmul_readvariableop_resource_0"?
clstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensorelstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2j
3lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp3lstm_141/while/lstm_cell_144/BiasAdd/ReadVariableOp2h
2lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp2lstm_141/while/lstm_cell_144/MatMul/ReadVariableOp2l
4lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp4lstm_141/while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?\
?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2826031
inputs_0?
,lstm_cell_146_matmul_readvariableop_resource:	 ?A
.lstm_cell_146_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_146_biasadd_readvariableop_resource:	?
identity??$lstm_cell_146/BiasAdd/ReadVariableOp?#lstm_cell_146/MatMul/ReadVariableOp?%lstm_cell_146/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_146/MatMul/ReadVariableOp?
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/MatMul?
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_146/MatMul_1/ReadVariableOp?
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/MatMul_1?
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/add?
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_146/BiasAdd/ReadVariableOp?
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/BiasAdd?
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_146/split/split_dim?
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_146/split?
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid?
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid_1?
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul?
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Relu?
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul_1?
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/add_1?
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid_2
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Relu_1?
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2825947*
condR
while_cond_2825946*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?\
?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2822715

inputs?
,lstm_cell_146_matmul_readvariableop_resource:	 ?A
.lstm_cell_146_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_146_biasadd_readvariableop_resource:	?
identity??$lstm_cell_146/BiasAdd/ReadVariableOp?#lstm_cell_146/MatMul/ReadVariableOp?%lstm_cell_146/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_146/MatMul/ReadVariableOpReadVariableOp,lstm_cell_146_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_146/MatMul/ReadVariableOp?
lstm_cell_146/MatMulMatMulstrided_slice_2:output:0+lstm_cell_146/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/MatMul?
%lstm_cell_146/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_146_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_146/MatMul_1/ReadVariableOp?
lstm_cell_146/MatMul_1MatMulzeros:output:0-lstm_cell_146/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/MatMul_1?
lstm_cell_146/addAddV2lstm_cell_146/MatMul:product:0 lstm_cell_146/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/add?
$lstm_cell_146/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_146_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_146/BiasAdd/ReadVariableOp?
lstm_cell_146/BiasAddBiasAddlstm_cell_146/add:z:0,lstm_cell_146/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_146/BiasAdd?
lstm_cell_146/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_146/split/split_dim?
lstm_cell_146/splitSplit&lstm_cell_146/split/split_dim:output:0lstm_cell_146/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_146/split?
lstm_cell_146/SigmoidSigmoidlstm_cell_146/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid?
lstm_cell_146/Sigmoid_1Sigmoidlstm_cell_146/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid_1?
lstm_cell_146/mulMullstm_cell_146/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul?
lstm_cell_146/ReluRelulstm_cell_146/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Relu?
lstm_cell_146/mul_1Mullstm_cell_146/Sigmoid:y:0 lstm_cell_146/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul_1?
lstm_cell_146/add_1AddV2lstm_cell_146/mul:z:0lstm_cell_146/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/add_1?
lstm_cell_146/Sigmoid_2Sigmoidlstm_cell_146/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Sigmoid_2
lstm_cell_146/Relu_1Relulstm_cell_146/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/Relu_1?
lstm_cell_146/mul_2Mullstm_cell_146/Sigmoid_2:y:0"lstm_cell_146/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_146/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_146_matmul_readvariableop_resource.lstm_cell_146_matmul_1_readvariableop_resource-lstm_cell_146_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2822631*
condR
while_cond_2822630*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_146/BiasAdd/ReadVariableOp$^lstm_cell_146/MatMul/ReadVariableOp&^lstm_cell_146/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 2L
$lstm_cell_146/BiasAdd/ReadVariableOp$lstm_cell_146/BiasAdd/ReadVariableOp2J
#lstm_cell_146/MatMul/ReadVariableOp#lstm_cell_146/MatMul/ReadVariableOp2N
%lstm_cell_146/MatMul_1/ReadVariableOp%lstm_cell_146/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?\
?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2822911

inputs?
,lstm_cell_145_matmul_readvariableop_resource:	 ?A
.lstm_cell_145_matmul_1_readvariableop_resource:	 ?<
-lstm_cell_145_biasadd_readvariableop_resource:	?
identity??$lstm_cell_145/BiasAdd/ReadVariableOp?#lstm_cell_145/MatMul/ReadVariableOp?%lstm_cell_145/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_145/MatMul/ReadVariableOpReadVariableOp,lstm_cell_145_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_145/MatMul/ReadVariableOp?
lstm_cell_145/MatMulMatMulstrided_slice_2:output:0+lstm_cell_145/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/MatMul?
%lstm_cell_145/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_145_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_cell_145/MatMul_1/ReadVariableOp?
lstm_cell_145/MatMul_1MatMulzeros:output:0-lstm_cell_145/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/MatMul_1?
lstm_cell_145/addAddV2lstm_cell_145/MatMul:product:0 lstm_cell_145/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/add?
$lstm_cell_145/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_145_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_145/BiasAdd/ReadVariableOp?
lstm_cell_145/BiasAddBiasAddlstm_cell_145/add:z:0,lstm_cell_145/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_145/BiasAdd?
lstm_cell_145/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_145/split/split_dim?
lstm_cell_145/splitSplit&lstm_cell_145/split/split_dim:output:0lstm_cell_145/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_145/split?
lstm_cell_145/SigmoidSigmoidlstm_cell_145/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid?
lstm_cell_145/Sigmoid_1Sigmoidlstm_cell_145/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid_1?
lstm_cell_145/mulMullstm_cell_145/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul?
lstm_cell_145/ReluRelulstm_cell_145/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Relu?
lstm_cell_145/mul_1Mullstm_cell_145/Sigmoid:y:0 lstm_cell_145/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul_1?
lstm_cell_145/add_1AddV2lstm_cell_145/mul:z:0lstm_cell_145/mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/add_1?
lstm_cell_145/Sigmoid_2Sigmoidlstm_cell_145/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Sigmoid_2
lstm_cell_145/Relu_1Relulstm_cell_145/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/Relu_1?
lstm_cell_145/mul_2Mullstm_cell_145/Sigmoid_2:y:0"lstm_cell_145/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_145/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_145_matmul_readvariableop_resource.lstm_cell_145_matmul_1_readvariableop_resource-lstm_cell_145_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2822827*
condR
while_cond_2822826*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp%^lstm_cell_145/BiasAdd/ReadVariableOp$^lstm_cell_145/MatMul/ReadVariableOp&^lstm_cell_145/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 2L
$lstm_cell_145/BiasAdd/ReadVariableOp$lstm_cell_145/BiasAdd/ReadVariableOp2J
#lstm_cell_145/MatMul/ReadVariableOp#lstm_cell_145/MatMul/ReadVariableOp2N
%lstm_cell_145/MatMul_1/ReadVariableOp%lstm_cell_145/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
H__inference_dropout_207_layer_call_and_return_conditional_losses_2826441

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
*__inference_lstm_143_layer_call_fn_2826344
inputs_0
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_143_layer_call_and_return_conditional_losses_28214412
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
g
H__inference_dropout_204_layer_call_and_return_conditional_losses_2822940

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:????????? 2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:????????? 2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? :S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?+
?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2823287
lstm_141_input#
lstm_141_2823251:	?#
lstm_141_2823253:	 ?
lstm_141_2823255:	?#
lstm_142_2823259:	 ?#
lstm_142_2823261:	 ?
lstm_142_2823263:	?#
lstm_143_2823267:	 ?#
lstm_143_2823269:	 ?
lstm_143_2823271:	?#
dense_100_2823275:  
dense_100_2823277: #
dense_101_2823281: 
dense_101_2823283:
identity??!dense_100/StatefulPartitionedCall?!dense_101/StatefulPartitionedCall? lstm_141/StatefulPartitionedCall? lstm_142/StatefulPartitionedCall? lstm_143/StatefulPartitionedCall?
 lstm_141/StatefulPartitionedCallStatefulPartitionedCalllstm_141_inputlstm_141_2823251lstm_141_2823253lstm_141_2823255*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_141_layer_call_and_return_conditional_losses_28220702"
 lstm_141/StatefulPartitionedCall?
dropout_204/PartitionedCallPartitionedCall)lstm_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_204_layer_call_and_return_conditional_losses_28220832
dropout_204/PartitionedCall?
 lstm_142/StatefulPartitionedCallStatefulPartitionedCall$dropout_204/PartitionedCall:output:0lstm_142_2823259lstm_142_2823261lstm_142_2823263*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_142_layer_call_and_return_conditional_losses_28222352"
 lstm_142/StatefulPartitionedCall?
dropout_205/PartitionedCallPartitionedCall)lstm_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_205_layer_call_and_return_conditional_losses_28222482
dropout_205/PartitionedCall?
 lstm_143/StatefulPartitionedCallStatefulPartitionedCall$dropout_205/PartitionedCall:output:0lstm_143_2823267lstm_143_2823269lstm_143_2823271*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_143_layer_call_and_return_conditional_losses_28224002"
 lstm_143/StatefulPartitionedCall?
dropout_206/PartitionedCallPartitionedCall)lstm_143/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_206_layer_call_and_return_conditional_losses_28224132
dropout_206/PartitionedCall?
!dense_100/StatefulPartitionedCallStatefulPartitionedCall$dropout_206/PartitionedCall:output:0dense_100_2823275dense_100_2823277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_28224262#
!dense_100/StatefulPartitionedCall?
dropout_207/PartitionedCallPartitionedCall*dense_100/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_207_layer_call_and_return_conditional_losses_28224372
dropout_207/PartitionedCall?
!dense_101/StatefulPartitionedCallStatefulPartitionedCall$dropout_207/PartitionedCall:output:0dense_101_2823281dense_101_2823283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_101_layer_call_and_return_conditional_losses_28224492#
!dense_101/StatefulPartitionedCall?
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_100/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall!^lstm_141/StatefulPartitionedCall!^lstm_142/StatefulPartitionedCall!^lstm_143/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 lstm_141/StatefulPartitionedCall lstm_141/StatefulPartitionedCall2D
 lstm_142/StatefulPartitionedCall lstm_142/StatefulPartitionedCall2D
 lstm_143/StatefulPartitionedCall lstm_143/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_141_input
??
? 
#__inference__traced_restore_2827085
file_prefix3
!assignvariableop_dense_100_kernel:  /
!assignvariableop_1_dense_100_bias: 5
#assignvariableop_2_dense_101_kernel: /
!assignvariableop_3_dense_101_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: C
0assignvariableop_9_lstm_141_lstm_cell_144_kernel:	?N
;assignvariableop_10_lstm_141_lstm_cell_144_recurrent_kernel:	 ?>
/assignvariableop_11_lstm_141_lstm_cell_144_bias:	?D
1assignvariableop_12_lstm_142_lstm_cell_145_kernel:	 ?N
;assignvariableop_13_lstm_142_lstm_cell_145_recurrent_kernel:	 ?>
/assignvariableop_14_lstm_142_lstm_cell_145_bias:	?D
1assignvariableop_15_lstm_143_lstm_cell_146_kernel:	 ?N
;assignvariableop_16_lstm_143_lstm_cell_146_recurrent_kernel:	 ?>
/assignvariableop_17_lstm_143_lstm_cell_146_bias:	?#
assignvariableop_18_total: #
assignvariableop_19_count: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: =
+assignvariableop_22_adam_dense_100_kernel_m:  7
)assignvariableop_23_adam_dense_100_bias_m: =
+assignvariableop_24_adam_dense_101_kernel_m: 7
)assignvariableop_25_adam_dense_101_bias_m:K
8assignvariableop_26_adam_lstm_141_lstm_cell_144_kernel_m:	?U
Bassignvariableop_27_adam_lstm_141_lstm_cell_144_recurrent_kernel_m:	 ?E
6assignvariableop_28_adam_lstm_141_lstm_cell_144_bias_m:	?K
8assignvariableop_29_adam_lstm_142_lstm_cell_145_kernel_m:	 ?U
Bassignvariableop_30_adam_lstm_142_lstm_cell_145_recurrent_kernel_m:	 ?E
6assignvariableop_31_adam_lstm_142_lstm_cell_145_bias_m:	?K
8assignvariableop_32_adam_lstm_143_lstm_cell_146_kernel_m:	 ?U
Bassignvariableop_33_adam_lstm_143_lstm_cell_146_recurrent_kernel_m:	 ?E
6assignvariableop_34_adam_lstm_143_lstm_cell_146_bias_m:	?=
+assignvariableop_35_adam_dense_100_kernel_v:  7
)assignvariableop_36_adam_dense_100_bias_v: =
+assignvariableop_37_adam_dense_101_kernel_v: 7
)assignvariableop_38_adam_dense_101_bias_v:K
8assignvariableop_39_adam_lstm_141_lstm_cell_144_kernel_v:	?U
Bassignvariableop_40_adam_lstm_141_lstm_cell_144_recurrent_kernel_v:	 ?E
6assignvariableop_41_adam_lstm_141_lstm_cell_144_bias_v:	?K
8assignvariableop_42_adam_lstm_142_lstm_cell_145_kernel_v:	 ?U
Bassignvariableop_43_adam_lstm_142_lstm_cell_145_recurrent_kernel_v:	 ?E
6assignvariableop_44_adam_lstm_142_lstm_cell_145_bias_v:	?K
8assignvariableop_45_adam_lstm_143_lstm_cell_146_kernel_v:	 ?U
Bassignvariableop_46_adam_lstm_143_lstm_cell_146_recurrent_kernel_v:	 ?E
6assignvariableop_47_adam_lstm_143_lstm_cell_146_bias_v:	?
identity_49??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*?
value?B?1B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes5
321	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_dense_100_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_100_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_101_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_101_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp0assignvariableop_9_lstm_141_lstm_cell_144_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp;assignvariableop_10_lstm_141_lstm_cell_144_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_141_lstm_cell_144_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp1assignvariableop_12_lstm_142_lstm_cell_145_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp;assignvariableop_13_lstm_142_lstm_cell_145_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp/assignvariableop_14_lstm_142_lstm_cell_145_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp1assignvariableop_15_lstm_143_lstm_cell_146_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp;assignvariableop_16_lstm_143_lstm_cell_146_recurrent_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp/assignvariableop_17_lstm_143_lstm_cell_146_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_dense_100_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_100_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_dense_101_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_101_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_141_lstm_cell_144_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_141_lstm_cell_144_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_141_lstm_cell_144_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp8assignvariableop_29_adam_lstm_142_lstm_cell_145_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpBassignvariableop_30_adam_lstm_142_lstm_cell_145_recurrent_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_142_lstm_cell_145_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp8assignvariableop_32_adam_lstm_143_lstm_cell_146_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpBassignvariableop_33_adam_lstm_143_lstm_cell_146_recurrent_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_143_lstm_cell_146_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_dense_100_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_100_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_101_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_101_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp8assignvariableop_39_adam_lstm_141_lstm_cell_144_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpBassignvariableop_40_adam_lstm_141_lstm_cell_144_recurrent_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp6assignvariableop_41_adam_lstm_141_lstm_cell_144_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp8assignvariableop_42_adam_lstm_142_lstm_cell_145_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpBassignvariableop_43_adam_lstm_142_lstm_cell_145_recurrent_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_lstm_142_lstm_cell_145_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp8assignvariableop_45_adam_lstm_143_lstm_cell_146_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOpBassignvariableop_46_adam_lstm_143_lstm_cell_146_recurrent_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_lstm_143_lstm_cell_146_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_479
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_48Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_48f
Identity_49IdentityIdentity_48:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_49?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_49Identity_49:output:0*u
_input_shapesd
b: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
/__inference_sequential_37_layer_call_fn_2823248
lstm_141_input
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2:	 ?
	unknown_3:	 ?
	unknown_4:	?
	unknown_5:	 ?
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_141_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_37_layer_call_and_return_conditional_losses_28231882
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_141_input
?

?
lstm_141_while_cond_2823431.
*lstm_141_while_lstm_141_while_loop_counter4
0lstm_141_while_lstm_141_while_maximum_iterations
lstm_141_while_placeholder 
lstm_141_while_placeholder_1 
lstm_141_while_placeholder_2 
lstm_141_while_placeholder_30
,lstm_141_while_less_lstm_141_strided_slice_1G
Clstm_141_while_lstm_141_while_cond_2823431___redundant_placeholder0G
Clstm_141_while_lstm_141_while_cond_2823431___redundant_placeholder1G
Clstm_141_while_lstm_141_while_cond_2823431___redundant_placeholder2G
Clstm_141_while_lstm_141_while_cond_2823431___redundant_placeholder3
lstm_141_while_identity
?
lstm_141/while/LessLesslstm_141_while_placeholder,lstm_141_while_less_lstm_141_strided_slice_1*
T0*
_output_shapes
: 2
lstm_141/while/Lessx
lstm_141/while/IdentityIdentitylstm_141/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_141/while/Identity";
lstm_141_while_identity lstm_141/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?&
?
while_body_2820322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_144_2820346_0:	?0
while_lstm_cell_144_2820348_0:	 ?,
while_lstm_cell_144_2820350_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_144_2820346:	?.
while_lstm_cell_144_2820348:	 ?*
while_lstm_cell_144_2820350:	???+while/lstm_cell_144/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_144_2820346_0while_lstm_cell_144_2820348_0while_lstm_cell_144_2820350_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_28202442-
+while/lstm_cell_144/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_144/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_144/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_144/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp,^while/lstm_cell_144/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_144_2820346while_lstm_cell_144_2820346_0"<
while_lstm_cell_144_2820348while_lstm_cell_144_2820348_0"<
while_lstm_cell_144_2820350while_lstm_cell_144_2820350_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2Z
+while/lstm_cell_144/StatefulPartitionedCall+while/lstm_cell_144/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_dense_100_layer_call_and_return_conditional_losses_2822426

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_2823365
lstm_141_input
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2:	 ?
	unknown_3:	 ?
	unknown_4:	?
	unknown_5:	 ?
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_141_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_28200232
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_141_input
?
I
-__inference_dropout_205_layer_call_fn_2825724

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_205_layer_call_and_return_conditional_losses_28222482
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? :S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
while_cond_2822150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2822150___redundant_placeholder05
1while_while_cond_2822150___redundant_placeholder15
1while_while_cond_2822150___redundant_placeholder25
1while_while_cond_2822150___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?&
?
while_body_2821372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_146_2821396_0:	 ?0
while_lstm_cell_146_2821398_0:	 ?,
while_lstm_cell_146_2821400_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_146_2821396:	 ?.
while_lstm_cell_146_2821398:	 ?*
while_lstm_cell_146_2821400:	???+while/lstm_cell_146/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_146/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_146_2821396_0while_lstm_cell_146_2821398_0while_lstm_cell_146_2821400_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_28213582-
+while/lstm_cell_146/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_146/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_146/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_146/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp,^while/lstm_cell_146/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_146_2821396while_lstm_cell_146_2821396_0"<
while_lstm_cell_146_2821398while_lstm_cell_146_2821398_0"<
while_lstm_cell_146_2821400while_lstm_cell_146_2821400_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2Z
+while/lstm_cell_146/StatefulPartitionedCall+while/lstm_cell_146/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2825271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2825271___redundant_placeholder05
1while_while_cond_2825271___redundant_placeholder15
1while_while_cond_2825271___redundant_placeholder25
1while_while_cond_2825271___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?+
?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2822456

inputs#
lstm_141_2822071:	?#
lstm_141_2822073:	 ?
lstm_141_2822075:	?#
lstm_142_2822236:	 ?#
lstm_142_2822238:	 ?
lstm_142_2822240:	?#
lstm_143_2822401:	 ?#
lstm_143_2822403:	 ?
lstm_143_2822405:	?#
dense_100_2822427:  
dense_100_2822429: #
dense_101_2822450: 
dense_101_2822452:
identity??!dense_100/StatefulPartitionedCall?!dense_101/StatefulPartitionedCall? lstm_141/StatefulPartitionedCall? lstm_142/StatefulPartitionedCall? lstm_143/StatefulPartitionedCall?
 lstm_141/StatefulPartitionedCallStatefulPartitionedCallinputslstm_141_2822071lstm_141_2822073lstm_141_2822075*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_141_layer_call_and_return_conditional_losses_28220702"
 lstm_141/StatefulPartitionedCall?
dropout_204/PartitionedCallPartitionedCall)lstm_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_204_layer_call_and_return_conditional_losses_28220832
dropout_204/PartitionedCall?
 lstm_142/StatefulPartitionedCallStatefulPartitionedCall$dropout_204/PartitionedCall:output:0lstm_142_2822236lstm_142_2822238lstm_142_2822240*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_142_layer_call_and_return_conditional_losses_28222352"
 lstm_142/StatefulPartitionedCall?
dropout_205/PartitionedCallPartitionedCall)lstm_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_205_layer_call_and_return_conditional_losses_28222482
dropout_205/PartitionedCall?
 lstm_143/StatefulPartitionedCallStatefulPartitionedCall$dropout_205/PartitionedCall:output:0lstm_143_2822401lstm_143_2822403lstm_143_2822405*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_143_layer_call_and_return_conditional_losses_28224002"
 lstm_143/StatefulPartitionedCall?
dropout_206/PartitionedCallPartitionedCall)lstm_143/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_206_layer_call_and_return_conditional_losses_28224132
dropout_206/PartitionedCall?
!dense_100/StatefulPartitionedCallStatefulPartitionedCall$dropout_206/PartitionedCall:output:0dense_100_2822427dense_100_2822429*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_28224262#
!dense_100/StatefulPartitionedCall?
dropout_207/PartitionedCallPartitionedCall*dense_100/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_207_layer_call_and_return_conditional_losses_28224372
dropout_207/PartitionedCall?
!dense_101/StatefulPartitionedCallStatefulPartitionedCall$dropout_207/PartitionedCall:output:0dense_101_2822450dense_101_2822452*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_101_layer_call_and_return_conditional_losses_28224492#
!dense_101/StatefulPartitionedCall?
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_100/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall!^lstm_141/StatefulPartitionedCall!^lstm_142/StatefulPartitionedCall!^lstm_143/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 lstm_141/StatefulPartitionedCall lstm_141/StatefulPartitionedCall2D
 lstm_142/StatefulPartitionedCall lstm_142/StatefulPartitionedCall2D
 lstm_143/StatefulPartitionedCall lstm_143/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_141_input;
 serving_default_lstm_141_input:0?????????=
	dense_1010
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"
_tf_keras_sequential
?
cell

state_spec
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_rnn_layer
?
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
cell

state_spec
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_rnn_layer
?
 regularization_losses
!	variables
"trainable_variables
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
$cell
%
state_spec
&regularization_losses
'	variables
(trainable_variables
)	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_rnn_layer
?
*regularization_losses
+	variables
,trainable_variables
-	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
4regularization_losses
5	variables
6trainable_variables
7	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

8kernel
9bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
>iter

?beta_1

@beta_2
	Adecay
Blearning_rate.m?/m?8m?9m?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?.v?/v?8v?9v?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?"
	optimizer
 "
trackable_list_wrapper
~
C0
D1
E2
F3
G4
H5
I6
J7
K8
.9
/10
811
912"
trackable_list_wrapper
~
C0
D1
E2
F3
G4
H5
I6
J7
K8
.9
/10
811
912"
trackable_list_wrapper
?
regularization_losses
	variables
Lmetrics
Mnon_trainable_variables
Nlayer_metrics
trainable_variables
Olayer_regularization_losses

Players
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
Q
state_size

Ckernel
Drecurrent_kernel
Ebias
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
?
regularization_losses
	variables
Vmetrics

Wstates
Xnon_trainable_variables
Ylayer_metrics
trainable_variables
Zlayer_regularization_losses

[layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
	variables
\metrics
]non_trainable_variables
trainable_variables
^layer_regularization_losses
_layer_metrics

`layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
a
state_size

Fkernel
Grecurrent_kernel
Hbias
bregularization_losses
c	variables
dtrainable_variables
e	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
?
regularization_losses
	variables
fmetrics

gstates
hnon_trainable_variables
ilayer_metrics
trainable_variables
jlayer_regularization_losses

klayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 regularization_losses
!	variables
lmetrics
mnon_trainable_variables
"trainable_variables
nlayer_regularization_losses
olayer_metrics

players
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
q
state_size

Ikernel
Jrecurrent_kernel
Kbias
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
?
&regularization_losses
'	variables
vmetrics

wstates
xnon_trainable_variables
ylayer_metrics
(trainable_variables
zlayer_regularization_losses

{layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
*regularization_losses
+	variables
|metrics
}non_trainable_variables
,trainable_variables
~layer_regularization_losses
layer_metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
":   2dense_100/kernel
: 2dense_100/bias
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
?
0regularization_losses
1	variables
?metrics
?non_trainable_variables
2trainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
4regularization_losses
5	variables
?metrics
?non_trainable_variables
6trainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
":  2dense_101/kernel
:2dense_101/bias
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
?
:regularization_losses
;	variables
?metrics
?non_trainable_variables
<trainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	?2lstm_141/lstm_cell_144/kernel
::8	 ?2'lstm_141/lstm_cell_144/recurrent_kernel
*:(?2lstm_141/lstm_cell_144/bias
0:.	 ?2lstm_142/lstm_cell_145/kernel
::8	 ?2'lstm_142/lstm_cell_145/recurrent_kernel
*:(?2lstm_142/lstm_cell_145/bias
0:.	 ?2lstm_143/lstm_cell_146/kernel
::8	 ?2'lstm_143/lstm_cell_146/recurrent_kernel
*:(?2lstm_143/lstm_cell_146/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
?
Rregularization_losses
S	variables
?metrics
?non_trainable_variables
Ttrainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
?
bregularization_losses
c	variables
?metrics
?non_trainable_variables
dtrainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
?
rregularization_losses
s	variables
?metrics
?non_trainable_variables
ttrainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
$0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
':%  2Adam/dense_100/kernel/m
!: 2Adam/dense_100/bias/m
':% 2Adam/dense_101/kernel/m
!:2Adam/dense_101/bias/m
5:3	?2$Adam/lstm_141/lstm_cell_144/kernel/m
?:=	 ?2.Adam/lstm_141/lstm_cell_144/recurrent_kernel/m
/:-?2"Adam/lstm_141/lstm_cell_144/bias/m
5:3	 ?2$Adam/lstm_142/lstm_cell_145/kernel/m
?:=	 ?2.Adam/lstm_142/lstm_cell_145/recurrent_kernel/m
/:-?2"Adam/lstm_142/lstm_cell_145/bias/m
5:3	 ?2$Adam/lstm_143/lstm_cell_146/kernel/m
?:=	 ?2.Adam/lstm_143/lstm_cell_146/recurrent_kernel/m
/:-?2"Adam/lstm_143/lstm_cell_146/bias/m
':%  2Adam/dense_100/kernel/v
!: 2Adam/dense_100/bias/v
':% 2Adam/dense_101/kernel/v
!:2Adam/dense_101/bias/v
5:3	?2$Adam/lstm_141/lstm_cell_144/kernel/v
?:=	 ?2.Adam/lstm_141/lstm_cell_144/recurrent_kernel/v
/:-?2"Adam/lstm_141/lstm_cell_144/bias/v
5:3	 ?2$Adam/lstm_142/lstm_cell_145/kernel/v
?:=	 ?2.Adam/lstm_142/lstm_cell_145/recurrent_kernel/v
/:-?2"Adam/lstm_142/lstm_cell_145/bias/v
5:3	 ?2$Adam/lstm_143/lstm_cell_146/kernel/v
?:=	 ?2.Adam/lstm_143/lstm_cell_146/recurrent_kernel/v
/:-?2"Adam/lstm_143/lstm_cell_146/bias/v
?2?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2823827
J__inference_sequential_37_layer_call_and_return_conditional_losses_2824317
J__inference_sequential_37_layer_call_and_return_conditional_losses_2823287
J__inference_sequential_37_layer_call_and_return_conditional_losses_2823326?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_2820023lstm_141_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_sequential_37_layer_call_fn_2822485
/__inference_sequential_37_layer_call_fn_2824348
/__inference_sequential_37_layer_call_fn_2824379
/__inference_sequential_37_layer_call_fn_2823248?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2824530
E__inference_lstm_141_layer_call_and_return_conditional_losses_2824681
E__inference_lstm_141_layer_call_and_return_conditional_losses_2824832
E__inference_lstm_141_layer_call_and_return_conditional_losses_2824983?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_lstm_141_layer_call_fn_2824994
*__inference_lstm_141_layer_call_fn_2825005
*__inference_lstm_141_layer_call_fn_2825016
*__inference_lstm_141_layer_call_fn_2825027?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_dropout_204_layer_call_and_return_conditional_losses_2825032
H__inference_dropout_204_layer_call_and_return_conditional_losses_2825044?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_dropout_204_layer_call_fn_2825049
-__inference_dropout_204_layer_call_fn_2825054?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2825205
E__inference_lstm_142_layer_call_and_return_conditional_losses_2825356
E__inference_lstm_142_layer_call_and_return_conditional_losses_2825507
E__inference_lstm_142_layer_call_and_return_conditional_losses_2825658?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_lstm_142_layer_call_fn_2825669
*__inference_lstm_142_layer_call_fn_2825680
*__inference_lstm_142_layer_call_fn_2825691
*__inference_lstm_142_layer_call_fn_2825702?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_dropout_205_layer_call_and_return_conditional_losses_2825707
H__inference_dropout_205_layer_call_and_return_conditional_losses_2825719?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_dropout_205_layer_call_fn_2825724
-__inference_dropout_205_layer_call_fn_2825729?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2825880
E__inference_lstm_143_layer_call_and_return_conditional_losses_2826031
E__inference_lstm_143_layer_call_and_return_conditional_losses_2826182
E__inference_lstm_143_layer_call_and_return_conditional_losses_2826333?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_lstm_143_layer_call_fn_2826344
*__inference_lstm_143_layer_call_fn_2826355
*__inference_lstm_143_layer_call_fn_2826366
*__inference_lstm_143_layer_call_fn_2826377?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_dropout_206_layer_call_and_return_conditional_losses_2826382
H__inference_dropout_206_layer_call_and_return_conditional_losses_2826394?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_dropout_206_layer_call_fn_2826399
-__inference_dropout_206_layer_call_fn_2826404?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dense_100_layer_call_and_return_conditional_losses_2826415?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_100_layer_call_fn_2826424?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dropout_207_layer_call_and_return_conditional_losses_2826429
H__inference_dropout_207_layer_call_and_return_conditional_losses_2826441?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_dropout_207_layer_call_fn_2826446
-__inference_dropout_207_layer_call_fn_2826451?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dense_101_layer_call_and_return_conditional_losses_2826461?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_101_layer_call_fn_2826470?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_2823365lstm_141_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2826502
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2826534?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_lstm_cell_144_layer_call_fn_2826551
/__inference_lstm_cell_144_layer_call_fn_2826568?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2826600
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2826632?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_lstm_cell_145_layer_call_fn_2826649
/__inference_lstm_cell_145_layer_call_fn_2826666?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2826698
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2826730?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_lstm_cell_146_layer_call_fn_2826747
/__inference_lstm_cell_146_layer_call_fn_2826764?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
"__inference__wrapped_model_2820023?CDEFGHIJK./89;?8
1?.
,?)
lstm_141_input?????????
? "5?2
0
	dense_101#? 
	dense_101??????????
F__inference_dense_100_layer_call_and_return_conditional_losses_2826415\.//?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? ~
+__inference_dense_100_layer_call_fn_2826424O.//?,
%?"
 ?
inputs????????? 
? "?????????? ?
F__inference_dense_101_layer_call_and_return_conditional_losses_2826461\89/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ~
+__inference_dense_101_layer_call_fn_2826470O89/?,
%?"
 ?
inputs????????? 
? "???????????
H__inference_dropout_204_layer_call_and_return_conditional_losses_2825032d7?4
-?*
$?!
inputs????????? 
p 
? ")?&
?
0????????? 
? ?
H__inference_dropout_204_layer_call_and_return_conditional_losses_2825044d7?4
-?*
$?!
inputs????????? 
p
? ")?&
?
0????????? 
? ?
-__inference_dropout_204_layer_call_fn_2825049W7?4
-?*
$?!
inputs????????? 
p 
? "?????????? ?
-__inference_dropout_204_layer_call_fn_2825054W7?4
-?*
$?!
inputs????????? 
p
? "?????????? ?
H__inference_dropout_205_layer_call_and_return_conditional_losses_2825707d7?4
-?*
$?!
inputs????????? 
p 
? ")?&
?
0????????? 
? ?
H__inference_dropout_205_layer_call_and_return_conditional_losses_2825719d7?4
-?*
$?!
inputs????????? 
p
? ")?&
?
0????????? 
? ?
-__inference_dropout_205_layer_call_fn_2825724W7?4
-?*
$?!
inputs????????? 
p 
? "?????????? ?
-__inference_dropout_205_layer_call_fn_2825729W7?4
-?*
$?!
inputs????????? 
p
? "?????????? ?
H__inference_dropout_206_layer_call_and_return_conditional_losses_2826382\3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? ?
H__inference_dropout_206_layer_call_and_return_conditional_losses_2826394\3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? ?
-__inference_dropout_206_layer_call_fn_2826399O3?0
)?&
 ?
inputs????????? 
p 
? "?????????? ?
-__inference_dropout_206_layer_call_fn_2826404O3?0
)?&
 ?
inputs????????? 
p
? "?????????? ?
H__inference_dropout_207_layer_call_and_return_conditional_losses_2826429\3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? ?
H__inference_dropout_207_layer_call_and_return_conditional_losses_2826441\3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? ?
-__inference_dropout_207_layer_call_fn_2826446O3?0
)?&
 ?
inputs????????? 
p 
? "?????????? ?
-__inference_dropout_207_layer_call_fn_2826451O3?0
)?&
 ?
inputs????????? 
p
? "?????????? ?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2824530?CDEO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "2?/
(?%
0?????????????????? 
? ?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2824681?CDEO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "2?/
(?%
0?????????????????? 
? ?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2824832qCDE??<
5?2
$?!
inputs?????????

 
p 

 
? ")?&
?
0????????? 
? ?
E__inference_lstm_141_layer_call_and_return_conditional_losses_2824983qCDE??<
5?2
$?!
inputs?????????

 
p

 
? ")?&
?
0????????? 
? ?
*__inference_lstm_141_layer_call_fn_2824994}CDEO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"?????????????????? ?
*__inference_lstm_141_layer_call_fn_2825005}CDEO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"?????????????????? ?
*__inference_lstm_141_layer_call_fn_2825016dCDE??<
5?2
$?!
inputs?????????

 
p 

 
? "?????????? ?
*__inference_lstm_141_layer_call_fn_2825027dCDE??<
5?2
$?!
inputs?????????

 
p

 
? "?????????? ?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2825205?FGHO?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p 

 
? "2?/
(?%
0?????????????????? 
? ?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2825356?FGHO?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p

 
? "2?/
(?%
0?????????????????? 
? ?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2825507qFGH??<
5?2
$?!
inputs????????? 

 
p 

 
? ")?&
?
0????????? 
? ?
E__inference_lstm_142_layer_call_and_return_conditional_losses_2825658qFGH??<
5?2
$?!
inputs????????? 

 
p

 
? ")?&
?
0????????? 
? ?
*__inference_lstm_142_layer_call_fn_2825669}FGHO?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p 

 
? "%?"?????????????????? ?
*__inference_lstm_142_layer_call_fn_2825680}FGHO?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p

 
? "%?"?????????????????? ?
*__inference_lstm_142_layer_call_fn_2825691dFGH??<
5?2
$?!
inputs????????? 

 
p 

 
? "?????????? ?
*__inference_lstm_142_layer_call_fn_2825702dFGH??<
5?2
$?!
inputs????????? 

 
p

 
? "?????????? ?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2825880}IJKO?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p 

 
? "%?"
?
0????????? 
? ?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2826031}IJKO?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p

 
? "%?"
?
0????????? 
? ?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2826182mIJK??<
5?2
$?!
inputs????????? 

 
p 

 
? "%?"
?
0????????? 
? ?
E__inference_lstm_143_layer_call_and_return_conditional_losses_2826333mIJK??<
5?2
$?!
inputs????????? 

 
p

 
? "%?"
?
0????????? 
? ?
*__inference_lstm_143_layer_call_fn_2826344pIJKO?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p 

 
? "?????????? ?
*__inference_lstm_143_layer_call_fn_2826355pIJKO?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p

 
? "?????????? ?
*__inference_lstm_143_layer_call_fn_2826366`IJK??<
5?2
$?!
inputs????????? 

 
p 

 
? "?????????? ?
*__inference_lstm_143_layer_call_fn_2826377`IJK??<
5?2
$?!
inputs????????? 

 
p

 
? "?????????? ?
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2826502?CDE??}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
J__inference_lstm_cell_144_layer_call_and_return_conditional_losses_2826534?CDE??}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
/__inference_lstm_cell_144_layer_call_fn_2826551?CDE??}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
/__inference_lstm_cell_144_layer_call_fn_2826568?CDE??}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2826600?FGH??}
v?s
 ?
inputs????????? 
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
J__inference_lstm_cell_145_layer_call_and_return_conditional_losses_2826632?FGH??}
v?s
 ?
inputs????????? 
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
/__inference_lstm_cell_145_layer_call_fn_2826649?FGH??}
v?s
 ?
inputs????????? 
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
/__inference_lstm_cell_145_layer_call_fn_2826666?FGH??}
v?s
 ?
inputs????????? 
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2826698?IJK??}
v?s
 ?
inputs????????? 
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
J__inference_lstm_cell_146_layer_call_and_return_conditional_losses_2826730?IJK??}
v?s
 ?
inputs????????? 
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
/__inference_lstm_cell_146_layer_call_fn_2826747?IJK??}
v?s
 ?
inputs????????? 
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
/__inference_lstm_cell_146_layer_call_fn_2826764?IJK??}
v?s
 ?
inputs????????? 
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2823287{CDEFGHIJK./89C?@
9?6
,?)
lstm_141_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2823326{CDEFGHIJK./89C?@
9?6
,?)
lstm_141_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2823827sCDEFGHIJK./89;?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2824317sCDEFGHIJK./89;?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????
? ?
/__inference_sequential_37_layer_call_fn_2822485nCDEFGHIJK./89C?@
9?6
,?)
lstm_141_input?????????
p 

 
? "???????????
/__inference_sequential_37_layer_call_fn_2823248nCDEFGHIJK./89C?@
9?6
,?)
lstm_141_input?????????
p

 
? "???????????
/__inference_sequential_37_layer_call_fn_2824348fCDEFGHIJK./89;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_37_layer_call_fn_2824379fCDEFGHIJK./89;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2823365?CDEFGHIJK./89M?J
? 
C?@
>
lstm_141_input,?)
lstm_141_input?????????"5?2
0
	dense_101#? 
	dense_101?????????