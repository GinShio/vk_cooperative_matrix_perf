#/usr/bin/env bash

glslangValidator --target-env spirv1.6 -DA_TYPE=bfloat16_t              -DC_TYPE=float32_t -V workgroup.comp -o workgroupbf16.spv
glslangValidator --target-env spirv1.6 -DA_TYPE=float16_t               -DC_TYPE=float16_t -V workgroup.comp -o workgroupfp16.spv
glslangValidator --target-env spirv1.6 -DA_TYPE=float16_t               -DC_TYPE=float32_t -V workgroup.comp -o workgroupfp32.spv
glslangValidator --target-env spirv1.6 -DA_TYPE=uint8_t                 -DC_TYPE=uint32_t  -V workgroup.comp -o workgroupu8.spv
glslangValidator --target-env spirv1.6 -DA_TYPE=int8_t                  -DC_TYPE=int32_t   -V workgroup.comp -o workgroups8.spv
glslangValidator --target-env spirv1.3 -DA_BITS=16 -DA_TYPE=float16_t   -DC_TYPE=float16_t -V tiled.comp -o tiledfp16.spv
glslangValidator --target-env spirv1.3 -DA_BITS=16 -DA_TYPE=bfloat16_t  -DC_TYPE=float32_t -V tiled.comp -o tiledbf16.spv
glslangValidator --target-env spirv1.3 -DA_BITS=16 -DA_TYPE=float16_t   -DC_TYPE=float32_t -V tiled.comp -o tiledfp32.spv
glslangValidator --target-env spirv1.3 -DA_BITS=16 -DA_TYPE=float16_t   -DC_TYPE=float16_t -V shmem.comp -o shmemfp16.spv
glslangValidator --target-env spirv1.3 -DA_BITS=16 -DA_TYPE=bfloat16_t  -DC_TYPE=float32_t -V shmem.comp -o shmembf16.spv
glslangValidator --target-env spirv1.3 -DA_BITS=16 -DA_TYPE=float16_t   -DC_TYPE=float32_t -V shmem.comp -o shmemfp32.spv
glslangValidator --target-env spirv1.3 -DA_BITS=8  -DA_TYPE=uint8_t     -DC_TYPE=uint32_t  -V tiled.comp -o tiledu8.spv
glslangValidator --target-env spirv1.3 -DA_BITS=8  -DA_TYPE=uint8_t     -DC_TYPE=uint32_t  -V shmem.comp -o shmemu8.spv
glslangValidator --target-env spirv1.3 -DA_BITS=8  -DA_TYPE=int8_t      -DC_TYPE=int32_t   -V tiled.comp -o tileds8.spv
glslangValidator --target-env spirv1.3 -DA_BITS=8  -DA_TYPE=int8_t      -DC_TYPE=int32_t   -V shmem.comp -o shmems8.spv
