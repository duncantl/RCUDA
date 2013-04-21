setClass('CUipcMem_flags', representation(names = 'character'), contains = 'EnumValue')
CUipcMem_flagsValues = EnumDef('CUipcMem_flags', structure(as.integer(c(1)),
names = c("CU_IPC_MEM_LAZY_ENABLE_PEER_ACCESS")))


setAs('numeric', 'CUipcMem_flags', function(from)  asEnumValue(from, CUipcMem_flagsValues, 'CUipcMem_flags', prefix = "CU_IPC_MEM_LAZY_ENABLE_PEER_ACCESS"))
setAs('character', 'CUipcMem_flags', function(from)  asEnumValue(from, CUipcMem_flagsValues, 'CUipcMem_flags', prefix = "CU_IPC_MEM_LAZY_ENABLE_PEER_ACCESS"))
setAs('integer', 'CUipcMem_flags', function(from)  asEnumValue(from, CUipcMem_flagsValues, 'CUipcMem_flags', prefix = "CU_IPC_MEM_LAZY_ENABLE_PEER_ACCESS"))


CU_IPC_MEM_LAZY_ENABLE_PEER_ACCESS <- GenericEnumValue('CU_IPC_MEM_LAZY_ENABLE_PEER_ACCESS', 1, 'CUipcMem_flags')

#####################
setClass('CUctx_flags', representation(names = 'character'), contains = 'BitwiseValue')
CUctx_flagsValues = BitwiseValue(structure(as.integer(c(0,
1,
2,
4,
4,
7,
8,
16,
31)),
names = c("CU_CTX_SCHED_AUTO",
"CU_CTX_SCHED_SPIN",
"CU_CTX_SCHED_YIELD",
"CU_CTX_SCHED_BLOCKING_SYNC",
"CU_CTX_BLOCKING_SYNC",
"CU_CTX_SCHED_MASK",
"CU_CTX_MAP_HOST",
"CU_CTX_LMEM_RESIZE_TO_MAX",
"CU_CTX_FLAGS_MASK")), class ='CUctx_flags')


setAs('numeric', 'CUctx_flags', function(from)  asBitwiseValue(from, CUctx_flagsValues, 'CUctx_flags', prefix = "CU_CTX_"))
setAs('character', 'CUctx_flags', function(from)  asBitwiseValue(from, CUctx_flagsValues, 'CUctx_flags', prefix = "CU_CTX_"))
setAs('integer', 'CUctx_flags', function(from)  asBitwiseValue(from, CUctx_flagsValues, 'CUctx_flags', prefix = "CU_CTX_"))


CU_CTX_SCHED_AUTO <- BitwiseValue(0, 'CU_CTX_SCHED_AUTO', class = 'CUctx_flags')
CU_CTX_SCHED_SPIN <- BitwiseValue(1, 'CU_CTX_SCHED_SPIN', class = 'CUctx_flags')
CU_CTX_SCHED_YIELD <- BitwiseValue(2, 'CU_CTX_SCHED_YIELD', class = 'CUctx_flags')
CU_CTX_SCHED_BLOCKING_SYNC <- BitwiseValue(4, 'CU_CTX_SCHED_BLOCKING_SYNC', class = 'CUctx_flags')
CU_CTX_BLOCKING_SYNC <- BitwiseValue(4, 'CU_CTX_BLOCKING_SYNC', class = 'CUctx_flags')
CU_CTX_SCHED_MASK <- BitwiseValue(7, 'CU_CTX_SCHED_MASK', class = 'CUctx_flags')
CU_CTX_MAP_HOST <- BitwiseValue(8, 'CU_CTX_MAP_HOST', class = 'CUctx_flags')
CU_CTX_LMEM_RESIZE_TO_MAX <- BitwiseValue(16, 'CU_CTX_LMEM_RESIZE_TO_MAX', class = 'CUctx_flags')
CU_CTX_FLAGS_MASK <- BitwiseValue(31, 'CU_CTX_FLAGS_MASK', class = 'CUctx_flags')

#####################
setClass('CUstream_flags', representation(names = 'character'), contains = 'EnumValue')
CUstream_flagsValues = EnumDef('CUstream_flags', structure(as.integer(c(0,
1)),
names = c("CU_STREAM_DEFAULT",
"CU_STREAM_NON_BLOCKING")))


setAs('numeric', 'CUstream_flags', function(from)  asEnumValue(from, CUstream_flagsValues, 'CUstream_flags', prefix = "CU_STREAM_"))
setAs('character', 'CUstream_flags', function(from)  asEnumValue(from, CUstream_flagsValues, 'CUstream_flags', prefix = "CU_STREAM_"))
setAs('integer', 'CUstream_flags', function(from)  asEnumValue(from, CUstream_flagsValues, 'CUstream_flags', prefix = "CU_STREAM_"))


CU_STREAM_DEFAULT <- GenericEnumValue('CU_STREAM_DEFAULT', 0, 'CUstream_flags')
CU_STREAM_NON_BLOCKING <- GenericEnumValue('CU_STREAM_NON_BLOCKING', 1, 'CUstream_flags')

#####################
setClass('CUevent_flags', representation(names = 'character'), contains = 'BitwiseValue')
CUevent_flagsValues = BitwiseValue(structure(as.integer(c(0,
1,
2,
4)),
names = c("CU_EVENT_DEFAULT",
"CU_EVENT_BLOCKING_SYNC",
"CU_EVENT_DISABLE_TIMING",
"CU_EVENT_INTERPROCESS")), class ='CUevent_flags')


setAs('numeric', 'CUevent_flags', function(from)  asBitwiseValue(from, CUevent_flagsValues, 'CUevent_flags', prefix = "CU_EVENT_"))
setAs('character', 'CUevent_flags', function(from)  asBitwiseValue(from, CUevent_flagsValues, 'CUevent_flags', prefix = "CU_EVENT_"))
setAs('integer', 'CUevent_flags', function(from)  asBitwiseValue(from, CUevent_flagsValues, 'CUevent_flags', prefix = "CU_EVENT_"))


CU_EVENT_DEFAULT <- BitwiseValue(0, 'CU_EVENT_DEFAULT', class = 'CUevent_flags')
CU_EVENT_BLOCKING_SYNC <- BitwiseValue(1, 'CU_EVENT_BLOCKING_SYNC', class = 'CUevent_flags')
CU_EVENT_DISABLE_TIMING <- BitwiseValue(2, 'CU_EVENT_DISABLE_TIMING', class = 'CUevent_flags')
CU_EVENT_INTERPROCESS <- BitwiseValue(4, 'CU_EVENT_INTERPROCESS', class = 'CUevent_flags')

#####################
setClass('CUarray_format', representation(names = 'character'), contains = 'BitwiseValue')
CUarray_formatValues = BitwiseValue(structure(as.integer(c(1,
2,
3,
8,
9,
10,
16,
32)),
names = c("CU_AD_FORMAT_UNSIGNED_INT8",
"CU_AD_FORMAT_UNSIGNED_INT16",
"CU_AD_FORMAT_UNSIGNED_INT32",
"CU_AD_FORMAT_SIGNED_INT8",
"CU_AD_FORMAT_SIGNED_INT16",
"CU_AD_FORMAT_SIGNED_INT32",
"CU_AD_FORMAT_HALF",
"CU_AD_FORMAT_FLOAT")), class ='CUarray_format')


setAs('numeric', 'CUarray_format', function(from)  asBitwiseValue(from, CUarray_formatValues, 'CUarray_format', prefix = "CU_AD_FORMAT_"))
setAs('character', 'CUarray_format', function(from)  asBitwiseValue(from, CUarray_formatValues, 'CUarray_format', prefix = "CU_AD_FORMAT_"))
setAs('integer', 'CUarray_format', function(from)  asBitwiseValue(from, CUarray_formatValues, 'CUarray_format', prefix = "CU_AD_FORMAT_"))


CU_AD_FORMAT_UNSIGNED_INT8 <- BitwiseValue(1, 'CU_AD_FORMAT_UNSIGNED_INT8', class = 'CUarray_format')
CU_AD_FORMAT_UNSIGNED_INT16 <- BitwiseValue(2, 'CU_AD_FORMAT_UNSIGNED_INT16', class = 'CUarray_format')
CU_AD_FORMAT_UNSIGNED_INT32 <- BitwiseValue(3, 'CU_AD_FORMAT_UNSIGNED_INT32', class = 'CUarray_format')
CU_AD_FORMAT_SIGNED_INT8 <- BitwiseValue(8, 'CU_AD_FORMAT_SIGNED_INT8', class = 'CUarray_format')
CU_AD_FORMAT_SIGNED_INT16 <- BitwiseValue(9, 'CU_AD_FORMAT_SIGNED_INT16', class = 'CUarray_format')
CU_AD_FORMAT_SIGNED_INT32 <- BitwiseValue(10, 'CU_AD_FORMAT_SIGNED_INT32', class = 'CUarray_format')
CU_AD_FORMAT_HALF <- BitwiseValue(16, 'CU_AD_FORMAT_HALF', class = 'CUarray_format')
CU_AD_FORMAT_FLOAT <- BitwiseValue(32, 'CU_AD_FORMAT_FLOAT', class = 'CUarray_format')

#####################
setClass('CUaddress_mode', representation(names = 'character'), contains = 'EnumValue')
CUaddress_modeValues = EnumDef('CUaddress_mode', structure(as.integer(c(0,
1,
2,
3)),
names = c("CU_TR_ADDRESS_MODE_WRAP",
"CU_TR_ADDRESS_MODE_CLAMP",
"CU_TR_ADDRESS_MODE_MIRROR",
"CU_TR_ADDRESS_MODE_BORDER")))


setAs('numeric', 'CUaddress_mode', function(from)  asEnumValue(from, CUaddress_modeValues, 'CUaddress_mode', prefix = "CU_TR_ADDRESS_MODE_"))
setAs('character', 'CUaddress_mode', function(from)  asEnumValue(from, CUaddress_modeValues, 'CUaddress_mode', prefix = "CU_TR_ADDRESS_MODE_"))
setAs('integer', 'CUaddress_mode', function(from)  asEnumValue(from, CUaddress_modeValues, 'CUaddress_mode', prefix = "CU_TR_ADDRESS_MODE_"))


CU_TR_ADDRESS_MODE_WRAP <- GenericEnumValue('CU_TR_ADDRESS_MODE_WRAP', 0, 'CUaddress_mode')
CU_TR_ADDRESS_MODE_CLAMP <- GenericEnumValue('CU_TR_ADDRESS_MODE_CLAMP', 1, 'CUaddress_mode')
CU_TR_ADDRESS_MODE_MIRROR <- GenericEnumValue('CU_TR_ADDRESS_MODE_MIRROR', 2, 'CUaddress_mode')
CU_TR_ADDRESS_MODE_BORDER <- GenericEnumValue('CU_TR_ADDRESS_MODE_BORDER', 3, 'CUaddress_mode')

#####################
setClass('CUfilter_mode', representation(names = 'character'), contains = 'EnumValue')
CUfilter_modeValues = EnumDef('CUfilter_mode', structure(as.integer(c(0,
1)),
names = c("CU_TR_FILTER_MODE_POINT",
"CU_TR_FILTER_MODE_LINEAR")))


setAs('numeric', 'CUfilter_mode', function(from)  asEnumValue(from, CUfilter_modeValues, 'CUfilter_mode', prefix = "CU_TR_FILTER_MODE_"))
setAs('character', 'CUfilter_mode', function(from)  asEnumValue(from, CUfilter_modeValues, 'CUfilter_mode', prefix = "CU_TR_FILTER_MODE_"))
setAs('integer', 'CUfilter_mode', function(from)  asEnumValue(from, CUfilter_modeValues, 'CUfilter_mode', prefix = "CU_TR_FILTER_MODE_"))


CU_TR_FILTER_MODE_POINT <- GenericEnumValue('CU_TR_FILTER_MODE_POINT', 0, 'CUfilter_mode')
CU_TR_FILTER_MODE_LINEAR <- GenericEnumValue('CU_TR_FILTER_MODE_LINEAR', 1, 'CUfilter_mode')

#####################
setClass('CUdevice_attribute', representation(names = 'character'), contains = 'EnumValue')
CUdevice_attributeValues = EnumDef('CUdevice_attribute', structure(as.integer(c(1,
2,
3,
4,
5,
6,
7,
8,
8,
9,
10,
11,
12,
12,
13,
14,
15,
16,
17,
18,
19,
20,
21,
22,
23,
24,
25,
26,
27,
28,
29,
27,
28,
29,
30,
31,
32,
33,
34,
35,
36,
37,
38,
39,
40,
41,
42,
43,
44,
45,
46,
47,
48,
49,
50,
51,
52,
53,
54,
55,
56,
57,
58,
59,
60,
61,
62,
63,
64,
65,
66,
67,
68,
69,
70,
71,
72,
73,
74,
75,
76,
77,
78)),
names = c("CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_BLOCK",
"CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_X",
"CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Y",
"CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Z",
"CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_X",
"CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Y",
"CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Z",
"CU_DEVICE_ATTRIBUTE_MAX_SHARED_MEMORY_PER_BLOCK",
"CU_DEVICE_ATTRIBUTE_SHARED_MEMORY_PER_BLOCK",
"CU_DEVICE_ATTRIBUTE_TOTAL_CONSTANT_MEMORY",
"CU_DEVICE_ATTRIBUTE_WARP_SIZE",
"CU_DEVICE_ATTRIBUTE_MAX_PITCH",
"CU_DEVICE_ATTRIBUTE_MAX_REGISTERS_PER_BLOCK",
"CU_DEVICE_ATTRIBUTE_REGISTERS_PER_BLOCK",
"CU_DEVICE_ATTRIBUTE_CLOCK_RATE",
"CU_DEVICE_ATTRIBUTE_TEXTURE_ALIGNMENT",
"CU_DEVICE_ATTRIBUTE_GPU_OVERLAP",
"CU_DEVICE_ATTRIBUTE_MULTIPROCESSOR_COUNT",
"CU_DEVICE_ATTRIBUTE_KERNEL_EXEC_TIMEOUT",
"CU_DEVICE_ATTRIBUTE_INTEGRATED",
"CU_DEVICE_ATTRIBUTE_CAN_MAP_HOST_MEMORY",
"CU_DEVICE_ATTRIBUTE_COMPUTE_MODE",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_HEIGHT",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_HEIGHT",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_LAYERS",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_HEIGHT",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_NUMSLICES",
"CU_DEVICE_ATTRIBUTE_SURFACE_ALIGNMENT",
"CU_DEVICE_ATTRIBUTE_CONCURRENT_KERNELS",
"CU_DEVICE_ATTRIBUTE_ECC_ENABLED",
"CU_DEVICE_ATTRIBUTE_PCI_BUS_ID",
"CU_DEVICE_ATTRIBUTE_PCI_DEVICE_ID",
"CU_DEVICE_ATTRIBUTE_TCC_DRIVER",
"CU_DEVICE_ATTRIBUTE_MEMORY_CLOCK_RATE",
"CU_DEVICE_ATTRIBUTE_GLOBAL_MEMORY_BUS_WIDTH",
"CU_DEVICE_ATTRIBUTE_L2_CACHE_SIZE",
"CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_MULTIPROCESSOR",
"CU_DEVICE_ATTRIBUTE_ASYNC_ENGINE_COUNT",
"CU_DEVICE_ATTRIBUTE_UNIFIED_ADDRESSING",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_LAYERS",
"CU_DEVICE_ATTRIBUTE_CAN_TEX2D_GATHER",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_HEIGHT",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH_ALTERNATE",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT_ALTERNATE",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH_ALTERNATE",
"CU_DEVICE_ATTRIBUTE_PCI_DOMAIN_ID",
"CU_DEVICE_ATTRIBUTE_TEXTURE_PITCH_ALIGNMENT",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_LAYERS",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_HEIGHT",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_HEIGHT",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_DEPTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_LAYERS",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_HEIGHT",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_LAYERS",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_LAYERS",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LINEAR_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_HEIGHT",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_PITCH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_HEIGHT",
"CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MAJOR",
"CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MINOR",
"CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_MIPMAPPED_WIDTH",
"CU_DEVICE_ATTRIBUTE_MAX")))


setAs('numeric', 'CUdevice_attribute', function(from)  asEnumValue(from, CUdevice_attributeValues, 'CUdevice_attribute', prefix = "CU_DEVICE_ATTRIBUTE_"))
setAs('character', 'CUdevice_attribute', function(from)  asEnumValue(from, CUdevice_attributeValues, 'CUdevice_attribute', prefix = "CU_DEVICE_ATTRIBUTE_"))
setAs('integer', 'CUdevice_attribute', function(from)  asEnumValue(from, CUdevice_attributeValues, 'CUdevice_attribute', prefix = "CU_DEVICE_ATTRIBUTE_"))


CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_BLOCK <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_BLOCK', 1, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_X <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_X', 2, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Y <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Y', 3, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Z <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAX_BLOCK_DIM_Z', 4, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_X <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_X', 5, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Y <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Y', 6, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Z <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAX_GRID_DIM_Z', 7, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAX_SHARED_MEMORY_PER_BLOCK <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAX_SHARED_MEMORY_PER_BLOCK', 8, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_SHARED_MEMORY_PER_BLOCK <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_SHARED_MEMORY_PER_BLOCK', 8, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_TOTAL_CONSTANT_MEMORY <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_TOTAL_CONSTANT_MEMORY', 9, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_WARP_SIZE <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_WARP_SIZE', 10, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAX_PITCH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAX_PITCH', 11, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAX_REGISTERS_PER_BLOCK <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAX_REGISTERS_PER_BLOCK', 12, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_REGISTERS_PER_BLOCK <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_REGISTERS_PER_BLOCK', 12, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_CLOCK_RATE <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_CLOCK_RATE', 13, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_TEXTURE_ALIGNMENT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_TEXTURE_ALIGNMENT', 14, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_GPU_OVERLAP <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_GPU_OVERLAP', 15, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MULTIPROCESSOR_COUNT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MULTIPROCESSOR_COUNT', 16, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_KERNEL_EXEC_TIMEOUT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_KERNEL_EXEC_TIMEOUT', 17, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_INTEGRATED <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_INTEGRATED', 18, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_CAN_MAP_HOST_MEMORY <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_CAN_MAP_HOST_MEMORY', 19, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_COMPUTE_MODE <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_COMPUTE_MODE', 20, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_WIDTH', 21, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_WIDTH', 22, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_HEIGHT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_HEIGHT', 23, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH', 24, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT', 25, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH', 26, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_WIDTH', 27, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_HEIGHT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_HEIGHT', 28, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_LAYERS <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LAYERED_LAYERS', 29, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_WIDTH', 27, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_HEIGHT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_HEIGHT', 28, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_NUMSLICES <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_ARRAY_NUMSLICES', 29, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_SURFACE_ALIGNMENT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_SURFACE_ALIGNMENT', 30, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_CONCURRENT_KERNELS <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_CONCURRENT_KERNELS', 31, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_ECC_ENABLED <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_ECC_ENABLED', 32, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_PCI_BUS_ID <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_PCI_BUS_ID', 33, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_PCI_DEVICE_ID <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_PCI_DEVICE_ID', 34, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_TCC_DRIVER <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_TCC_DRIVER', 35, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MEMORY_CLOCK_RATE <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MEMORY_CLOCK_RATE', 36, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_GLOBAL_MEMORY_BUS_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_GLOBAL_MEMORY_BUS_WIDTH', 37, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_L2_CACHE_SIZE <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_L2_CACHE_SIZE', 38, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_MULTIPROCESSOR <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAX_THREADS_PER_MULTIPROCESSOR', 39, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_ASYNC_ENGINE_COUNT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_ASYNC_ENGINE_COUNT', 40, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_UNIFIED_ADDRESSING <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_UNIFIED_ADDRESSING', 41, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_WIDTH', 42, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_LAYERS <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LAYERED_LAYERS', 43, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_CAN_TEX2D_GATHER <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_CAN_TEX2D_GATHER', 44, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_WIDTH', 45, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_HEIGHT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_GATHER_HEIGHT', 46, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH_ALTERNATE <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_WIDTH_ALTERNATE', 47, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT_ALTERNATE <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_HEIGHT_ALTERNATE', 48, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH_ALTERNATE <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE3D_DEPTH_ALTERNATE', 49, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_PCI_DOMAIN_ID <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_PCI_DOMAIN_ID', 50, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_TEXTURE_PITCH_ALIGNMENT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_TEXTURE_PITCH_ALIGNMENT', 51, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_WIDTH', 52, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_WIDTH', 53, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_LAYERS <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURECUBEMAP_LAYERED_LAYERS', 54, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_WIDTH', 55, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_WIDTH', 56, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_HEIGHT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_HEIGHT', 57, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_WIDTH', 58, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_HEIGHT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_HEIGHT', 59, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_DEPTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE3D_DEPTH', 60, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_WIDTH', 61, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_LAYERS <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE1D_LAYERED_LAYERS', 62, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_WIDTH', 63, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_HEIGHT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_HEIGHT', 64, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_LAYERS <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACE2D_LAYERED_LAYERS', 65, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_WIDTH', 66, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_WIDTH', 67, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_LAYERS <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_SURFACECUBEMAP_LAYERED_LAYERS', 68, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LINEAR_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_LINEAR_WIDTH', 69, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_WIDTH', 70, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_HEIGHT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_HEIGHT', 71, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_PITCH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_LINEAR_PITCH', 72, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_WIDTH', 73, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_HEIGHT <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE2D_MIPMAPPED_HEIGHT', 74, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MAJOR <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MAJOR', 75, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MINOR <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_COMPUTE_CAPABILITY_MINOR', 76, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_MIPMAPPED_WIDTH <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAXIMUM_TEXTURE1D_MIPMAPPED_WIDTH', 77, 'CUdevice_attribute')
CU_DEVICE_ATTRIBUTE_MAX <- GenericEnumValue('CU_DEVICE_ATTRIBUTE_MAX', 78, 'CUdevice_attribute')

#####################
setClass('CUpointer_attribute', representation(names = 'character'), contains = 'EnumValue')
CUpointer_attributeValues = EnumDef('CUpointer_attribute', structure(as.integer(c(1,
2,
3,
4,
5)),
names = c("CU_POINTER_ATTRIBUTE_CONTEXT",
"CU_POINTER_ATTRIBUTE_MEMORY_TYPE",
"CU_POINTER_ATTRIBUTE_DEVICE_POINTER",
"CU_POINTER_ATTRIBUTE_HOST_POINTER",
"CU_POINTER_ATTRIBUTE_P2P_TOKENS")))


setAs('numeric', 'CUpointer_attribute', function(from)  asEnumValue(from, CUpointer_attributeValues, 'CUpointer_attribute', prefix = "CU_POINTER_ATTRIBUTE_"))
setAs('character', 'CUpointer_attribute', function(from)  asEnumValue(from, CUpointer_attributeValues, 'CUpointer_attribute', prefix = "CU_POINTER_ATTRIBUTE_"))
setAs('integer', 'CUpointer_attribute', function(from)  asEnumValue(from, CUpointer_attributeValues, 'CUpointer_attribute', prefix = "CU_POINTER_ATTRIBUTE_"))


CU_POINTER_ATTRIBUTE_CONTEXT <- GenericEnumValue('CU_POINTER_ATTRIBUTE_CONTEXT', 1, 'CUpointer_attribute')
CU_POINTER_ATTRIBUTE_MEMORY_TYPE <- GenericEnumValue('CU_POINTER_ATTRIBUTE_MEMORY_TYPE', 2, 'CUpointer_attribute')
CU_POINTER_ATTRIBUTE_DEVICE_POINTER <- GenericEnumValue('CU_POINTER_ATTRIBUTE_DEVICE_POINTER', 3, 'CUpointer_attribute')
CU_POINTER_ATTRIBUTE_HOST_POINTER <- GenericEnumValue('CU_POINTER_ATTRIBUTE_HOST_POINTER', 4, 'CUpointer_attribute')
CU_POINTER_ATTRIBUTE_P2P_TOKENS <- GenericEnumValue('CU_POINTER_ATTRIBUTE_P2P_TOKENS', 5, 'CUpointer_attribute')

#####################
setClass('CUfunction_attribute', representation(names = 'character'), contains = 'EnumValue')
CUfunction_attributeValues = EnumDef('CUfunction_attribute', structure(as.integer(c(0,
1,
2,
3,
4,
5,
6,
7)),
names = c("CU_FUNC_ATTRIBUTE_MAX_THREADS_PER_BLOCK",
"CU_FUNC_ATTRIBUTE_SHARED_SIZE_BYTES",
"CU_FUNC_ATTRIBUTE_CONST_SIZE_BYTES",
"CU_FUNC_ATTRIBUTE_LOCAL_SIZE_BYTES",
"CU_FUNC_ATTRIBUTE_NUM_REGS",
"CU_FUNC_ATTRIBUTE_PTX_VERSION",
"CU_FUNC_ATTRIBUTE_BINARY_VERSION",
"CU_FUNC_ATTRIBUTE_MAX")))


setAs('numeric', 'CUfunction_attribute', function(from)  asEnumValue(from, CUfunction_attributeValues, 'CUfunction_attribute', prefix = "CU_FUNC_ATTRIBUTE_"))
setAs('character', 'CUfunction_attribute', function(from)  asEnumValue(from, CUfunction_attributeValues, 'CUfunction_attribute', prefix = "CU_FUNC_ATTRIBUTE_"))
setAs('integer', 'CUfunction_attribute', function(from)  asEnumValue(from, CUfunction_attributeValues, 'CUfunction_attribute', prefix = "CU_FUNC_ATTRIBUTE_"))


CU_FUNC_ATTRIBUTE_MAX_THREADS_PER_BLOCK <- GenericEnumValue('CU_FUNC_ATTRIBUTE_MAX_THREADS_PER_BLOCK', 0, 'CUfunction_attribute')
CU_FUNC_ATTRIBUTE_SHARED_SIZE_BYTES <- GenericEnumValue('CU_FUNC_ATTRIBUTE_SHARED_SIZE_BYTES', 1, 'CUfunction_attribute')
CU_FUNC_ATTRIBUTE_CONST_SIZE_BYTES <- GenericEnumValue('CU_FUNC_ATTRIBUTE_CONST_SIZE_BYTES', 2, 'CUfunction_attribute')
CU_FUNC_ATTRIBUTE_LOCAL_SIZE_BYTES <- GenericEnumValue('CU_FUNC_ATTRIBUTE_LOCAL_SIZE_BYTES', 3, 'CUfunction_attribute')
CU_FUNC_ATTRIBUTE_NUM_REGS <- GenericEnumValue('CU_FUNC_ATTRIBUTE_NUM_REGS', 4, 'CUfunction_attribute')
CU_FUNC_ATTRIBUTE_PTX_VERSION <- GenericEnumValue('CU_FUNC_ATTRIBUTE_PTX_VERSION', 5, 'CUfunction_attribute')
CU_FUNC_ATTRIBUTE_BINARY_VERSION <- GenericEnumValue('CU_FUNC_ATTRIBUTE_BINARY_VERSION', 6, 'CUfunction_attribute')
CU_FUNC_ATTRIBUTE_MAX <- GenericEnumValue('CU_FUNC_ATTRIBUTE_MAX', 7, 'CUfunction_attribute')

#####################
setClass('CUfunc_cache', representation(names = 'character'), contains = 'EnumValue')
CUfunc_cacheValues = EnumDef('CUfunc_cache', structure(as.integer(c(0,
1,
2,
3)),
names = c("CU_FUNC_CACHE_PREFER_NONE",
"CU_FUNC_CACHE_PREFER_SHARED",
"CU_FUNC_CACHE_PREFER_L1",
"CU_FUNC_CACHE_PREFER_EQUAL")))


setAs('numeric', 'CUfunc_cache', function(from)  asEnumValue(from, CUfunc_cacheValues, 'CUfunc_cache', prefix = "CU_FUNC_CACHE_PREFER_"))
setAs('character', 'CUfunc_cache', function(from)  asEnumValue(from, CUfunc_cacheValues, 'CUfunc_cache', prefix = "CU_FUNC_CACHE_PREFER_"))
setAs('integer', 'CUfunc_cache', function(from)  asEnumValue(from, CUfunc_cacheValues, 'CUfunc_cache', prefix = "CU_FUNC_CACHE_PREFER_"))


CU_FUNC_CACHE_PREFER_NONE <- GenericEnumValue('CU_FUNC_CACHE_PREFER_NONE', 0, 'CUfunc_cache')
CU_FUNC_CACHE_PREFER_SHARED <- GenericEnumValue('CU_FUNC_CACHE_PREFER_SHARED', 1, 'CUfunc_cache')
CU_FUNC_CACHE_PREFER_L1 <- GenericEnumValue('CU_FUNC_CACHE_PREFER_L1', 2, 'CUfunc_cache')
CU_FUNC_CACHE_PREFER_EQUAL <- GenericEnumValue('CU_FUNC_CACHE_PREFER_EQUAL', 3, 'CUfunc_cache')

#####################
setClass('CUsharedconfig', representation(names = 'character'), contains = 'EnumValue')
CUsharedconfigValues = EnumDef('CUsharedconfig', structure(as.integer(c(0,
1,
2)),
names = c("CU_SHARED_MEM_CONFIG_DEFAULT_BANK_SIZE",
"CU_SHARED_MEM_CONFIG_FOUR_BYTE_BANK_SIZE",
"CU_SHARED_MEM_CONFIG_EIGHT_BYTE_BANK_SIZE")))


setAs('numeric', 'CUsharedconfig', function(from)  asEnumValue(from, CUsharedconfigValues, 'CUsharedconfig', prefix = "CU_SHARED_MEM_CONFIG_"))
setAs('character', 'CUsharedconfig', function(from)  asEnumValue(from, CUsharedconfigValues, 'CUsharedconfig', prefix = "CU_SHARED_MEM_CONFIG_"))
setAs('integer', 'CUsharedconfig', function(from)  asEnumValue(from, CUsharedconfigValues, 'CUsharedconfig', prefix = "CU_SHARED_MEM_CONFIG_"))


CU_SHARED_MEM_CONFIG_DEFAULT_BANK_SIZE <- GenericEnumValue('CU_SHARED_MEM_CONFIG_DEFAULT_BANK_SIZE', 0, 'CUsharedconfig')
CU_SHARED_MEM_CONFIG_FOUR_BYTE_BANK_SIZE <- GenericEnumValue('CU_SHARED_MEM_CONFIG_FOUR_BYTE_BANK_SIZE', 1, 'CUsharedconfig')
CU_SHARED_MEM_CONFIG_EIGHT_BYTE_BANK_SIZE <- GenericEnumValue('CU_SHARED_MEM_CONFIG_EIGHT_BYTE_BANK_SIZE', 2, 'CUsharedconfig')

#####################
setClass('CUmemorytype', representation(names = 'character'), contains = 'EnumValue')
CUmemorytypeValues = EnumDef('CUmemorytype', structure(as.integer(c(1,
2,
3,
4)),
names = c("CU_MEMORYTYPE_HOST",
"CU_MEMORYTYPE_DEVICE",
"CU_MEMORYTYPE_ARRAY",
"CU_MEMORYTYPE_UNIFIED")))


setAs('numeric', 'CUmemorytype', function(from)  asEnumValue(from, CUmemorytypeValues, 'CUmemorytype', prefix = "CU_MEMORYTYPE_"))
setAs('character', 'CUmemorytype', function(from)  asEnumValue(from, CUmemorytypeValues, 'CUmemorytype', prefix = "CU_MEMORYTYPE_"))
setAs('integer', 'CUmemorytype', function(from)  asEnumValue(from, CUmemorytypeValues, 'CUmemorytype', prefix = "CU_MEMORYTYPE_"))


CU_MEMORYTYPE_HOST <- GenericEnumValue('CU_MEMORYTYPE_HOST', 1, 'CUmemorytype')
CU_MEMORYTYPE_DEVICE <- GenericEnumValue('CU_MEMORYTYPE_DEVICE', 2, 'CUmemorytype')
CU_MEMORYTYPE_ARRAY <- GenericEnumValue('CU_MEMORYTYPE_ARRAY', 3, 'CUmemorytype')
CU_MEMORYTYPE_UNIFIED <- GenericEnumValue('CU_MEMORYTYPE_UNIFIED', 4, 'CUmemorytype')

#####################
setClass('CUcomputemode', representation(names = 'character'), contains = 'EnumValue')
CUcomputemodeValues = EnumDef('CUcomputemode', structure(as.integer(c(0,
1,
2,
3)),
names = c("CU_COMPUTEMODE_DEFAULT",
"CU_COMPUTEMODE_EXCLUSIVE",
"CU_COMPUTEMODE_PROHIBITED",
"CU_COMPUTEMODE_EXCLUSIVE_PROCESS")))


setAs('numeric', 'CUcomputemode', function(from)  asEnumValue(from, CUcomputemodeValues, 'CUcomputemode', prefix = "CU_COMPUTEMODE_"))
setAs('character', 'CUcomputemode', function(from)  asEnumValue(from, CUcomputemodeValues, 'CUcomputemode', prefix = "CU_COMPUTEMODE_"))
setAs('integer', 'CUcomputemode', function(from)  asEnumValue(from, CUcomputemodeValues, 'CUcomputemode', prefix = "CU_COMPUTEMODE_"))


CU_COMPUTEMODE_DEFAULT <- GenericEnumValue('CU_COMPUTEMODE_DEFAULT', 0, 'CUcomputemode')
CU_COMPUTEMODE_EXCLUSIVE <- GenericEnumValue('CU_COMPUTEMODE_EXCLUSIVE', 1, 'CUcomputemode')
CU_COMPUTEMODE_PROHIBITED <- GenericEnumValue('CU_COMPUTEMODE_PROHIBITED', 2, 'CUcomputemode')
CU_COMPUTEMODE_EXCLUSIVE_PROCESS <- GenericEnumValue('CU_COMPUTEMODE_EXCLUSIVE_PROCESS', 3, 'CUcomputemode')

#####################
setClass('CUjit_option', representation(names = 'character'), contains = 'EnumValue')
CUjit_optionValues = EnumDef('CUjit_option', structure(as.integer(c(0,
1,
2,
3,
4,
5,
6,
7,
8,
9,
10)),
names = c("CU_JIT_MAX_REGISTERS",
"CU_JIT_THREADS_PER_BLOCK",
"CU_JIT_WALL_TIME",
"CU_JIT_INFO_LOG_BUFFER",
"CU_JIT_INFO_LOG_BUFFER_SIZE_BYTES",
"CU_JIT_ERROR_LOG_BUFFER",
"CU_JIT_ERROR_LOG_BUFFER_SIZE_BYTES",
"CU_JIT_OPTIMIZATION_LEVEL",
"CU_JIT_TARGET_FROM_CUCONTEXT",
"CU_JIT_TARGET",
"CU_JIT_FALLBACK_STRATEGY")))


setAs('numeric', 'CUjit_option', function(from)  asEnumValue(from, CUjit_optionValues, 'CUjit_option', prefix = "CU_JIT_"))
setAs('character', 'CUjit_option', function(from)  asEnumValue(from, CUjit_optionValues, 'CUjit_option', prefix = "CU_JIT_"))
setAs('integer', 'CUjit_option', function(from)  asEnumValue(from, CUjit_optionValues, 'CUjit_option', prefix = "CU_JIT_"))


CU_JIT_MAX_REGISTERS <- GenericEnumValue('CU_JIT_MAX_REGISTERS', 0, 'CUjit_option')
CU_JIT_THREADS_PER_BLOCK <- GenericEnumValue('CU_JIT_THREADS_PER_BLOCK', 1, 'CUjit_option')
CU_JIT_WALL_TIME <- GenericEnumValue('CU_JIT_WALL_TIME', 2, 'CUjit_option')
CU_JIT_INFO_LOG_BUFFER <- GenericEnumValue('CU_JIT_INFO_LOG_BUFFER', 3, 'CUjit_option')
CU_JIT_INFO_LOG_BUFFER_SIZE_BYTES <- GenericEnumValue('CU_JIT_INFO_LOG_BUFFER_SIZE_BYTES', 4, 'CUjit_option')
CU_JIT_ERROR_LOG_BUFFER <- GenericEnumValue('CU_JIT_ERROR_LOG_BUFFER', 5, 'CUjit_option')
CU_JIT_ERROR_LOG_BUFFER_SIZE_BYTES <- GenericEnumValue('CU_JIT_ERROR_LOG_BUFFER_SIZE_BYTES', 6, 'CUjit_option')
CU_JIT_OPTIMIZATION_LEVEL <- GenericEnumValue('CU_JIT_OPTIMIZATION_LEVEL', 7, 'CUjit_option')
CU_JIT_TARGET_FROM_CUCONTEXT <- GenericEnumValue('CU_JIT_TARGET_FROM_CUCONTEXT', 8, 'CUjit_option')
CU_JIT_TARGET <- GenericEnumValue('CU_JIT_TARGET', 9, 'CUjit_option')
CU_JIT_FALLBACK_STRATEGY <- GenericEnumValue('CU_JIT_FALLBACK_STRATEGY', 10, 'CUjit_option')

#####################
setClass('CUjit_target', representation(names = 'character'), contains = 'EnumValue')
CUjit_targetValues = EnumDef('CUjit_target', structure(as.integer(c(0,
1,
2,
3,
4,
5,
6,
7)),
names = c("CU_TARGET_COMPUTE_10",
"CU_TARGET_COMPUTE_11",
"CU_TARGET_COMPUTE_12",
"CU_TARGET_COMPUTE_13",
"CU_TARGET_COMPUTE_20",
"CU_TARGET_COMPUTE_21",
"CU_TARGET_COMPUTE_30",
"CU_TARGET_COMPUTE_35")))


setAs('numeric', 'CUjit_target', function(from)  asEnumValue(from, CUjit_targetValues, 'CUjit_target', prefix = "CU_TARGET_COMPUTE_"))
setAs('character', 'CUjit_target', function(from)  asEnumValue(from, CUjit_targetValues, 'CUjit_target', prefix = "CU_TARGET_COMPUTE_"))
setAs('integer', 'CUjit_target', function(from)  asEnumValue(from, CUjit_targetValues, 'CUjit_target', prefix = "CU_TARGET_COMPUTE_"))


CU_TARGET_COMPUTE_10 <- GenericEnumValue('CU_TARGET_COMPUTE_10', 0, 'CUjit_target')
CU_TARGET_COMPUTE_11 <- GenericEnumValue('CU_TARGET_COMPUTE_11', 1, 'CUjit_target')
CU_TARGET_COMPUTE_12 <- GenericEnumValue('CU_TARGET_COMPUTE_12', 2, 'CUjit_target')
CU_TARGET_COMPUTE_13 <- GenericEnumValue('CU_TARGET_COMPUTE_13', 3, 'CUjit_target')
CU_TARGET_COMPUTE_20 <- GenericEnumValue('CU_TARGET_COMPUTE_20', 4, 'CUjit_target')
CU_TARGET_COMPUTE_21 <- GenericEnumValue('CU_TARGET_COMPUTE_21', 5, 'CUjit_target')
CU_TARGET_COMPUTE_30 <- GenericEnumValue('CU_TARGET_COMPUTE_30', 6, 'CUjit_target')
CU_TARGET_COMPUTE_35 <- GenericEnumValue('CU_TARGET_COMPUTE_35', 7, 'CUjit_target')

#####################
setClass('CUjit_fallback', representation(names = 'character'), contains = 'EnumValue')
CUjit_fallbackValues = EnumDef('CUjit_fallback', structure(as.integer(c(0,
1)),
names = c("CU_PREFER_PTX",
"CU_PREFER_BINARY")))


setAs('numeric', 'CUjit_fallback', function(from)  asEnumValue(from, CUjit_fallbackValues, 'CUjit_fallback', prefix = "CU_PREFER_"))
setAs('character', 'CUjit_fallback', function(from)  asEnumValue(from, CUjit_fallbackValues, 'CUjit_fallback', prefix = "CU_PREFER_"))
setAs('integer', 'CUjit_fallback', function(from)  asEnumValue(from, CUjit_fallbackValues, 'CUjit_fallback', prefix = "CU_PREFER_"))


CU_PREFER_PTX <- GenericEnumValue('CU_PREFER_PTX', 0, 'CUjit_fallback')
CU_PREFER_BINARY <- GenericEnumValue('CU_PREFER_BINARY', 1, 'CUjit_fallback')

#####################
setClass('CUgraphicsRegisterFlags', representation(names = 'character'), contains = 'BitwiseValue')
CUgraphicsRegisterFlagsValues = BitwiseValue(structure(as.integer(c(0,
1,
2,
4,
8)),
names = c("CU_GRAPHICS_REGISTER_FLAGS_NONE",
"CU_GRAPHICS_REGISTER_FLAGS_READ_ONLY",
"CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD",
"CU_GRAPHICS_REGISTER_FLAGS_SURFACE_LDST",
"CU_GRAPHICS_REGISTER_FLAGS_TEXTURE_GATHER")), class ='CUgraphicsRegisterFlags')


setAs('numeric', 'CUgraphicsRegisterFlags', function(from)  asBitwiseValue(from, CUgraphicsRegisterFlagsValues, 'CUgraphicsRegisterFlags', prefix = "CU_GRAPHICS_REGISTER_FLAGS_"))
setAs('character', 'CUgraphicsRegisterFlags', function(from)  asBitwiseValue(from, CUgraphicsRegisterFlagsValues, 'CUgraphicsRegisterFlags', prefix = "CU_GRAPHICS_REGISTER_FLAGS_"))
setAs('integer', 'CUgraphicsRegisterFlags', function(from)  asBitwiseValue(from, CUgraphicsRegisterFlagsValues, 'CUgraphicsRegisterFlags', prefix = "CU_GRAPHICS_REGISTER_FLAGS_"))


CU_GRAPHICS_REGISTER_FLAGS_NONE <- BitwiseValue(0, 'CU_GRAPHICS_REGISTER_FLAGS_NONE', class = 'CUgraphicsRegisterFlags')
CU_GRAPHICS_REGISTER_FLAGS_READ_ONLY <- BitwiseValue(1, 'CU_GRAPHICS_REGISTER_FLAGS_READ_ONLY', class = 'CUgraphicsRegisterFlags')
CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD <- BitwiseValue(2, 'CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD', class = 'CUgraphicsRegisterFlags')
CU_GRAPHICS_REGISTER_FLAGS_SURFACE_LDST <- BitwiseValue(4, 'CU_GRAPHICS_REGISTER_FLAGS_SURFACE_LDST', class = 'CUgraphicsRegisterFlags')
CU_GRAPHICS_REGISTER_FLAGS_TEXTURE_GATHER <- BitwiseValue(8, 'CU_GRAPHICS_REGISTER_FLAGS_TEXTURE_GATHER', class = 'CUgraphicsRegisterFlags')

#####################
setClass('CUgraphicsMapResourceFlags', representation(names = 'character'), contains = 'EnumValue')
CUgraphicsMapResourceFlagsValues = EnumDef('CUgraphicsMapResourceFlags', structure(as.integer(c(0,
1,
2)),
names = c("CU_GRAPHICS_MAP_RESOURCE_FLAGS_NONE",
"CU_GRAPHICS_MAP_RESOURCE_FLAGS_READ_ONLY",
"CU_GRAPHICS_MAP_RESOURCE_FLAGS_WRITE_DISCARD")))


setAs('numeric', 'CUgraphicsMapResourceFlags', function(from)  asEnumValue(from, CUgraphicsMapResourceFlagsValues, 'CUgraphicsMapResourceFlags', prefix = "CU_GRAPHICS_MAP_RESOURCE_FLAGS_"))
setAs('character', 'CUgraphicsMapResourceFlags', function(from)  asEnumValue(from, CUgraphicsMapResourceFlagsValues, 'CUgraphicsMapResourceFlags', prefix = "CU_GRAPHICS_MAP_RESOURCE_FLAGS_"))
setAs('integer', 'CUgraphicsMapResourceFlags', function(from)  asEnumValue(from, CUgraphicsMapResourceFlagsValues, 'CUgraphicsMapResourceFlags', prefix = "CU_GRAPHICS_MAP_RESOURCE_FLAGS_"))


CU_GRAPHICS_MAP_RESOURCE_FLAGS_NONE <- GenericEnumValue('CU_GRAPHICS_MAP_RESOURCE_FLAGS_NONE', 0, 'CUgraphicsMapResourceFlags')
CU_GRAPHICS_MAP_RESOURCE_FLAGS_READ_ONLY <- GenericEnumValue('CU_GRAPHICS_MAP_RESOURCE_FLAGS_READ_ONLY', 1, 'CUgraphicsMapResourceFlags')
CU_GRAPHICS_MAP_RESOURCE_FLAGS_WRITE_DISCARD <- GenericEnumValue('CU_GRAPHICS_MAP_RESOURCE_FLAGS_WRITE_DISCARD', 2, 'CUgraphicsMapResourceFlags')

#####################
setClass('CUarray_cubemap_face', representation(names = 'character'), contains = 'EnumValue')
CUarray_cubemap_faceValues = EnumDef('CUarray_cubemap_face', structure(as.integer(c(0,
1,
2,
3,
4,
5)),
names = c("CU_CUBEMAP_FACE_POSITIVE_X",
"CU_CUBEMAP_FACE_NEGATIVE_X",
"CU_CUBEMAP_FACE_POSITIVE_Y",
"CU_CUBEMAP_FACE_NEGATIVE_Y",
"CU_CUBEMAP_FACE_POSITIVE_Z",
"CU_CUBEMAP_FACE_NEGATIVE_Z")))


setAs('numeric', 'CUarray_cubemap_face', function(from)  asEnumValue(from, CUarray_cubemap_faceValues, 'CUarray_cubemap_face', prefix = "CU_CUBEMAP_FACE_"))
setAs('character', 'CUarray_cubemap_face', function(from)  asEnumValue(from, CUarray_cubemap_faceValues, 'CUarray_cubemap_face', prefix = "CU_CUBEMAP_FACE_"))
setAs('integer', 'CUarray_cubemap_face', function(from)  asEnumValue(from, CUarray_cubemap_faceValues, 'CUarray_cubemap_face', prefix = "CU_CUBEMAP_FACE_"))


CU_CUBEMAP_FACE_POSITIVE_X <- GenericEnumValue('CU_CUBEMAP_FACE_POSITIVE_X', 0, 'CUarray_cubemap_face')
CU_CUBEMAP_FACE_NEGATIVE_X <- GenericEnumValue('CU_CUBEMAP_FACE_NEGATIVE_X', 1, 'CUarray_cubemap_face')
CU_CUBEMAP_FACE_POSITIVE_Y <- GenericEnumValue('CU_CUBEMAP_FACE_POSITIVE_Y', 2, 'CUarray_cubemap_face')
CU_CUBEMAP_FACE_NEGATIVE_Y <- GenericEnumValue('CU_CUBEMAP_FACE_NEGATIVE_Y', 3, 'CUarray_cubemap_face')
CU_CUBEMAP_FACE_POSITIVE_Z <- GenericEnumValue('CU_CUBEMAP_FACE_POSITIVE_Z', 4, 'CUarray_cubemap_face')
CU_CUBEMAP_FACE_NEGATIVE_Z <- GenericEnumValue('CU_CUBEMAP_FACE_NEGATIVE_Z', 5, 'CUarray_cubemap_face')

#####################
setClass('CUlimit', representation(names = 'character'), contains = 'EnumValue')
CUlimitValues = EnumDef('CUlimit', structure(as.integer(c(0,
1,
2,
3,
4)),
names = c("CU_LIMIT_STACK_SIZE",
"CU_LIMIT_PRINTF_FIFO_SIZE",
"CU_LIMIT_MALLOC_HEAP_SIZE",
"CU_LIMIT_DEV_RUNTIME_SYNC_DEPTH",
"CU_LIMIT_DEV_RUNTIME_PENDING_LAUNCH_COUNT")))


setAs('numeric', 'CUlimit', function(from)  asEnumValue(from, CUlimitValues, 'CUlimit', prefix = "CU_LIMIT_"))
setAs('character', 'CUlimit', function(from)  asEnumValue(from, CUlimitValues, 'CUlimit', prefix = "CU_LIMIT_"))
setAs('integer', 'CUlimit', function(from)  asEnumValue(from, CUlimitValues, 'CUlimit', prefix = "CU_LIMIT_"))


CU_LIMIT_STACK_SIZE <- GenericEnumValue('CU_LIMIT_STACK_SIZE', 0, 'CUlimit')
CU_LIMIT_PRINTF_FIFO_SIZE <- GenericEnumValue('CU_LIMIT_PRINTF_FIFO_SIZE', 1, 'CUlimit')
CU_LIMIT_MALLOC_HEAP_SIZE <- GenericEnumValue('CU_LIMIT_MALLOC_HEAP_SIZE', 2, 'CUlimit')
CU_LIMIT_DEV_RUNTIME_SYNC_DEPTH <- GenericEnumValue('CU_LIMIT_DEV_RUNTIME_SYNC_DEPTH', 3, 'CUlimit')
CU_LIMIT_DEV_RUNTIME_PENDING_LAUNCH_COUNT <- GenericEnumValue('CU_LIMIT_DEV_RUNTIME_PENDING_LAUNCH_COUNT', 4, 'CUlimit')

#####################
setClass('CUresourcetype', representation(names = 'character'), contains = 'EnumValue')
CUresourcetypeValues = EnumDef('CUresourcetype', structure(as.integer(c(0,
1,
2,
3)),
names = c("CU_RESOURCE_TYPE_ARRAY",
"CU_RESOURCE_TYPE_MIPMAPPED_ARRAY",
"CU_RESOURCE_TYPE_LINEAR",
"CU_RESOURCE_TYPE_PITCH2D")))


setAs('numeric', 'CUresourcetype', function(from)  asEnumValue(from, CUresourcetypeValues, 'CUresourcetype', prefix = "CU_RESOURCE_TYPE_"))
setAs('character', 'CUresourcetype', function(from)  asEnumValue(from, CUresourcetypeValues, 'CUresourcetype', prefix = "CU_RESOURCE_TYPE_"))
setAs('integer', 'CUresourcetype', function(from)  asEnumValue(from, CUresourcetypeValues, 'CUresourcetype', prefix = "CU_RESOURCE_TYPE_"))


CU_RESOURCE_TYPE_ARRAY <- GenericEnumValue('CU_RESOURCE_TYPE_ARRAY', 0, 'CUresourcetype')
CU_RESOURCE_TYPE_MIPMAPPED_ARRAY <- GenericEnumValue('CU_RESOURCE_TYPE_MIPMAPPED_ARRAY', 1, 'CUresourcetype')
CU_RESOURCE_TYPE_LINEAR <- GenericEnumValue('CU_RESOURCE_TYPE_LINEAR', 2, 'CUresourcetype')
CU_RESOURCE_TYPE_PITCH2D <- GenericEnumValue('CU_RESOURCE_TYPE_PITCH2D', 3, 'CUresourcetype')

#####################
setClass('CUresult', representation(names = 'character'), contains = 'EnumValue')
CUresultValues = EnumDef('CUresult', structure(as.integer(c(0,
1,
2,
3,
4,
5,
6,
7,
8,
100,
101,
200,
201,
202,
205,
206,
207,
208,
209,
210,
211,
212,
213,
214,
215,
216,
217,
300,
301,
302,
303,
304,
400,
500,
600,
700,
701,
702,
703,
704,
705,
708,
709,
710,
711,
712,
713,
800,
801,
999)),
names = c("CUDA_SUCCESS",
"CUDA_ERROR_INVALID_VALUE",
"CUDA_ERROR_OUT_OF_MEMORY",
"CUDA_ERROR_NOT_INITIALIZED",
"CUDA_ERROR_DEINITIALIZED",
"CUDA_ERROR_PROFILER_DISABLED",
"CUDA_ERROR_PROFILER_NOT_INITIALIZED",
"CUDA_ERROR_PROFILER_ALREADY_STARTED",
"CUDA_ERROR_PROFILER_ALREADY_STOPPED",
"CUDA_ERROR_NO_DEVICE",
"CUDA_ERROR_INVALID_DEVICE",
"CUDA_ERROR_INVALID_IMAGE",
"CUDA_ERROR_INVALID_CONTEXT",
"CUDA_ERROR_CONTEXT_ALREADY_CURRENT",
"CUDA_ERROR_MAP_FAILED",
"CUDA_ERROR_UNMAP_FAILED",
"CUDA_ERROR_ARRAY_IS_MAPPED",
"CUDA_ERROR_ALREADY_MAPPED",
"CUDA_ERROR_NO_BINARY_FOR_GPU",
"CUDA_ERROR_ALREADY_ACQUIRED",
"CUDA_ERROR_NOT_MAPPED",
"CUDA_ERROR_NOT_MAPPED_AS_ARRAY",
"CUDA_ERROR_NOT_MAPPED_AS_POINTER",
"CUDA_ERROR_ECC_UNCORRECTABLE",
"CUDA_ERROR_UNSUPPORTED_LIMIT",
"CUDA_ERROR_CONTEXT_ALREADY_IN_USE",
"CUDA_ERROR_PEER_ACCESS_UNSUPPORTED",
"CUDA_ERROR_INVALID_SOURCE",
"CUDA_ERROR_FILE_NOT_FOUND",
"CUDA_ERROR_SHARED_OBJECT_SYMBOL_NOT_FOUND",
"CUDA_ERROR_SHARED_OBJECT_INIT_FAILED",
"CUDA_ERROR_OPERATING_SYSTEM",
"CUDA_ERROR_INVALID_HANDLE",
"CUDA_ERROR_NOT_FOUND",
"CUDA_ERROR_NOT_READY",
"CUDA_ERROR_LAUNCH_FAILED",
"CUDA_ERROR_LAUNCH_OUT_OF_RESOURCES",
"CUDA_ERROR_LAUNCH_TIMEOUT",
"CUDA_ERROR_LAUNCH_INCOMPATIBLE_TEXTURING",
"CUDA_ERROR_PEER_ACCESS_ALREADY_ENABLED",
"CUDA_ERROR_PEER_ACCESS_NOT_ENABLED",
"CUDA_ERROR_PRIMARY_CONTEXT_ACTIVE",
"CUDA_ERROR_CONTEXT_IS_DESTROYED",
"CUDA_ERROR_ASSERT",
"CUDA_ERROR_TOO_MANY_PEERS",
"CUDA_ERROR_HOST_MEMORY_ALREADY_REGISTERED",
"CUDA_ERROR_HOST_MEMORY_NOT_REGISTERED",
"CUDA_ERROR_NOT_PERMITTED",
"CUDA_ERROR_NOT_SUPPORTED",
"CUDA_ERROR_UNKNOWN")))


setAs('numeric', 'CUresult', function(from)  asEnumValue(from, CUresultValues, 'CUresult', prefix = "CUDA_"))
setAs('character', 'CUresult', function(from)  asEnumValue(from, CUresultValues, 'CUresult', prefix = "CUDA_"))
setAs('integer', 'CUresult', function(from)  asEnumValue(from, CUresultValues, 'CUresult', prefix = "CUDA_"))


CUDA_SUCCESS <- GenericEnumValue('CUDA_SUCCESS', 0, 'CUresult')
CUDA_ERROR_INVALID_VALUE <- GenericEnumValue('CUDA_ERROR_INVALID_VALUE', 1, 'CUresult')
CUDA_ERROR_OUT_OF_MEMORY <- GenericEnumValue('CUDA_ERROR_OUT_OF_MEMORY', 2, 'CUresult')
CUDA_ERROR_NOT_INITIALIZED <- GenericEnumValue('CUDA_ERROR_NOT_INITIALIZED', 3, 'CUresult')
CUDA_ERROR_DEINITIALIZED <- GenericEnumValue('CUDA_ERROR_DEINITIALIZED', 4, 'CUresult')
CUDA_ERROR_PROFILER_DISABLED <- GenericEnumValue('CUDA_ERROR_PROFILER_DISABLED', 5, 'CUresult')
CUDA_ERROR_PROFILER_NOT_INITIALIZED <- GenericEnumValue('CUDA_ERROR_PROFILER_NOT_INITIALIZED', 6, 'CUresult')
CUDA_ERROR_PROFILER_ALREADY_STARTED <- GenericEnumValue('CUDA_ERROR_PROFILER_ALREADY_STARTED', 7, 'CUresult')
CUDA_ERROR_PROFILER_ALREADY_STOPPED <- GenericEnumValue('CUDA_ERROR_PROFILER_ALREADY_STOPPED', 8, 'CUresult')
CUDA_ERROR_NO_DEVICE <- GenericEnumValue('CUDA_ERROR_NO_DEVICE', 100, 'CUresult')
CUDA_ERROR_INVALID_DEVICE <- GenericEnumValue('CUDA_ERROR_INVALID_DEVICE', 101, 'CUresult')
CUDA_ERROR_INVALID_IMAGE <- GenericEnumValue('CUDA_ERROR_INVALID_IMAGE', 200, 'CUresult')
CUDA_ERROR_INVALID_CONTEXT <- GenericEnumValue('CUDA_ERROR_INVALID_CONTEXT', 201, 'CUresult')
CUDA_ERROR_CONTEXT_ALREADY_CURRENT <- GenericEnumValue('CUDA_ERROR_CONTEXT_ALREADY_CURRENT', 202, 'CUresult')
CUDA_ERROR_MAP_FAILED <- GenericEnumValue('CUDA_ERROR_MAP_FAILED', 205, 'CUresult')
CUDA_ERROR_UNMAP_FAILED <- GenericEnumValue('CUDA_ERROR_UNMAP_FAILED', 206, 'CUresult')
CUDA_ERROR_ARRAY_IS_MAPPED <- GenericEnumValue('CUDA_ERROR_ARRAY_IS_MAPPED', 207, 'CUresult')
CUDA_ERROR_ALREADY_MAPPED <- GenericEnumValue('CUDA_ERROR_ALREADY_MAPPED', 208, 'CUresult')
CUDA_ERROR_NO_BINARY_FOR_GPU <- GenericEnumValue('CUDA_ERROR_NO_BINARY_FOR_GPU', 209, 'CUresult')
CUDA_ERROR_ALREADY_ACQUIRED <- GenericEnumValue('CUDA_ERROR_ALREADY_ACQUIRED', 210, 'CUresult')
CUDA_ERROR_NOT_MAPPED <- GenericEnumValue('CUDA_ERROR_NOT_MAPPED', 211, 'CUresult')
CUDA_ERROR_NOT_MAPPED_AS_ARRAY <- GenericEnumValue('CUDA_ERROR_NOT_MAPPED_AS_ARRAY', 212, 'CUresult')
CUDA_ERROR_NOT_MAPPED_AS_POINTER <- GenericEnumValue('CUDA_ERROR_NOT_MAPPED_AS_POINTER', 213, 'CUresult')
CUDA_ERROR_ECC_UNCORRECTABLE <- GenericEnumValue('CUDA_ERROR_ECC_UNCORRECTABLE', 214, 'CUresult')
CUDA_ERROR_UNSUPPORTED_LIMIT <- GenericEnumValue('CUDA_ERROR_UNSUPPORTED_LIMIT', 215, 'CUresult')
CUDA_ERROR_CONTEXT_ALREADY_IN_USE <- GenericEnumValue('CUDA_ERROR_CONTEXT_ALREADY_IN_USE', 216, 'CUresult')
CUDA_ERROR_PEER_ACCESS_UNSUPPORTED <- GenericEnumValue('CUDA_ERROR_PEER_ACCESS_UNSUPPORTED', 217, 'CUresult')
CUDA_ERROR_INVALID_SOURCE <- GenericEnumValue('CUDA_ERROR_INVALID_SOURCE', 300, 'CUresult')
CUDA_ERROR_FILE_NOT_FOUND <- GenericEnumValue('CUDA_ERROR_FILE_NOT_FOUND', 301, 'CUresult')
CUDA_ERROR_SHARED_OBJECT_SYMBOL_NOT_FOUND <- GenericEnumValue('CUDA_ERROR_SHARED_OBJECT_SYMBOL_NOT_FOUND', 302, 'CUresult')
CUDA_ERROR_SHARED_OBJECT_INIT_FAILED <- GenericEnumValue('CUDA_ERROR_SHARED_OBJECT_INIT_FAILED', 303, 'CUresult')
CUDA_ERROR_OPERATING_SYSTEM <- GenericEnumValue('CUDA_ERROR_OPERATING_SYSTEM', 304, 'CUresult')
CUDA_ERROR_INVALID_HANDLE <- GenericEnumValue('CUDA_ERROR_INVALID_HANDLE', 400, 'CUresult')
CUDA_ERROR_NOT_FOUND <- GenericEnumValue('CUDA_ERROR_NOT_FOUND', 500, 'CUresult')
CUDA_ERROR_NOT_READY <- GenericEnumValue('CUDA_ERROR_NOT_READY', 600, 'CUresult')
CUDA_ERROR_LAUNCH_FAILED <- GenericEnumValue('CUDA_ERROR_LAUNCH_FAILED', 700, 'CUresult')
CUDA_ERROR_LAUNCH_OUT_OF_RESOURCES <- GenericEnumValue('CUDA_ERROR_LAUNCH_OUT_OF_RESOURCES', 701, 'CUresult')
CUDA_ERROR_LAUNCH_TIMEOUT <- GenericEnumValue('CUDA_ERROR_LAUNCH_TIMEOUT', 702, 'CUresult')
CUDA_ERROR_LAUNCH_INCOMPATIBLE_TEXTURING <- GenericEnumValue('CUDA_ERROR_LAUNCH_INCOMPATIBLE_TEXTURING', 703, 'CUresult')
CUDA_ERROR_PEER_ACCESS_ALREADY_ENABLED <- GenericEnumValue('CUDA_ERROR_PEER_ACCESS_ALREADY_ENABLED', 704, 'CUresult')
CUDA_ERROR_PEER_ACCESS_NOT_ENABLED <- GenericEnumValue('CUDA_ERROR_PEER_ACCESS_NOT_ENABLED', 705, 'CUresult')
CUDA_ERROR_PRIMARY_CONTEXT_ACTIVE <- GenericEnumValue('CUDA_ERROR_PRIMARY_CONTEXT_ACTIVE', 708, 'CUresult')
CUDA_ERROR_CONTEXT_IS_DESTROYED <- GenericEnumValue('CUDA_ERROR_CONTEXT_IS_DESTROYED', 709, 'CUresult')
CUDA_ERROR_ASSERT <- GenericEnumValue('CUDA_ERROR_ASSERT', 710, 'CUresult')
CUDA_ERROR_TOO_MANY_PEERS <- GenericEnumValue('CUDA_ERROR_TOO_MANY_PEERS', 711, 'CUresult')
CUDA_ERROR_HOST_MEMORY_ALREADY_REGISTERED <- GenericEnumValue('CUDA_ERROR_HOST_MEMORY_ALREADY_REGISTERED', 712, 'CUresult')
CUDA_ERROR_HOST_MEMORY_NOT_REGISTERED <- GenericEnumValue('CUDA_ERROR_HOST_MEMORY_NOT_REGISTERED', 713, 'CUresult')
CUDA_ERROR_NOT_PERMITTED <- GenericEnumValue('CUDA_ERROR_NOT_PERMITTED', 800, 'CUresult')
CUDA_ERROR_NOT_SUPPORTED <- GenericEnumValue('CUDA_ERROR_NOT_SUPPORTED', 801, 'CUresult')
CUDA_ERROR_UNKNOWN <- GenericEnumValue('CUDA_ERROR_UNKNOWN', 999, 'CUresult')

#####################
setClass('CUresourceViewFormat', representation(names = 'character'), contains = 'EnumValue')
CUresourceViewFormatValues = EnumDef('CUresourceViewFormat', structure(as.integer(c(0,
1,
2,
3,
4,
5,
6,
7,
8,
9,
10,
11,
12,
13,
14,
15,
16,
17,
18,
19,
20,
21,
22,
23,
24,
25,
26,
27,
28,
29,
30,
31,
32,
33,
34)),
names = c("CU_RES_VIEW_FORMAT_NONE",
"CU_RES_VIEW_FORMAT_UINT_1X8",
"CU_RES_VIEW_FORMAT_UINT_2X8",
"CU_RES_VIEW_FORMAT_UINT_4X8",
"CU_RES_VIEW_FORMAT_SINT_1X8",
"CU_RES_VIEW_FORMAT_SINT_2X8",
"CU_RES_VIEW_FORMAT_SINT_4X8",
"CU_RES_VIEW_FORMAT_UINT_1X16",
"CU_RES_VIEW_FORMAT_UINT_2X16",
"CU_RES_VIEW_FORMAT_UINT_4X16",
"CU_RES_VIEW_FORMAT_SINT_1X16",
"CU_RES_VIEW_FORMAT_SINT_2X16",
"CU_RES_VIEW_FORMAT_SINT_4X16",
"CU_RES_VIEW_FORMAT_UINT_1X32",
"CU_RES_VIEW_FORMAT_UINT_2X32",
"CU_RES_VIEW_FORMAT_UINT_4X32",
"CU_RES_VIEW_FORMAT_SINT_1X32",
"CU_RES_VIEW_FORMAT_SINT_2X32",
"CU_RES_VIEW_FORMAT_SINT_4X32",
"CU_RES_VIEW_FORMAT_FLOAT_1X16",
"CU_RES_VIEW_FORMAT_FLOAT_2X16",
"CU_RES_VIEW_FORMAT_FLOAT_4X16",
"CU_RES_VIEW_FORMAT_FLOAT_1X32",
"CU_RES_VIEW_FORMAT_FLOAT_2X32",
"CU_RES_VIEW_FORMAT_FLOAT_4X32",
"CU_RES_VIEW_FORMAT_UNSIGNED_BC1",
"CU_RES_VIEW_FORMAT_UNSIGNED_BC2",
"CU_RES_VIEW_FORMAT_UNSIGNED_BC3",
"CU_RES_VIEW_FORMAT_UNSIGNED_BC4",
"CU_RES_VIEW_FORMAT_SIGNED_BC4",
"CU_RES_VIEW_FORMAT_UNSIGNED_BC5",
"CU_RES_VIEW_FORMAT_SIGNED_BC5",
"CU_RES_VIEW_FORMAT_UNSIGNED_BC6H",
"CU_RES_VIEW_FORMAT_SIGNED_BC6H",
"CU_RES_VIEW_FORMAT_UNSIGNED_BC7")))


setAs('numeric', 'CUresourceViewFormat', function(from)  asEnumValue(from, CUresourceViewFormatValues, 'CUresourceViewFormat', prefix = "CU_RES_VIEW_FORMAT_"))
setAs('character', 'CUresourceViewFormat', function(from)  asEnumValue(from, CUresourceViewFormatValues, 'CUresourceViewFormat', prefix = "CU_RES_VIEW_FORMAT_"))
setAs('integer', 'CUresourceViewFormat', function(from)  asEnumValue(from, CUresourceViewFormatValues, 'CUresourceViewFormat', prefix = "CU_RES_VIEW_FORMAT_"))


CU_RES_VIEW_FORMAT_NONE <- GenericEnumValue('CU_RES_VIEW_FORMAT_NONE', 0, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UINT_1X8 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UINT_1X8', 1, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UINT_2X8 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UINT_2X8', 2, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UINT_4X8 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UINT_4X8', 3, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_SINT_1X8 <- GenericEnumValue('CU_RES_VIEW_FORMAT_SINT_1X8', 4, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_SINT_2X8 <- GenericEnumValue('CU_RES_VIEW_FORMAT_SINT_2X8', 5, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_SINT_4X8 <- GenericEnumValue('CU_RES_VIEW_FORMAT_SINT_4X8', 6, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UINT_1X16 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UINT_1X16', 7, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UINT_2X16 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UINT_2X16', 8, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UINT_4X16 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UINT_4X16', 9, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_SINT_1X16 <- GenericEnumValue('CU_RES_VIEW_FORMAT_SINT_1X16', 10, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_SINT_2X16 <- GenericEnumValue('CU_RES_VIEW_FORMAT_SINT_2X16', 11, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_SINT_4X16 <- GenericEnumValue('CU_RES_VIEW_FORMAT_SINT_4X16', 12, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UINT_1X32 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UINT_1X32', 13, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UINT_2X32 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UINT_2X32', 14, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UINT_4X32 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UINT_4X32', 15, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_SINT_1X32 <- GenericEnumValue('CU_RES_VIEW_FORMAT_SINT_1X32', 16, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_SINT_2X32 <- GenericEnumValue('CU_RES_VIEW_FORMAT_SINT_2X32', 17, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_SINT_4X32 <- GenericEnumValue('CU_RES_VIEW_FORMAT_SINT_4X32', 18, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_FLOAT_1X16 <- GenericEnumValue('CU_RES_VIEW_FORMAT_FLOAT_1X16', 19, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_FLOAT_2X16 <- GenericEnumValue('CU_RES_VIEW_FORMAT_FLOAT_2X16', 20, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_FLOAT_4X16 <- GenericEnumValue('CU_RES_VIEW_FORMAT_FLOAT_4X16', 21, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_FLOAT_1X32 <- GenericEnumValue('CU_RES_VIEW_FORMAT_FLOAT_1X32', 22, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_FLOAT_2X32 <- GenericEnumValue('CU_RES_VIEW_FORMAT_FLOAT_2X32', 23, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_FLOAT_4X32 <- GenericEnumValue('CU_RES_VIEW_FORMAT_FLOAT_4X32', 24, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UNSIGNED_BC1 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UNSIGNED_BC1', 25, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UNSIGNED_BC2 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UNSIGNED_BC2', 26, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UNSIGNED_BC3 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UNSIGNED_BC3', 27, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UNSIGNED_BC4 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UNSIGNED_BC4', 28, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_SIGNED_BC4 <- GenericEnumValue('CU_RES_VIEW_FORMAT_SIGNED_BC4', 29, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UNSIGNED_BC5 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UNSIGNED_BC5', 30, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_SIGNED_BC5 <- GenericEnumValue('CU_RES_VIEW_FORMAT_SIGNED_BC5', 31, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UNSIGNED_BC6H <- GenericEnumValue('CU_RES_VIEW_FORMAT_UNSIGNED_BC6H', 32, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_SIGNED_BC6H <- GenericEnumValue('CU_RES_VIEW_FORMAT_SIGNED_BC6H', 33, 'CUresourceViewFormat')
CU_RES_VIEW_FORMAT_UNSIGNED_BC7 <- GenericEnumValue('CU_RES_VIEW_FORMAT_UNSIGNED_BC7', 34, 'CUresourceViewFormat')

#####################
setClass('cudaError_t', representation(names = 'character'), contains = 'EnumValue')
cudaError_tValues = EnumDef('cudaError_t', structure(as.integer(c(0,
1,
2,
3,
4,
5,
6,
7,
8,
9,
10,
11,
12,
13,
14,
15,
16,
17,
18,
19,
20,
21,
22,
23,
24,
25,
26,
27,
28,
29,
30,
31,
32,
33,
34,
35,
36,
37,
38,
39,
40,
41,
42,
43,
44,
45,
46,
47,
48,
49,
50,
51,
54,
55,
56,
57,
58,
59,
60,
61,
62,
63,
64,
65,
66,
67,
68,
69,
70,
71,
127,
10000)),
names = c("cudaSuccess",
"cudaErrorMissingConfiguration",
"cudaErrorMemoryAllocation",
"cudaErrorInitializationError",
"cudaErrorLaunchFailure",
"cudaErrorPriorLaunchFailure",
"cudaErrorLaunchTimeout",
"cudaErrorLaunchOutOfResources",
"cudaErrorInvalidDeviceFunction",
"cudaErrorInvalidConfiguration",
"cudaErrorInvalidDevice",
"cudaErrorInvalidValue",
"cudaErrorInvalidPitchValue",
"cudaErrorInvalidSymbol",
"cudaErrorMapBufferObjectFailed",
"cudaErrorUnmapBufferObjectFailed",
"cudaErrorInvalidHostPointer",
"cudaErrorInvalidDevicePointer",
"cudaErrorInvalidTexture",
"cudaErrorInvalidTextureBinding",
"cudaErrorInvalidChannelDescriptor",
"cudaErrorInvalidMemcpyDirection",
"cudaErrorAddressOfConstant",
"cudaErrorTextureFetchFailed",
"cudaErrorTextureNotBound",
"cudaErrorSynchronizationError",
"cudaErrorInvalidFilterSetting",
"cudaErrorInvalidNormSetting",
"cudaErrorMixedDeviceExecution",
"cudaErrorCudartUnloading",
"cudaErrorUnknown",
"cudaErrorNotYetImplemented",
"cudaErrorMemoryValueTooLarge",
"cudaErrorInvalidResourceHandle",
"cudaErrorNotReady",
"cudaErrorInsufficientDriver",
"cudaErrorSetOnActiveProcess",
"cudaErrorInvalidSurface",
"cudaErrorNoDevice",
"cudaErrorECCUncorrectable",
"cudaErrorSharedObjectSymbolNotFound",
"cudaErrorSharedObjectInitFailed",
"cudaErrorUnsupportedLimit",
"cudaErrorDuplicateVariableName",
"cudaErrorDuplicateTextureName",
"cudaErrorDuplicateSurfaceName",
"cudaErrorDevicesUnavailable",
"cudaErrorInvalidKernelImage",
"cudaErrorNoKernelImageForDevice",
"cudaErrorIncompatibleDriverContext",
"cudaErrorPeerAccessAlreadyEnabled",
"cudaErrorPeerAccessNotEnabled",
"cudaErrorDeviceAlreadyInUse",
"cudaErrorProfilerDisabled",
"cudaErrorProfilerNotInitialized",
"cudaErrorProfilerAlreadyStarted",
"cudaErrorProfilerAlreadyStopped",
"cudaErrorAssert",
"cudaErrorTooManyPeers",
"cudaErrorHostMemoryAlreadyRegistered",
"cudaErrorHostMemoryNotRegistered",
"cudaErrorOperatingSystem",
"cudaErrorPeerAccessUnsupported",
"cudaErrorLaunchMaxDepthExceeded",
"cudaErrorLaunchFileScopedTex",
"cudaErrorLaunchFileScopedSurf",
"cudaErrorSyncDepthExceeded",
"cudaErrorLaunchPendingCountExceeded",
"cudaErrorNotPermitted",
"cudaErrorNotSupported",
"cudaErrorStartupFailure",
"cudaErrorApiFailureBase")))


setAs('numeric', 'cudaError_t', function(from)  asEnumValue(from, cudaError_tValues, 'cudaError_t', prefix = "cuda"))
setAs('character', 'cudaError_t', function(from)  asEnumValue(from, cudaError_tValues, 'cudaError_t', prefix = "cuda"))
setAs('integer', 'cudaError_t', function(from)  asEnumValue(from, cudaError_tValues, 'cudaError_t', prefix = "cuda"))


cudaSuccess <- GenericEnumValue('cudaSuccess', 0, 'cudaError_t')
cudaErrorMissingConfiguration <- GenericEnumValue('cudaErrorMissingConfiguration', 1, 'cudaError_t')
cudaErrorMemoryAllocation <- GenericEnumValue('cudaErrorMemoryAllocation', 2, 'cudaError_t')
cudaErrorInitializationError <- GenericEnumValue('cudaErrorInitializationError', 3, 'cudaError_t')
cudaErrorLaunchFailure <- GenericEnumValue('cudaErrorLaunchFailure', 4, 'cudaError_t')
cudaErrorPriorLaunchFailure <- GenericEnumValue('cudaErrorPriorLaunchFailure', 5, 'cudaError_t')
cudaErrorLaunchTimeout <- GenericEnumValue('cudaErrorLaunchTimeout', 6, 'cudaError_t')
cudaErrorLaunchOutOfResources <- GenericEnumValue('cudaErrorLaunchOutOfResources', 7, 'cudaError_t')
cudaErrorInvalidDeviceFunction <- GenericEnumValue('cudaErrorInvalidDeviceFunction', 8, 'cudaError_t')
cudaErrorInvalidConfiguration <- GenericEnumValue('cudaErrorInvalidConfiguration', 9, 'cudaError_t')
cudaErrorInvalidDevice <- GenericEnumValue('cudaErrorInvalidDevice', 10, 'cudaError_t')
cudaErrorInvalidValue <- GenericEnumValue('cudaErrorInvalidValue', 11, 'cudaError_t')
cudaErrorInvalidPitchValue <- GenericEnumValue('cudaErrorInvalidPitchValue', 12, 'cudaError_t')
cudaErrorInvalidSymbol <- GenericEnumValue('cudaErrorInvalidSymbol', 13, 'cudaError_t')
cudaErrorMapBufferObjectFailed <- GenericEnumValue('cudaErrorMapBufferObjectFailed', 14, 'cudaError_t')
cudaErrorUnmapBufferObjectFailed <- GenericEnumValue('cudaErrorUnmapBufferObjectFailed', 15, 'cudaError_t')
cudaErrorInvalidHostPointer <- GenericEnumValue('cudaErrorInvalidHostPointer', 16, 'cudaError_t')
cudaErrorInvalidDevicePointer <- GenericEnumValue('cudaErrorInvalidDevicePointer', 17, 'cudaError_t')
cudaErrorInvalidTexture <- GenericEnumValue('cudaErrorInvalidTexture', 18, 'cudaError_t')
cudaErrorInvalidTextureBinding <- GenericEnumValue('cudaErrorInvalidTextureBinding', 19, 'cudaError_t')
cudaErrorInvalidChannelDescriptor <- GenericEnumValue('cudaErrorInvalidChannelDescriptor', 20, 'cudaError_t')
cudaErrorInvalidMemcpyDirection <- GenericEnumValue('cudaErrorInvalidMemcpyDirection', 21, 'cudaError_t')
cudaErrorAddressOfConstant <- GenericEnumValue('cudaErrorAddressOfConstant', 22, 'cudaError_t')
cudaErrorTextureFetchFailed <- GenericEnumValue('cudaErrorTextureFetchFailed', 23, 'cudaError_t')
cudaErrorTextureNotBound <- GenericEnumValue('cudaErrorTextureNotBound', 24, 'cudaError_t')
cudaErrorSynchronizationError <- GenericEnumValue('cudaErrorSynchronizationError', 25, 'cudaError_t')
cudaErrorInvalidFilterSetting <- GenericEnumValue('cudaErrorInvalidFilterSetting', 26, 'cudaError_t')
cudaErrorInvalidNormSetting <- GenericEnumValue('cudaErrorInvalidNormSetting', 27, 'cudaError_t')
cudaErrorMixedDeviceExecution <- GenericEnumValue('cudaErrorMixedDeviceExecution', 28, 'cudaError_t')
cudaErrorCudartUnloading <- GenericEnumValue('cudaErrorCudartUnloading', 29, 'cudaError_t')
cudaErrorUnknown <- GenericEnumValue('cudaErrorUnknown', 30, 'cudaError_t')
cudaErrorNotYetImplemented <- GenericEnumValue('cudaErrorNotYetImplemented', 31, 'cudaError_t')
cudaErrorMemoryValueTooLarge <- GenericEnumValue('cudaErrorMemoryValueTooLarge', 32, 'cudaError_t')
cudaErrorInvalidResourceHandle <- GenericEnumValue('cudaErrorInvalidResourceHandle', 33, 'cudaError_t')
cudaErrorNotReady <- GenericEnumValue('cudaErrorNotReady', 34, 'cudaError_t')
cudaErrorInsufficientDriver <- GenericEnumValue('cudaErrorInsufficientDriver', 35, 'cudaError_t')
cudaErrorSetOnActiveProcess <- GenericEnumValue('cudaErrorSetOnActiveProcess', 36, 'cudaError_t')
cudaErrorInvalidSurface <- GenericEnumValue('cudaErrorInvalidSurface', 37, 'cudaError_t')
cudaErrorNoDevice <- GenericEnumValue('cudaErrorNoDevice', 38, 'cudaError_t')
cudaErrorECCUncorrectable <- GenericEnumValue('cudaErrorECCUncorrectable', 39, 'cudaError_t')
cudaErrorSharedObjectSymbolNotFound <- GenericEnumValue('cudaErrorSharedObjectSymbolNotFound', 40, 'cudaError_t')
cudaErrorSharedObjectInitFailed <- GenericEnumValue('cudaErrorSharedObjectInitFailed', 41, 'cudaError_t')
cudaErrorUnsupportedLimit <- GenericEnumValue('cudaErrorUnsupportedLimit', 42, 'cudaError_t')
cudaErrorDuplicateVariableName <- GenericEnumValue('cudaErrorDuplicateVariableName', 43, 'cudaError_t')
cudaErrorDuplicateTextureName <- GenericEnumValue('cudaErrorDuplicateTextureName', 44, 'cudaError_t')
cudaErrorDuplicateSurfaceName <- GenericEnumValue('cudaErrorDuplicateSurfaceName', 45, 'cudaError_t')
cudaErrorDevicesUnavailable <- GenericEnumValue('cudaErrorDevicesUnavailable', 46, 'cudaError_t')
cudaErrorInvalidKernelImage <- GenericEnumValue('cudaErrorInvalidKernelImage', 47, 'cudaError_t')
cudaErrorNoKernelImageForDevice <- GenericEnumValue('cudaErrorNoKernelImageForDevice', 48, 'cudaError_t')
cudaErrorIncompatibleDriverContext <- GenericEnumValue('cudaErrorIncompatibleDriverContext', 49, 'cudaError_t')
cudaErrorPeerAccessAlreadyEnabled <- GenericEnumValue('cudaErrorPeerAccessAlreadyEnabled', 50, 'cudaError_t')
cudaErrorPeerAccessNotEnabled <- GenericEnumValue('cudaErrorPeerAccessNotEnabled', 51, 'cudaError_t')
cudaErrorDeviceAlreadyInUse <- GenericEnumValue('cudaErrorDeviceAlreadyInUse', 54, 'cudaError_t')
cudaErrorProfilerDisabled <- GenericEnumValue('cudaErrorProfilerDisabled', 55, 'cudaError_t')
cudaErrorProfilerNotInitialized <- GenericEnumValue('cudaErrorProfilerNotInitialized', 56, 'cudaError_t')
cudaErrorProfilerAlreadyStarted <- GenericEnumValue('cudaErrorProfilerAlreadyStarted', 57, 'cudaError_t')
cudaErrorProfilerAlreadyStopped <- GenericEnumValue('cudaErrorProfilerAlreadyStopped', 58, 'cudaError_t')
cudaErrorAssert <- GenericEnumValue('cudaErrorAssert', 59, 'cudaError_t')
cudaErrorTooManyPeers <- GenericEnumValue('cudaErrorTooManyPeers', 60, 'cudaError_t')
cudaErrorHostMemoryAlreadyRegistered <- GenericEnumValue('cudaErrorHostMemoryAlreadyRegistered', 61, 'cudaError_t')
cudaErrorHostMemoryNotRegistered <- GenericEnumValue('cudaErrorHostMemoryNotRegistered', 62, 'cudaError_t')
cudaErrorOperatingSystem <- GenericEnumValue('cudaErrorOperatingSystem', 63, 'cudaError_t')
cudaErrorPeerAccessUnsupported <- GenericEnumValue('cudaErrorPeerAccessUnsupported', 64, 'cudaError_t')
cudaErrorLaunchMaxDepthExceeded <- GenericEnumValue('cudaErrorLaunchMaxDepthExceeded', 65, 'cudaError_t')
cudaErrorLaunchFileScopedTex <- GenericEnumValue('cudaErrorLaunchFileScopedTex', 66, 'cudaError_t')
cudaErrorLaunchFileScopedSurf <- GenericEnumValue('cudaErrorLaunchFileScopedSurf', 67, 'cudaError_t')
cudaErrorSyncDepthExceeded <- GenericEnumValue('cudaErrorSyncDepthExceeded', 68, 'cudaError_t')
cudaErrorLaunchPendingCountExceeded <- GenericEnumValue('cudaErrorLaunchPendingCountExceeded', 69, 'cudaError_t')
cudaErrorNotPermitted <- GenericEnumValue('cudaErrorNotPermitted', 70, 'cudaError_t')
cudaErrorNotSupported <- GenericEnumValue('cudaErrorNotSupported', 71, 'cudaError_t')
cudaErrorStartupFailure <- GenericEnumValue('cudaErrorStartupFailure', 127, 'cudaError_t')
cudaErrorApiFailureBase <- GenericEnumValue('cudaErrorApiFailureBase', 10000, 'cudaError_t')

#####################
setClass('cudaOutputMode_t', representation(names = 'character'), contains = 'EnumValue')
cudaOutputMode_tValues = EnumDef('cudaOutputMode_t', structure(as.integer(c(0,
1)),
names = c("cudaKeyValuePair",
"cudaCSV")))


setAs('numeric', 'cudaOutputMode_t', function(from)  asEnumValue(from, cudaOutputMode_tValues, 'cudaOutputMode_t', prefix = "cuda"))
setAs('character', 'cudaOutputMode_t', function(from)  asEnumValue(from, cudaOutputMode_tValues, 'cudaOutputMode_t', prefix = "cuda"))
setAs('integer', 'cudaOutputMode_t', function(from)  asEnumValue(from, cudaOutputMode_tValues, 'cudaOutputMode_t', prefix = "cuda"))


cudaKeyValuePair <- GenericEnumValue('cudaKeyValuePair', 0, 'cudaOutputMode_t')
cudaCSV <- GenericEnumValue('cudaCSV', 1, 'cudaOutputMode_t')

#####################
setClass('cublasStatus_t', representation(names = 'character'), contains = 'EnumValue')
cublasStatus_tValues = EnumDef('cublasStatus_t', structure(as.integer(c(0,
1,
3,
7,
8,
11,
13,
14)),
names = c("CUBLAS_STATUS_SUCCESS",
"CUBLAS_STATUS_NOT_INITIALIZED",
"CUBLAS_STATUS_ALLOC_FAILED",
"CUBLAS_STATUS_INVALID_VALUE",
"CUBLAS_STATUS_ARCH_MISMATCH",
"CUBLAS_STATUS_MAPPING_ERROR",
"CUBLAS_STATUS_EXECUTION_FAILED",
"CUBLAS_STATUS_INTERNAL_ERROR")))


setAs('numeric', 'cublasStatus_t', function(from)  asEnumValue(from, cublasStatus_tValues, 'cublasStatus_t', prefix = "CUBLAS_STATUS_"))
setAs('character', 'cublasStatus_t', function(from)  asEnumValue(from, cublasStatus_tValues, 'cublasStatus_t', prefix = "CUBLAS_STATUS_"))
setAs('integer', 'cublasStatus_t', function(from)  asEnumValue(from, cublasStatus_tValues, 'cublasStatus_t', prefix = "CUBLAS_STATUS_"))


CUBLAS_STATUS_SUCCESS <- GenericEnumValue('CUBLAS_STATUS_SUCCESS', 0, 'cublasStatus_t')
CUBLAS_STATUS_NOT_INITIALIZED <- GenericEnumValue('CUBLAS_STATUS_NOT_INITIALIZED', 1, 'cublasStatus_t')
CUBLAS_STATUS_ALLOC_FAILED <- GenericEnumValue('CUBLAS_STATUS_ALLOC_FAILED', 3, 'cublasStatus_t')
CUBLAS_STATUS_INVALID_VALUE <- GenericEnumValue('CUBLAS_STATUS_INVALID_VALUE', 7, 'cublasStatus_t')
CUBLAS_STATUS_ARCH_MISMATCH <- GenericEnumValue('CUBLAS_STATUS_ARCH_MISMATCH', 8, 'cublasStatus_t')
CUBLAS_STATUS_MAPPING_ERROR <- GenericEnumValue('CUBLAS_STATUS_MAPPING_ERROR', 11, 'cublasStatus_t')
CUBLAS_STATUS_EXECUTION_FAILED <- GenericEnumValue('CUBLAS_STATUS_EXECUTION_FAILED', 13, 'cublasStatus_t')
CUBLAS_STATUS_INTERNAL_ERROR <- GenericEnumValue('CUBLAS_STATUS_INTERNAL_ERROR', 14, 'cublasStatus_t')

#####################
setClass('cublasFillMode_t', representation(names = 'character'), contains = 'EnumValue')
cublasFillMode_tValues = EnumDef('cublasFillMode_t', structure(as.integer(c(0,
1)),
names = c("CUBLAS_FILL_MODE_LOWER",
"CUBLAS_FILL_MODE_UPPER")))


setAs('numeric', 'cublasFillMode_t', function(from)  asEnumValue(from, cublasFillMode_tValues, 'cublasFillMode_t', prefix = "CUBLAS_FILL_MODE_"))
setAs('character', 'cublasFillMode_t', function(from)  asEnumValue(from, cublasFillMode_tValues, 'cublasFillMode_t', prefix = "CUBLAS_FILL_MODE_"))
setAs('integer', 'cublasFillMode_t', function(from)  asEnumValue(from, cublasFillMode_tValues, 'cublasFillMode_t', prefix = "CUBLAS_FILL_MODE_"))


CUBLAS_FILL_MODE_LOWER <- GenericEnumValue('CUBLAS_FILL_MODE_LOWER', 0, 'cublasFillMode_t')
CUBLAS_FILL_MODE_UPPER <- GenericEnumValue('CUBLAS_FILL_MODE_UPPER', 1, 'cublasFillMode_t')

#####################
setClass('cublasDiagType_t', representation(names = 'character'), contains = 'EnumValue')
cublasDiagType_tValues = EnumDef('cublasDiagType_t', structure(as.integer(c(0,
1)),
names = c("CUBLAS_DIAG_NON_UNIT",
"CUBLAS_DIAG_UNIT")))


setAs('numeric', 'cublasDiagType_t', function(from)  asEnumValue(from, cublasDiagType_tValues, 'cublasDiagType_t', prefix = "CUBLAS_DIAG_"))
setAs('character', 'cublasDiagType_t', function(from)  asEnumValue(from, cublasDiagType_tValues, 'cublasDiagType_t', prefix = "CUBLAS_DIAG_"))
setAs('integer', 'cublasDiagType_t', function(from)  asEnumValue(from, cublasDiagType_tValues, 'cublasDiagType_t', prefix = "CUBLAS_DIAG_"))


CUBLAS_DIAG_NON_UNIT <- GenericEnumValue('CUBLAS_DIAG_NON_UNIT', 0, 'cublasDiagType_t')
CUBLAS_DIAG_UNIT <- GenericEnumValue('CUBLAS_DIAG_UNIT', 1, 'cublasDiagType_t')

#####################
setClass('cublasSideMode_t', representation(names = 'character'), contains = 'EnumValue')
cublasSideMode_tValues = EnumDef('cublasSideMode_t', structure(as.integer(c(0,
1)),
names = c("CUBLAS_SIDE_LEFT",
"CUBLAS_SIDE_RIGHT")))


setAs('numeric', 'cublasSideMode_t', function(from)  asEnumValue(from, cublasSideMode_tValues, 'cublasSideMode_t', prefix = "CUBLAS_SIDE_"))
setAs('character', 'cublasSideMode_t', function(from)  asEnumValue(from, cublasSideMode_tValues, 'cublasSideMode_t', prefix = "CUBLAS_SIDE_"))
setAs('integer', 'cublasSideMode_t', function(from)  asEnumValue(from, cublasSideMode_tValues, 'cublasSideMode_t', prefix = "CUBLAS_SIDE_"))


CUBLAS_SIDE_LEFT <- GenericEnumValue('CUBLAS_SIDE_LEFT', 0, 'cublasSideMode_t')
CUBLAS_SIDE_RIGHT <- GenericEnumValue('CUBLAS_SIDE_RIGHT', 1, 'cublasSideMode_t')

#####################
setClass('cublasPointerMode_t', representation(names = 'character'), contains = 'EnumValue')
cublasPointerMode_tValues = EnumDef('cublasPointerMode_t', structure(as.integer(c(0,
1)),
names = c("CUBLAS_POINTER_MODE_HOST",
"CUBLAS_POINTER_MODE_DEVICE")))


setAs('numeric', 'cublasPointerMode_t', function(from)  asEnumValue(from, cublasPointerMode_tValues, 'cublasPointerMode_t', prefix = "CUBLAS_POINTER_MODE_"))
setAs('character', 'cublasPointerMode_t', function(from)  asEnumValue(from, cublasPointerMode_tValues, 'cublasPointerMode_t', prefix = "CUBLAS_POINTER_MODE_"))
setAs('integer', 'cublasPointerMode_t', function(from)  asEnumValue(from, cublasPointerMode_tValues, 'cublasPointerMode_t', prefix = "CUBLAS_POINTER_MODE_"))


CUBLAS_POINTER_MODE_HOST <- GenericEnumValue('CUBLAS_POINTER_MODE_HOST', 0, 'cublasPointerMode_t')
CUBLAS_POINTER_MODE_DEVICE <- GenericEnumValue('CUBLAS_POINTER_MODE_DEVICE', 1, 'cublasPointerMode_t')

#####################
setClass('cublasOperation_t', representation(names = 'character'), contains = 'EnumValue')
cublasOperation_tValues = EnumDef('cublasOperation_t', structure(as.integer(c(0,
1,
2)),
names = c("CUBLAS_OP_N",
"CUBLAS_OP_T",
"CUBLAS_OP_C")))


setAs('numeric', 'cublasOperation_t', function(from)  asEnumValue(from, cublasOperation_tValues, 'cublasOperation_t', prefix = "CUBLAS_OP_"))
setAs('character', 'cublasOperation_t', function(from)  asEnumValue(from, cublasOperation_tValues, 'cublasOperation_t', prefix = "CUBLAS_OP_"))
setAs('integer', 'cublasOperation_t', function(from)  asEnumValue(from, cublasOperation_tValues, 'cublasOperation_t', prefix = "CUBLAS_OP_"))


CUBLAS_OP_N <- GenericEnumValue('CUBLAS_OP_N', 0, 'cublasOperation_t')
CUBLAS_OP_T <- GenericEnumValue('CUBLAS_OP_T', 1, 'cublasOperation_t')
CUBLAS_OP_C <- GenericEnumValue('CUBLAS_OP_C', 2, 'cublasOperation_t')

#####################
setClass('cublasAtomicsMode_t', representation(names = 'character'), contains = 'EnumValue')
cublasAtomicsMode_tValues = EnumDef('cublasAtomicsMode_t', structure(as.integer(c(0,
1)),
names = c("CUBLAS_ATOMICS_NOT_ALLOWED",
"CUBLAS_ATOMICS_ALLOWED")))


setAs('numeric', 'cublasAtomicsMode_t', function(from)  asEnumValue(from, cublasAtomicsMode_tValues, 'cublasAtomicsMode_t', prefix = "CUBLAS_ATOMICS_"))
setAs('character', 'cublasAtomicsMode_t', function(from)  asEnumValue(from, cublasAtomicsMode_tValues, 'cublasAtomicsMode_t', prefix = "CUBLAS_ATOMICS_"))
setAs('integer', 'cublasAtomicsMode_t', function(from)  asEnumValue(from, cublasAtomicsMode_tValues, 'cublasAtomicsMode_t', prefix = "CUBLAS_ATOMICS_"))


CUBLAS_ATOMICS_NOT_ALLOWED <- GenericEnumValue('CUBLAS_ATOMICS_NOT_ALLOWED', 0, 'cublasAtomicsMode_t')
CUBLAS_ATOMICS_ALLOWED <- GenericEnumValue('CUBLAS_ATOMICS_ALLOWED', 1, 'cublasAtomicsMode_t')

#####################
setClass('cudaRoundMode', representation(names = 'character'), contains = 'EnumValue')
cudaRoundModeValues = EnumDef('cudaRoundMode', structure(as.integer(c(0,
1,
2,
3)),
names = c("cudaRoundNearest",
"cudaRoundZero",
"cudaRoundPosInf",
"cudaRoundMinInf")))


setAs('numeric', 'cudaRoundMode', function(from)  asEnumValue(from, cudaRoundModeValues, 'cudaRoundMode', prefix = "cudaRound"))
setAs('character', 'cudaRoundMode', function(from)  asEnumValue(from, cudaRoundModeValues, 'cudaRoundMode', prefix = "cudaRound"))
setAs('integer', 'cudaRoundMode', function(from)  asEnumValue(from, cudaRoundModeValues, 'cudaRoundMode', prefix = "cudaRound"))


cudaRoundNearest <- GenericEnumValue('cudaRoundNearest', 0, 'cudaRoundMode')
cudaRoundZero <- GenericEnumValue('cudaRoundZero', 1, 'cudaRoundMode')
cudaRoundPosInf <- GenericEnumValue('cudaRoundPosInf', 2, 'cudaRoundMode')
cudaRoundMinInf <- GenericEnumValue('cudaRoundMinInf', 3, 'cudaRoundMode')

#####################
setClass('cudaChannelFormatKind', representation(names = 'character'), contains = 'EnumValue')
cudaChannelFormatKindValues = EnumDef('cudaChannelFormatKind', structure(as.integer(c(0,
1,
2,
3)),
names = c("cudaChannelFormatKindSigned",
"cudaChannelFormatKindUnsigned",
"cudaChannelFormatKindFloat",
"cudaChannelFormatKindNone")))


setAs('numeric', 'cudaChannelFormatKind', function(from)  asEnumValue(from, cudaChannelFormatKindValues, 'cudaChannelFormatKind', prefix = "cudaChannelFormatKind"))
setAs('character', 'cudaChannelFormatKind', function(from)  asEnumValue(from, cudaChannelFormatKindValues, 'cudaChannelFormatKind', prefix = "cudaChannelFormatKind"))
setAs('integer', 'cudaChannelFormatKind', function(from)  asEnumValue(from, cudaChannelFormatKindValues, 'cudaChannelFormatKind', prefix = "cudaChannelFormatKind"))


cudaChannelFormatKindSigned <- GenericEnumValue('cudaChannelFormatKindSigned', 0, 'cudaChannelFormatKind')
cudaChannelFormatKindUnsigned <- GenericEnumValue('cudaChannelFormatKindUnsigned', 1, 'cudaChannelFormatKind')
cudaChannelFormatKindFloat <- GenericEnumValue('cudaChannelFormatKindFloat', 2, 'cudaChannelFormatKind')
cudaChannelFormatKindNone <- GenericEnumValue('cudaChannelFormatKindNone', 3, 'cudaChannelFormatKind')

#####################
setClass('cudaMemoryType', representation(names = 'character'), contains = 'EnumValue')
cudaMemoryTypeValues = EnumDef('cudaMemoryType', structure(as.integer(c(1,
2)),
names = c("cudaMemoryTypeHost",
"cudaMemoryTypeDevice")))


setAs('numeric', 'cudaMemoryType', function(from)  asEnumValue(from, cudaMemoryTypeValues, 'cudaMemoryType', prefix = "cudaMemoryType"))
setAs('character', 'cudaMemoryType', function(from)  asEnumValue(from, cudaMemoryTypeValues, 'cudaMemoryType', prefix = "cudaMemoryType"))
setAs('integer', 'cudaMemoryType', function(from)  asEnumValue(from, cudaMemoryTypeValues, 'cudaMemoryType', prefix = "cudaMemoryType"))


cudaMemoryTypeHost <- GenericEnumValue('cudaMemoryTypeHost', 1, 'cudaMemoryType')
cudaMemoryTypeDevice <- GenericEnumValue('cudaMemoryTypeDevice', 2, 'cudaMemoryType')

#####################
setClass('cudaMemcpyKind', representation(names = 'character'), contains = 'EnumValue')
cudaMemcpyKindValues = EnumDef('cudaMemcpyKind', structure(as.integer(c(0,
1,
2,
3,
4)),
names = c("cudaMemcpyHostToHost",
"cudaMemcpyHostToDevice",
"cudaMemcpyDeviceToHost",
"cudaMemcpyDeviceToDevice",
"cudaMemcpyDefault")))


setAs('numeric', 'cudaMemcpyKind', function(from)  asEnumValue(from, cudaMemcpyKindValues, 'cudaMemcpyKind', prefix = "cudaMemcpy"))
setAs('character', 'cudaMemcpyKind', function(from)  asEnumValue(from, cudaMemcpyKindValues, 'cudaMemcpyKind', prefix = "cudaMemcpy"))
setAs('integer', 'cudaMemcpyKind', function(from)  asEnumValue(from, cudaMemcpyKindValues, 'cudaMemcpyKind', prefix = "cudaMemcpy"))


cudaMemcpyHostToHost <- GenericEnumValue('cudaMemcpyHostToHost', 0, 'cudaMemcpyKind')
cudaMemcpyHostToDevice <- GenericEnumValue('cudaMemcpyHostToDevice', 1, 'cudaMemcpyKind')
cudaMemcpyDeviceToHost <- GenericEnumValue('cudaMemcpyDeviceToHost', 2, 'cudaMemcpyKind')
cudaMemcpyDeviceToDevice <- GenericEnumValue('cudaMemcpyDeviceToDevice', 3, 'cudaMemcpyKind')
cudaMemcpyDefault <- GenericEnumValue('cudaMemcpyDefault', 4, 'cudaMemcpyKind')

#####################
setClass('cudaGraphicsRegisterFlags', representation(names = 'character'), contains = 'BitwiseValue')
cudaGraphicsRegisterFlagsValues = BitwiseValue(structure(as.integer(c(0,
1,
2,
4,
8)),
names = c("cudaGraphicsRegisterFlagsNone",
"cudaGraphicsRegisterFlagsReadOnly",
"cudaGraphicsRegisterFlagsWriteDiscard",
"cudaGraphicsRegisterFlagsSurfaceLoadStore",
"cudaGraphicsRegisterFlagsTextureGather")), class ='cudaGraphicsRegisterFlags')


setAs('numeric', 'cudaGraphicsRegisterFlags', function(from)  asBitwiseValue(from, cudaGraphicsRegisterFlagsValues, 'cudaGraphicsRegisterFlags', prefix = "cudaGraphicsRegisterFlags"))
setAs('character', 'cudaGraphicsRegisterFlags', function(from)  asBitwiseValue(from, cudaGraphicsRegisterFlagsValues, 'cudaGraphicsRegisterFlags', prefix = "cudaGraphicsRegisterFlags"))
setAs('integer', 'cudaGraphicsRegisterFlags', function(from)  asBitwiseValue(from, cudaGraphicsRegisterFlagsValues, 'cudaGraphicsRegisterFlags', prefix = "cudaGraphicsRegisterFlags"))


cudaGraphicsRegisterFlagsNone <- BitwiseValue(0, 'cudaGraphicsRegisterFlagsNone', class = 'cudaGraphicsRegisterFlags')
cudaGraphicsRegisterFlagsReadOnly <- BitwiseValue(1, 'cudaGraphicsRegisterFlagsReadOnly', class = 'cudaGraphicsRegisterFlags')
cudaGraphicsRegisterFlagsWriteDiscard <- BitwiseValue(2, 'cudaGraphicsRegisterFlagsWriteDiscard', class = 'cudaGraphicsRegisterFlags')
cudaGraphicsRegisterFlagsSurfaceLoadStore <- BitwiseValue(4, 'cudaGraphicsRegisterFlagsSurfaceLoadStore', class = 'cudaGraphicsRegisterFlags')
cudaGraphicsRegisterFlagsTextureGather <- BitwiseValue(8, 'cudaGraphicsRegisterFlagsTextureGather', class = 'cudaGraphicsRegisterFlags')

#####################
setClass('cudaLimit', representation(names = 'character'), contains = 'EnumValue')
cudaLimitValues = EnumDef('cudaLimit', structure(as.integer(c(0,
1,
2,
3,
4)),
names = c("cudaLimitStackSize",
"cudaLimitPrintfFifoSize",
"cudaLimitMallocHeapSize",
"cudaLimitDevRuntimeSyncDepth",
"cudaLimitDevRuntimePendingLaunchCount")))


setAs('numeric', 'cudaLimit', function(from)  asEnumValue(from, cudaLimitValues, 'cudaLimit', prefix = "cudaLimit"))
setAs('character', 'cudaLimit', function(from)  asEnumValue(from, cudaLimitValues, 'cudaLimit', prefix = "cudaLimit"))
setAs('integer', 'cudaLimit', function(from)  asEnumValue(from, cudaLimitValues, 'cudaLimit', prefix = "cudaLimit"))


cudaLimitStackSize <- GenericEnumValue('cudaLimitStackSize', 0, 'cudaLimit')
cudaLimitPrintfFifoSize <- GenericEnumValue('cudaLimitPrintfFifoSize', 1, 'cudaLimit')
cudaLimitMallocHeapSize <- GenericEnumValue('cudaLimitMallocHeapSize', 2, 'cudaLimit')
cudaLimitDevRuntimeSyncDepth <- GenericEnumValue('cudaLimitDevRuntimeSyncDepth', 3, 'cudaLimit')
cudaLimitDevRuntimePendingLaunchCount <- GenericEnumValue('cudaLimitDevRuntimePendingLaunchCount', 4, 'cudaLimit')

#####################
setClass('cudaGraphicsMapFlags', representation(names = 'character'), contains = 'EnumValue')
cudaGraphicsMapFlagsValues = EnumDef('cudaGraphicsMapFlags', structure(as.integer(c(0,
1,
2)),
names = c("cudaGraphicsMapFlagsNone",
"cudaGraphicsMapFlagsReadOnly",
"cudaGraphicsMapFlagsWriteDiscard")))


setAs('numeric', 'cudaGraphicsMapFlags', function(from)  asEnumValue(from, cudaGraphicsMapFlagsValues, 'cudaGraphicsMapFlags', prefix = "cudaGraphicsMapFlags"))
setAs('character', 'cudaGraphicsMapFlags', function(from)  asEnumValue(from, cudaGraphicsMapFlagsValues, 'cudaGraphicsMapFlags', prefix = "cudaGraphicsMapFlags"))
setAs('integer', 'cudaGraphicsMapFlags', function(from)  asEnumValue(from, cudaGraphicsMapFlagsValues, 'cudaGraphicsMapFlags', prefix = "cudaGraphicsMapFlags"))


cudaGraphicsMapFlagsNone <- GenericEnumValue('cudaGraphicsMapFlagsNone', 0, 'cudaGraphicsMapFlags')
cudaGraphicsMapFlagsReadOnly <- GenericEnumValue('cudaGraphicsMapFlagsReadOnly', 1, 'cudaGraphicsMapFlags')
cudaGraphicsMapFlagsWriteDiscard <- GenericEnumValue('cudaGraphicsMapFlagsWriteDiscard', 2, 'cudaGraphicsMapFlags')

#####################
setClass('cudaFuncCache', representation(names = 'character'), contains = 'EnumValue')
cudaFuncCacheValues = EnumDef('cudaFuncCache', structure(as.integer(c(0,
1,
2,
3)),
names = c("cudaFuncCachePreferNone",
"cudaFuncCachePreferShared",
"cudaFuncCachePreferL1",
"cudaFuncCachePreferEqual")))


setAs('numeric', 'cudaFuncCache', function(from)  asEnumValue(from, cudaFuncCacheValues, 'cudaFuncCache', prefix = "cudaFuncCachePrefer"))
setAs('character', 'cudaFuncCache', function(from)  asEnumValue(from, cudaFuncCacheValues, 'cudaFuncCache', prefix = "cudaFuncCachePrefer"))
setAs('integer', 'cudaFuncCache', function(from)  asEnumValue(from, cudaFuncCacheValues, 'cudaFuncCache', prefix = "cudaFuncCachePrefer"))


cudaFuncCachePreferNone <- GenericEnumValue('cudaFuncCachePreferNone', 0, 'cudaFuncCache')
cudaFuncCachePreferShared <- GenericEnumValue('cudaFuncCachePreferShared', 1, 'cudaFuncCache')
cudaFuncCachePreferL1 <- GenericEnumValue('cudaFuncCachePreferL1', 2, 'cudaFuncCache')
cudaFuncCachePreferEqual <- GenericEnumValue('cudaFuncCachePreferEqual', 3, 'cudaFuncCache')

#####################
setClass('cudaGraphicsCubeFace', representation(names = 'character'), contains = 'EnumValue')
cudaGraphicsCubeFaceValues = EnumDef('cudaGraphicsCubeFace', structure(as.integer(c(0,
1,
2,
3,
4,
5)),
names = c("cudaGraphicsCubeFacePositiveX",
"cudaGraphicsCubeFaceNegativeX",
"cudaGraphicsCubeFacePositiveY",
"cudaGraphicsCubeFaceNegativeY",
"cudaGraphicsCubeFacePositiveZ",
"cudaGraphicsCubeFaceNegativeZ")))


setAs('numeric', 'cudaGraphicsCubeFace', function(from)  asEnumValue(from, cudaGraphicsCubeFaceValues, 'cudaGraphicsCubeFace', prefix = "cudaGraphicsCubeFace"))
setAs('character', 'cudaGraphicsCubeFace', function(from)  asEnumValue(from, cudaGraphicsCubeFaceValues, 'cudaGraphicsCubeFace', prefix = "cudaGraphicsCubeFace"))
setAs('integer', 'cudaGraphicsCubeFace', function(from)  asEnumValue(from, cudaGraphicsCubeFaceValues, 'cudaGraphicsCubeFace', prefix = "cudaGraphicsCubeFace"))


cudaGraphicsCubeFacePositiveX <- GenericEnumValue('cudaGraphicsCubeFacePositiveX', 0, 'cudaGraphicsCubeFace')
cudaGraphicsCubeFaceNegativeX <- GenericEnumValue('cudaGraphicsCubeFaceNegativeX', 1, 'cudaGraphicsCubeFace')
cudaGraphicsCubeFacePositiveY <- GenericEnumValue('cudaGraphicsCubeFacePositiveY', 2, 'cudaGraphicsCubeFace')
cudaGraphicsCubeFaceNegativeY <- GenericEnumValue('cudaGraphicsCubeFaceNegativeY', 3, 'cudaGraphicsCubeFace')
cudaGraphicsCubeFacePositiveZ <- GenericEnumValue('cudaGraphicsCubeFacePositiveZ', 4, 'cudaGraphicsCubeFace')
cudaGraphicsCubeFaceNegativeZ <- GenericEnumValue('cudaGraphicsCubeFaceNegativeZ', 5, 'cudaGraphicsCubeFace')

#####################
setClass('cudaSurfaceBoundaryMode', representation(names = 'character'), contains = 'EnumValue')
cudaSurfaceBoundaryModeValues = EnumDef('cudaSurfaceBoundaryMode', structure(as.integer(c(0,
1,
2)),
names = c("cudaBoundaryModeZero",
"cudaBoundaryModeClamp",
"cudaBoundaryModeTrap")))


setAs('numeric', 'cudaSurfaceBoundaryMode', function(from)  asEnumValue(from, cudaSurfaceBoundaryModeValues, 'cudaSurfaceBoundaryMode', prefix = "cudaBoundaryMode"))
setAs('character', 'cudaSurfaceBoundaryMode', function(from)  asEnumValue(from, cudaSurfaceBoundaryModeValues, 'cudaSurfaceBoundaryMode', prefix = "cudaBoundaryMode"))
setAs('integer', 'cudaSurfaceBoundaryMode', function(from)  asEnumValue(from, cudaSurfaceBoundaryModeValues, 'cudaSurfaceBoundaryMode', prefix = "cudaBoundaryMode"))


cudaBoundaryModeZero <- GenericEnumValue('cudaBoundaryModeZero', 0, 'cudaSurfaceBoundaryMode')
cudaBoundaryModeClamp <- GenericEnumValue('cudaBoundaryModeClamp', 1, 'cudaSurfaceBoundaryMode')
cudaBoundaryModeTrap <- GenericEnumValue('cudaBoundaryModeTrap', 2, 'cudaSurfaceBoundaryMode')

#####################
setClass('cudaSharedMemConfig', representation(names = 'character'), contains = 'EnumValue')
cudaSharedMemConfigValues = EnumDef('cudaSharedMemConfig', structure(as.integer(c(0,
1,
2)),
names = c("cudaSharedMemBankSizeDefault",
"cudaSharedMemBankSizeFourByte",
"cudaSharedMemBankSizeEightByte")))


setAs('numeric', 'cudaSharedMemConfig', function(from)  asEnumValue(from, cudaSharedMemConfigValues, 'cudaSharedMemConfig', prefix = "cudaSharedMemBankSize"))
setAs('character', 'cudaSharedMemConfig', function(from)  asEnumValue(from, cudaSharedMemConfigValues, 'cudaSharedMemConfig', prefix = "cudaSharedMemBankSize"))
setAs('integer', 'cudaSharedMemConfig', function(from)  asEnumValue(from, cudaSharedMemConfigValues, 'cudaSharedMemConfig', prefix = "cudaSharedMemBankSize"))


cudaSharedMemBankSizeDefault <- GenericEnumValue('cudaSharedMemBankSizeDefault', 0, 'cudaSharedMemConfig')
cudaSharedMemBankSizeFourByte <- GenericEnumValue('cudaSharedMemBankSizeFourByte', 1, 'cudaSharedMemConfig')
cudaSharedMemBankSizeEightByte <- GenericEnumValue('cudaSharedMemBankSizeEightByte', 2, 'cudaSharedMemConfig')

#####################
setClass('cudaSurfaceFormatMode', representation(names = 'character'), contains = 'EnumValue')
cudaSurfaceFormatModeValues = EnumDef('cudaSurfaceFormatMode', structure(as.integer(c(0,
1)),
names = c("cudaFormatModeForced",
"cudaFormatModeAuto")))


setAs('numeric', 'cudaSurfaceFormatMode', function(from)  asEnumValue(from, cudaSurfaceFormatModeValues, 'cudaSurfaceFormatMode', prefix = "cudaFormatMode"))
setAs('character', 'cudaSurfaceFormatMode', function(from)  asEnumValue(from, cudaSurfaceFormatModeValues, 'cudaSurfaceFormatMode', prefix = "cudaFormatMode"))
setAs('integer', 'cudaSurfaceFormatMode', function(from)  asEnumValue(from, cudaSurfaceFormatModeValues, 'cudaSurfaceFormatMode', prefix = "cudaFormatMode"))


cudaFormatModeForced <- GenericEnumValue('cudaFormatModeForced', 0, 'cudaSurfaceFormatMode')
cudaFormatModeAuto <- GenericEnumValue('cudaFormatModeAuto', 1, 'cudaSurfaceFormatMode')

#####################
setClass('cudaResourceType', representation(names = 'character'), contains = 'EnumValue')
cudaResourceTypeValues = EnumDef('cudaResourceType', structure(as.integer(c(0,
1,
2,
3)),
names = c("cudaResourceTypeArray",
"cudaResourceTypeMipmappedArray",
"cudaResourceTypeLinear",
"cudaResourceTypePitch2D")))


setAs('numeric', 'cudaResourceType', function(from)  asEnumValue(from, cudaResourceTypeValues, 'cudaResourceType', prefix = "cudaResourceType"))
setAs('character', 'cudaResourceType', function(from)  asEnumValue(from, cudaResourceTypeValues, 'cudaResourceType', prefix = "cudaResourceType"))
setAs('integer', 'cudaResourceType', function(from)  asEnumValue(from, cudaResourceTypeValues, 'cudaResourceType', prefix = "cudaResourceType"))


cudaResourceTypeArray <- GenericEnumValue('cudaResourceTypeArray', 0, 'cudaResourceType')
cudaResourceTypeMipmappedArray <- GenericEnumValue('cudaResourceTypeMipmappedArray', 1, 'cudaResourceType')
cudaResourceTypeLinear <- GenericEnumValue('cudaResourceTypeLinear', 2, 'cudaResourceType')
cudaResourceTypePitch2D <- GenericEnumValue('cudaResourceTypePitch2D', 3, 'cudaResourceType')

#####################
setClass('cudaTextureAddressMode', representation(names = 'character'), contains = 'EnumValue')
cudaTextureAddressModeValues = EnumDef('cudaTextureAddressMode', structure(as.integer(c(0,
1,
2,
3)),
names = c("cudaAddressModeWrap",
"cudaAddressModeClamp",
"cudaAddressModeMirror",
"cudaAddressModeBorder")))


setAs('numeric', 'cudaTextureAddressMode', function(from)  asEnumValue(from, cudaTextureAddressModeValues, 'cudaTextureAddressMode', prefix = "cudaAddressMode"))
setAs('character', 'cudaTextureAddressMode', function(from)  asEnumValue(from, cudaTextureAddressModeValues, 'cudaTextureAddressMode', prefix = "cudaAddressMode"))
setAs('integer', 'cudaTextureAddressMode', function(from)  asEnumValue(from, cudaTextureAddressModeValues, 'cudaTextureAddressMode', prefix = "cudaAddressMode"))


cudaAddressModeWrap <- GenericEnumValue('cudaAddressModeWrap', 0, 'cudaTextureAddressMode')
cudaAddressModeClamp <- GenericEnumValue('cudaAddressModeClamp', 1, 'cudaTextureAddressMode')
cudaAddressModeMirror <- GenericEnumValue('cudaAddressModeMirror', 2, 'cudaTextureAddressMode')
cudaAddressModeBorder <- GenericEnumValue('cudaAddressModeBorder', 3, 'cudaTextureAddressMode')

#####################
setClass('cudaResourceViewFormat', representation(names = 'character'), contains = 'EnumValue')
cudaResourceViewFormatValues = EnumDef('cudaResourceViewFormat', structure(as.integer(c(0,
1,
2,
3,
4,
5,
6,
7,
8,
9,
10,
11,
12,
13,
14,
15,
16,
17,
18,
19,
20,
21,
22,
23,
24,
25,
26,
27,
28,
29,
30,
31,
32,
33,
34)),
names = c("cudaResViewFormatNone",
"cudaResViewFormatUnsignedChar1",
"cudaResViewFormatUnsignedChar2",
"cudaResViewFormatUnsignedChar4",
"cudaResViewFormatSignedChar1",
"cudaResViewFormatSignedChar2",
"cudaResViewFormatSignedChar4",
"cudaResViewFormatUnsignedShort1",
"cudaResViewFormatUnsignedShort2",
"cudaResViewFormatUnsignedShort4",
"cudaResViewFormatSignedShort1",
"cudaResViewFormatSignedShort2",
"cudaResViewFormatSignedShort4",
"cudaResViewFormatUnsignedInt1",
"cudaResViewFormatUnsignedInt2",
"cudaResViewFormatUnsignedInt4",
"cudaResViewFormatSignedInt1",
"cudaResViewFormatSignedInt2",
"cudaResViewFormatSignedInt4",
"cudaResViewFormatHalf1",
"cudaResViewFormatHalf2",
"cudaResViewFormatHalf4",
"cudaResViewFormatFloat1",
"cudaResViewFormatFloat2",
"cudaResViewFormatFloat4",
"cudaResViewFormatUnsignedBlockCompressed1",
"cudaResViewFormatUnsignedBlockCompressed2",
"cudaResViewFormatUnsignedBlockCompressed3",
"cudaResViewFormatUnsignedBlockCompressed4",
"cudaResViewFormatSignedBlockCompressed4",
"cudaResViewFormatUnsignedBlockCompressed5",
"cudaResViewFormatSignedBlockCompressed5",
"cudaResViewFormatUnsignedBlockCompressed6H",
"cudaResViewFormatSignedBlockCompressed6H",
"cudaResViewFormatUnsignedBlockCompressed7")))


setAs('numeric', 'cudaResourceViewFormat', function(from)  asEnumValue(from, cudaResourceViewFormatValues, 'cudaResourceViewFormat', prefix = "cudaResViewFormat"))
setAs('character', 'cudaResourceViewFormat', function(from)  asEnumValue(from, cudaResourceViewFormatValues, 'cudaResourceViewFormat', prefix = "cudaResViewFormat"))
setAs('integer', 'cudaResourceViewFormat', function(from)  asEnumValue(from, cudaResourceViewFormatValues, 'cudaResourceViewFormat', prefix = "cudaResViewFormat"))


cudaResViewFormatNone <- GenericEnumValue('cudaResViewFormatNone', 0, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedChar1 <- GenericEnumValue('cudaResViewFormatUnsignedChar1', 1, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedChar2 <- GenericEnumValue('cudaResViewFormatUnsignedChar2', 2, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedChar4 <- GenericEnumValue('cudaResViewFormatUnsignedChar4', 3, 'cudaResourceViewFormat')
cudaResViewFormatSignedChar1 <- GenericEnumValue('cudaResViewFormatSignedChar1', 4, 'cudaResourceViewFormat')
cudaResViewFormatSignedChar2 <- GenericEnumValue('cudaResViewFormatSignedChar2', 5, 'cudaResourceViewFormat')
cudaResViewFormatSignedChar4 <- GenericEnumValue('cudaResViewFormatSignedChar4', 6, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedShort1 <- GenericEnumValue('cudaResViewFormatUnsignedShort1', 7, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedShort2 <- GenericEnumValue('cudaResViewFormatUnsignedShort2', 8, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedShort4 <- GenericEnumValue('cudaResViewFormatUnsignedShort4', 9, 'cudaResourceViewFormat')
cudaResViewFormatSignedShort1 <- GenericEnumValue('cudaResViewFormatSignedShort1', 10, 'cudaResourceViewFormat')
cudaResViewFormatSignedShort2 <- GenericEnumValue('cudaResViewFormatSignedShort2', 11, 'cudaResourceViewFormat')
cudaResViewFormatSignedShort4 <- GenericEnumValue('cudaResViewFormatSignedShort4', 12, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedInt1 <- GenericEnumValue('cudaResViewFormatUnsignedInt1', 13, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedInt2 <- GenericEnumValue('cudaResViewFormatUnsignedInt2', 14, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedInt4 <- GenericEnumValue('cudaResViewFormatUnsignedInt4', 15, 'cudaResourceViewFormat')
cudaResViewFormatSignedInt1 <- GenericEnumValue('cudaResViewFormatSignedInt1', 16, 'cudaResourceViewFormat')
cudaResViewFormatSignedInt2 <- GenericEnumValue('cudaResViewFormatSignedInt2', 17, 'cudaResourceViewFormat')
cudaResViewFormatSignedInt4 <- GenericEnumValue('cudaResViewFormatSignedInt4', 18, 'cudaResourceViewFormat')
cudaResViewFormatHalf1 <- GenericEnumValue('cudaResViewFormatHalf1', 19, 'cudaResourceViewFormat')
cudaResViewFormatHalf2 <- GenericEnumValue('cudaResViewFormatHalf2', 20, 'cudaResourceViewFormat')
cudaResViewFormatHalf4 <- GenericEnumValue('cudaResViewFormatHalf4', 21, 'cudaResourceViewFormat')
cudaResViewFormatFloat1 <- GenericEnumValue('cudaResViewFormatFloat1', 22, 'cudaResourceViewFormat')
cudaResViewFormatFloat2 <- GenericEnumValue('cudaResViewFormatFloat2', 23, 'cudaResourceViewFormat')
cudaResViewFormatFloat4 <- GenericEnumValue('cudaResViewFormatFloat4', 24, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedBlockCompressed1 <- GenericEnumValue('cudaResViewFormatUnsignedBlockCompressed1', 25, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedBlockCompressed2 <- GenericEnumValue('cudaResViewFormatUnsignedBlockCompressed2', 26, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedBlockCompressed3 <- GenericEnumValue('cudaResViewFormatUnsignedBlockCompressed3', 27, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedBlockCompressed4 <- GenericEnumValue('cudaResViewFormatUnsignedBlockCompressed4', 28, 'cudaResourceViewFormat')
cudaResViewFormatSignedBlockCompressed4 <- GenericEnumValue('cudaResViewFormatSignedBlockCompressed4', 29, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedBlockCompressed5 <- GenericEnumValue('cudaResViewFormatUnsignedBlockCompressed5', 30, 'cudaResourceViewFormat')
cudaResViewFormatSignedBlockCompressed5 <- GenericEnumValue('cudaResViewFormatSignedBlockCompressed5', 31, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedBlockCompressed6H <- GenericEnumValue('cudaResViewFormatUnsignedBlockCompressed6H', 32, 'cudaResourceViewFormat')
cudaResViewFormatSignedBlockCompressed6H <- GenericEnumValue('cudaResViewFormatSignedBlockCompressed6H', 33, 'cudaResourceViewFormat')
cudaResViewFormatUnsignedBlockCompressed7 <- GenericEnumValue('cudaResViewFormatUnsignedBlockCompressed7', 34, 'cudaResourceViewFormat')

#####################
setClass('cudaTextureFilterMode', representation(names = 'character'), contains = 'EnumValue')
cudaTextureFilterModeValues = EnumDef('cudaTextureFilterMode', structure(as.integer(c(0,
1)),
names = c("cudaFilterModePoint",
"cudaFilterModeLinear")))


setAs('numeric', 'cudaTextureFilterMode', function(from)  asEnumValue(from, cudaTextureFilterModeValues, 'cudaTextureFilterMode', prefix = "cudaFilterMode"))
setAs('character', 'cudaTextureFilterMode', function(from)  asEnumValue(from, cudaTextureFilterModeValues, 'cudaTextureFilterMode', prefix = "cudaFilterMode"))
setAs('integer', 'cudaTextureFilterMode', function(from)  asEnumValue(from, cudaTextureFilterModeValues, 'cudaTextureFilterMode', prefix = "cudaFilterMode"))


cudaFilterModePoint <- GenericEnumValue('cudaFilterModePoint', 0, 'cudaTextureFilterMode')
cudaFilterModeLinear <- GenericEnumValue('cudaFilterModeLinear', 1, 'cudaTextureFilterMode')

#####################
setClass('cudaTextureReadMode', representation(names = 'character'), contains = 'EnumValue')
cudaTextureReadModeValues = EnumDef('cudaTextureReadMode', structure(as.integer(c(0,
1)),
names = c("cudaReadModeElementType",
"cudaReadModeNormalizedFloat")))


setAs('numeric', 'cudaTextureReadMode', function(from)  asEnumValue(from, cudaTextureReadModeValues, 'cudaTextureReadMode', prefix = "cudaReadMode"))
setAs('character', 'cudaTextureReadMode', function(from)  asEnumValue(from, cudaTextureReadModeValues, 'cudaTextureReadMode', prefix = "cudaReadMode"))
setAs('integer', 'cudaTextureReadMode', function(from)  asEnumValue(from, cudaTextureReadModeValues, 'cudaTextureReadMode', prefix = "cudaReadMode"))


cudaReadModeElementType <- GenericEnumValue('cudaReadModeElementType', 0, 'cudaTextureReadMode')
cudaReadModeNormalizedFloat <- GenericEnumValue('cudaReadModeNormalizedFloat', 1, 'cudaTextureReadMode')

#####################
setClass('cudaDeviceAttr', representation(names = 'character'), contains = 'EnumValue')
cudaDeviceAttrValues = EnumDef('cudaDeviceAttr', structure(as.integer(c(1,
2,
3,
4,
5,
6,
7,
8,
9,
10,
11,
12,
13,
14,
15,
16,
17,
18,
19,
20,
21,
22,
23,
24,
25,
26,
27,
28,
29,
30,
31,
32,
33,
34,
35,
36,
37,
38,
39,
40,
41,
42,
43,
45,
46,
47,
48,
49,
50,
51,
52,
53,
54,
55,
56,
57,
58,
59,
60,
61,
62,
63,
64,
65,
66,
67,
68,
69,
70,
71,
72,
73,
74,
75,
76,
77)),
names = c("cudaDevAttrMaxThreadsPerBlock",
"cudaDevAttrMaxBlockDimX",
"cudaDevAttrMaxBlockDimY",
"cudaDevAttrMaxBlockDimZ",
"cudaDevAttrMaxGridDimX",
"cudaDevAttrMaxGridDimY",
"cudaDevAttrMaxGridDimZ",
"cudaDevAttrMaxSharedMemoryPerBlock",
"cudaDevAttrTotalConstantMemory",
"cudaDevAttrWarpSize",
"cudaDevAttrMaxPitch",
"cudaDevAttrMaxRegistersPerBlock",
"cudaDevAttrClockRate",
"cudaDevAttrTextureAlignment",
"cudaDevAttrGpuOverlap",
"cudaDevAttrMultiProcessorCount",
"cudaDevAttrKernelExecTimeout",
"cudaDevAttrIntegrated",
"cudaDevAttrCanMapHostMemory",
"cudaDevAttrComputeMode",
"cudaDevAttrMaxTexture1DWidth",
"cudaDevAttrMaxTexture2DWidth",
"cudaDevAttrMaxTexture2DHeight",
"cudaDevAttrMaxTexture3DWidth",
"cudaDevAttrMaxTexture3DHeight",
"cudaDevAttrMaxTexture3DDepth",
"cudaDevAttrMaxTexture2DLayeredWidth",
"cudaDevAttrMaxTexture2DLayeredHeight",
"cudaDevAttrMaxTexture2DLayeredLayers",
"cudaDevAttrSurfaceAlignment",
"cudaDevAttrConcurrentKernels",
"cudaDevAttrEccEnabled",
"cudaDevAttrPciBusId",
"cudaDevAttrPciDeviceId",
"cudaDevAttrTccDriver",
"cudaDevAttrMemoryClockRate",
"cudaDevAttrGlobalMemoryBusWidth",
"cudaDevAttrL2CacheSize",
"cudaDevAttrMaxThreadsPerMultiProcessor",
"cudaDevAttrAsyncEngineCount",
"cudaDevAttrUnifiedAddressing",
"cudaDevAttrMaxTexture1DLayeredWidth",
"cudaDevAttrMaxTexture1DLayeredLayers",
"cudaDevAttrMaxTexture2DGatherWidth",
"cudaDevAttrMaxTexture2DGatherHeight",
"cudaDevAttrMaxTexture3DWidthAlt",
"cudaDevAttrMaxTexture3DHeightAlt",
"cudaDevAttrMaxTexture3DDepthAlt",
"cudaDevAttrPciDomainId",
"cudaDevAttrTexturePitchAlignment",
"cudaDevAttrMaxTextureCubemapWidth",
"cudaDevAttrMaxTextureCubemapLayeredWidth",
"cudaDevAttrMaxTextureCubemapLayeredLayers",
"cudaDevAttrMaxSurface1DWidth",
"cudaDevAttrMaxSurface2DWidth",
"cudaDevAttrMaxSurface2DHeight",
"cudaDevAttrMaxSurface3DWidth",
"cudaDevAttrMaxSurface3DHeight",
"cudaDevAttrMaxSurface3DDepth",
"cudaDevAttrMaxSurface1DLayeredWidth",
"cudaDevAttrMaxSurface1DLayeredLayers",
"cudaDevAttrMaxSurface2DLayeredWidth",
"cudaDevAttrMaxSurface2DLayeredHeight",
"cudaDevAttrMaxSurface2DLayeredLayers",
"cudaDevAttrMaxSurfaceCubemapWidth",
"cudaDevAttrMaxSurfaceCubemapLayeredWidth",
"cudaDevAttrMaxSurfaceCubemapLayeredLayers",
"cudaDevAttrMaxTexture1DLinearWidth",
"cudaDevAttrMaxTexture2DLinearWidth",
"cudaDevAttrMaxTexture2DLinearHeight",
"cudaDevAttrMaxTexture2DLinearPitch",
"cudaDevAttrMaxTexture2DMipmappedWidth",
"cudaDevAttrMaxTexture2DMipmappedHeight",
"cudaDevAttrComputeCapabilityMajor",
"cudaDevAttrComputeCapabilityMinor",
"cudaDevAttrMaxTexture1DMipmappedWidth")))


setAs('numeric', 'cudaDeviceAttr', function(from)  asEnumValue(from, cudaDeviceAttrValues, 'cudaDeviceAttr', prefix = "cudaDevAttr"))
setAs('character', 'cudaDeviceAttr', function(from)  asEnumValue(from, cudaDeviceAttrValues, 'cudaDeviceAttr', prefix = "cudaDevAttr"))
setAs('integer', 'cudaDeviceAttr', function(from)  asEnumValue(from, cudaDeviceAttrValues, 'cudaDeviceAttr', prefix = "cudaDevAttr"))


cudaDevAttrMaxThreadsPerBlock <- GenericEnumValue('cudaDevAttrMaxThreadsPerBlock', 1, 'cudaDeviceAttr')
cudaDevAttrMaxBlockDimX <- GenericEnumValue('cudaDevAttrMaxBlockDimX', 2, 'cudaDeviceAttr')
cudaDevAttrMaxBlockDimY <- GenericEnumValue('cudaDevAttrMaxBlockDimY', 3, 'cudaDeviceAttr')
cudaDevAttrMaxBlockDimZ <- GenericEnumValue('cudaDevAttrMaxBlockDimZ', 4, 'cudaDeviceAttr')
cudaDevAttrMaxGridDimX <- GenericEnumValue('cudaDevAttrMaxGridDimX', 5, 'cudaDeviceAttr')
cudaDevAttrMaxGridDimY <- GenericEnumValue('cudaDevAttrMaxGridDimY', 6, 'cudaDeviceAttr')
cudaDevAttrMaxGridDimZ <- GenericEnumValue('cudaDevAttrMaxGridDimZ', 7, 'cudaDeviceAttr')
cudaDevAttrMaxSharedMemoryPerBlock <- GenericEnumValue('cudaDevAttrMaxSharedMemoryPerBlock', 8, 'cudaDeviceAttr')
cudaDevAttrTotalConstantMemory <- GenericEnumValue('cudaDevAttrTotalConstantMemory', 9, 'cudaDeviceAttr')
cudaDevAttrWarpSize <- GenericEnumValue('cudaDevAttrWarpSize', 10, 'cudaDeviceAttr')
cudaDevAttrMaxPitch <- GenericEnumValue('cudaDevAttrMaxPitch', 11, 'cudaDeviceAttr')
cudaDevAttrMaxRegistersPerBlock <- GenericEnumValue('cudaDevAttrMaxRegistersPerBlock', 12, 'cudaDeviceAttr')
cudaDevAttrClockRate <- GenericEnumValue('cudaDevAttrClockRate', 13, 'cudaDeviceAttr')
cudaDevAttrTextureAlignment <- GenericEnumValue('cudaDevAttrTextureAlignment', 14, 'cudaDeviceAttr')
cudaDevAttrGpuOverlap <- GenericEnumValue('cudaDevAttrGpuOverlap', 15, 'cudaDeviceAttr')
cudaDevAttrMultiProcessorCount <- GenericEnumValue('cudaDevAttrMultiProcessorCount', 16, 'cudaDeviceAttr')
cudaDevAttrKernelExecTimeout <- GenericEnumValue('cudaDevAttrKernelExecTimeout', 17, 'cudaDeviceAttr')
cudaDevAttrIntegrated <- GenericEnumValue('cudaDevAttrIntegrated', 18, 'cudaDeviceAttr')
cudaDevAttrCanMapHostMemory <- GenericEnumValue('cudaDevAttrCanMapHostMemory', 19, 'cudaDeviceAttr')
cudaDevAttrComputeMode <- GenericEnumValue('cudaDevAttrComputeMode', 20, 'cudaDeviceAttr')
cudaDevAttrMaxTexture1DWidth <- GenericEnumValue('cudaDevAttrMaxTexture1DWidth', 21, 'cudaDeviceAttr')
cudaDevAttrMaxTexture2DWidth <- GenericEnumValue('cudaDevAttrMaxTexture2DWidth', 22, 'cudaDeviceAttr')
cudaDevAttrMaxTexture2DHeight <- GenericEnumValue('cudaDevAttrMaxTexture2DHeight', 23, 'cudaDeviceAttr')
cudaDevAttrMaxTexture3DWidth <- GenericEnumValue('cudaDevAttrMaxTexture3DWidth', 24, 'cudaDeviceAttr')
cudaDevAttrMaxTexture3DHeight <- GenericEnumValue('cudaDevAttrMaxTexture3DHeight', 25, 'cudaDeviceAttr')
cudaDevAttrMaxTexture3DDepth <- GenericEnumValue('cudaDevAttrMaxTexture3DDepth', 26, 'cudaDeviceAttr')
cudaDevAttrMaxTexture2DLayeredWidth <- GenericEnumValue('cudaDevAttrMaxTexture2DLayeredWidth', 27, 'cudaDeviceAttr')
cudaDevAttrMaxTexture2DLayeredHeight <- GenericEnumValue('cudaDevAttrMaxTexture2DLayeredHeight', 28, 'cudaDeviceAttr')
cudaDevAttrMaxTexture2DLayeredLayers <- GenericEnumValue('cudaDevAttrMaxTexture2DLayeredLayers', 29, 'cudaDeviceAttr')
cudaDevAttrSurfaceAlignment <- GenericEnumValue('cudaDevAttrSurfaceAlignment', 30, 'cudaDeviceAttr')
cudaDevAttrConcurrentKernels <- GenericEnumValue('cudaDevAttrConcurrentKernels', 31, 'cudaDeviceAttr')
cudaDevAttrEccEnabled <- GenericEnumValue('cudaDevAttrEccEnabled', 32, 'cudaDeviceAttr')
cudaDevAttrPciBusId <- GenericEnumValue('cudaDevAttrPciBusId', 33, 'cudaDeviceAttr')
cudaDevAttrPciDeviceId <- GenericEnumValue('cudaDevAttrPciDeviceId', 34, 'cudaDeviceAttr')
cudaDevAttrTccDriver <- GenericEnumValue('cudaDevAttrTccDriver', 35, 'cudaDeviceAttr')
cudaDevAttrMemoryClockRate <- GenericEnumValue('cudaDevAttrMemoryClockRate', 36, 'cudaDeviceAttr')
cudaDevAttrGlobalMemoryBusWidth <- GenericEnumValue('cudaDevAttrGlobalMemoryBusWidth', 37, 'cudaDeviceAttr')
cudaDevAttrL2CacheSize <- GenericEnumValue('cudaDevAttrL2CacheSize', 38, 'cudaDeviceAttr')
cudaDevAttrMaxThreadsPerMultiProcessor <- GenericEnumValue('cudaDevAttrMaxThreadsPerMultiProcessor', 39, 'cudaDeviceAttr')
cudaDevAttrAsyncEngineCount <- GenericEnumValue('cudaDevAttrAsyncEngineCount', 40, 'cudaDeviceAttr')
cudaDevAttrUnifiedAddressing <- GenericEnumValue('cudaDevAttrUnifiedAddressing', 41, 'cudaDeviceAttr')
cudaDevAttrMaxTexture1DLayeredWidth <- GenericEnumValue('cudaDevAttrMaxTexture1DLayeredWidth', 42, 'cudaDeviceAttr')
cudaDevAttrMaxTexture1DLayeredLayers <- GenericEnumValue('cudaDevAttrMaxTexture1DLayeredLayers', 43, 'cudaDeviceAttr')
cudaDevAttrMaxTexture2DGatherWidth <- GenericEnumValue('cudaDevAttrMaxTexture2DGatherWidth', 45, 'cudaDeviceAttr')
cudaDevAttrMaxTexture2DGatherHeight <- GenericEnumValue('cudaDevAttrMaxTexture2DGatherHeight', 46, 'cudaDeviceAttr')
cudaDevAttrMaxTexture3DWidthAlt <- GenericEnumValue('cudaDevAttrMaxTexture3DWidthAlt', 47, 'cudaDeviceAttr')
cudaDevAttrMaxTexture3DHeightAlt <- GenericEnumValue('cudaDevAttrMaxTexture3DHeightAlt', 48, 'cudaDeviceAttr')
cudaDevAttrMaxTexture3DDepthAlt <- GenericEnumValue('cudaDevAttrMaxTexture3DDepthAlt', 49, 'cudaDeviceAttr')
cudaDevAttrPciDomainId <- GenericEnumValue('cudaDevAttrPciDomainId', 50, 'cudaDeviceAttr')
cudaDevAttrTexturePitchAlignment <- GenericEnumValue('cudaDevAttrTexturePitchAlignment', 51, 'cudaDeviceAttr')
cudaDevAttrMaxTextureCubemapWidth <- GenericEnumValue('cudaDevAttrMaxTextureCubemapWidth', 52, 'cudaDeviceAttr')
cudaDevAttrMaxTextureCubemapLayeredWidth <- GenericEnumValue('cudaDevAttrMaxTextureCubemapLayeredWidth', 53, 'cudaDeviceAttr')
cudaDevAttrMaxTextureCubemapLayeredLayers <- GenericEnumValue('cudaDevAttrMaxTextureCubemapLayeredLayers', 54, 'cudaDeviceAttr')
cudaDevAttrMaxSurface1DWidth <- GenericEnumValue('cudaDevAttrMaxSurface1DWidth', 55, 'cudaDeviceAttr')
cudaDevAttrMaxSurface2DWidth <- GenericEnumValue('cudaDevAttrMaxSurface2DWidth', 56, 'cudaDeviceAttr')
cudaDevAttrMaxSurface2DHeight <- GenericEnumValue('cudaDevAttrMaxSurface2DHeight', 57, 'cudaDeviceAttr')
cudaDevAttrMaxSurface3DWidth <- GenericEnumValue('cudaDevAttrMaxSurface3DWidth', 58, 'cudaDeviceAttr')
cudaDevAttrMaxSurface3DHeight <- GenericEnumValue('cudaDevAttrMaxSurface3DHeight', 59, 'cudaDeviceAttr')
cudaDevAttrMaxSurface3DDepth <- GenericEnumValue('cudaDevAttrMaxSurface3DDepth', 60, 'cudaDeviceAttr')
cudaDevAttrMaxSurface1DLayeredWidth <- GenericEnumValue('cudaDevAttrMaxSurface1DLayeredWidth', 61, 'cudaDeviceAttr')
cudaDevAttrMaxSurface1DLayeredLayers <- GenericEnumValue('cudaDevAttrMaxSurface1DLayeredLayers', 62, 'cudaDeviceAttr')
cudaDevAttrMaxSurface2DLayeredWidth <- GenericEnumValue('cudaDevAttrMaxSurface2DLayeredWidth', 63, 'cudaDeviceAttr')
cudaDevAttrMaxSurface2DLayeredHeight <- GenericEnumValue('cudaDevAttrMaxSurface2DLayeredHeight', 64, 'cudaDeviceAttr')
cudaDevAttrMaxSurface2DLayeredLayers <- GenericEnumValue('cudaDevAttrMaxSurface2DLayeredLayers', 65, 'cudaDeviceAttr')
cudaDevAttrMaxSurfaceCubemapWidth <- GenericEnumValue('cudaDevAttrMaxSurfaceCubemapWidth', 66, 'cudaDeviceAttr')
cudaDevAttrMaxSurfaceCubemapLayeredWidth <- GenericEnumValue('cudaDevAttrMaxSurfaceCubemapLayeredWidth', 67, 'cudaDeviceAttr')
cudaDevAttrMaxSurfaceCubemapLayeredLayers <- GenericEnumValue('cudaDevAttrMaxSurfaceCubemapLayeredLayers', 68, 'cudaDeviceAttr')
cudaDevAttrMaxTexture1DLinearWidth <- GenericEnumValue('cudaDevAttrMaxTexture1DLinearWidth', 69, 'cudaDeviceAttr')
cudaDevAttrMaxTexture2DLinearWidth <- GenericEnumValue('cudaDevAttrMaxTexture2DLinearWidth', 70, 'cudaDeviceAttr')
cudaDevAttrMaxTexture2DLinearHeight <- GenericEnumValue('cudaDevAttrMaxTexture2DLinearHeight', 71, 'cudaDeviceAttr')
cudaDevAttrMaxTexture2DLinearPitch <- GenericEnumValue('cudaDevAttrMaxTexture2DLinearPitch', 72, 'cudaDeviceAttr')
cudaDevAttrMaxTexture2DMipmappedWidth <- GenericEnumValue('cudaDevAttrMaxTexture2DMipmappedWidth', 73, 'cudaDeviceAttr')
cudaDevAttrMaxTexture2DMipmappedHeight <- GenericEnumValue('cudaDevAttrMaxTexture2DMipmappedHeight', 74, 'cudaDeviceAttr')
cudaDevAttrComputeCapabilityMajor <- GenericEnumValue('cudaDevAttrComputeCapabilityMajor', 75, 'cudaDeviceAttr')
cudaDevAttrComputeCapabilityMinor <- GenericEnumValue('cudaDevAttrComputeCapabilityMinor', 76, 'cudaDeviceAttr')
cudaDevAttrMaxTexture1DMipmappedWidth <- GenericEnumValue('cudaDevAttrMaxTexture1DMipmappedWidth', 77, 'cudaDeviceAttr')

#####################
setClass('cudaComputeMode', representation(names = 'character'), contains = 'EnumValue')
cudaComputeModeValues = EnumDef('cudaComputeMode', structure(as.integer(c(0,
1,
2,
3)),
names = c("cudaComputeModeDefault",
"cudaComputeModeExclusive",
"cudaComputeModeProhibited",
"cudaComputeModeExclusiveProcess")))


setAs('numeric', 'cudaComputeMode', function(from)  asEnumValue(from, cudaComputeModeValues, 'cudaComputeMode', prefix = "cudaComputeMode"))
setAs('character', 'cudaComputeMode', function(from)  asEnumValue(from, cudaComputeModeValues, 'cudaComputeMode', prefix = "cudaComputeMode"))
setAs('integer', 'cudaComputeMode', function(from)  asEnumValue(from, cudaComputeModeValues, 'cudaComputeMode', prefix = "cudaComputeMode"))


cudaComputeModeDefault <- GenericEnumValue('cudaComputeModeDefault', 0, 'cudaComputeMode')
cudaComputeModeExclusive <- GenericEnumValue('cudaComputeModeExclusive', 1, 'cudaComputeMode')
cudaComputeModeProhibited <- GenericEnumValue('cudaComputeModeProhibited', 2, 'cudaComputeMode')
cudaComputeModeExclusiveProcess <- GenericEnumValue('cudaComputeModeExclusiveProcess', 3, 'cudaComputeMode')

#####################
