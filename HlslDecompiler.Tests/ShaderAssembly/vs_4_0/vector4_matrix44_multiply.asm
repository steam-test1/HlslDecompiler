//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer $Globals
// {
//
//   float4x4 matrix_4x4;               // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// $Globals                          cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// POSITION                 1   xyzw        1     NONE   float   xyzw
// POSITION                 2   xyzw        2     NONE   float   xyzw
// POSITION                 3   xyzw        3     NONE   float   xyzw
//
vs_4_0
dcl_constantbuffer cb0[4], immediateIndexed
dcl_input v0.xyzw
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_temps 1
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw
dp4 o1.x, v0.yxzw, cb0[0].xyzw
dp4 o1.y, v0.yxzw, cb0[1].xyzw
dp4 o1.z, v0.yxzw, cb0[2].xyzw
dp4 o1.w, v0.yxzw, cb0[3].xyzw
dp4 o2.x, |v0.yxzw|, cb0[0].xyzw
dp4 o2.y, |v0.yxzw|, cb0[1].xyzw
dp4 o2.z, |v0.yxzw|, cb0[2].xyzw
dp4 o2.w, |v0.yxzw|, cb0[3].xyzw
mul r0.xyzw, v0.xyzw, l(5.000000, 2.000000, 3.000000, 4.000000)
dp4 o3.x, r0.xyzw, cb0[0].xyzw
dp4 o3.y, r0.xyzw, cb0[1].xyzw
dp4 o3.z, r0.xyzw, cb0[2].xyzw
dp4 o3.w, r0.xyzw, cb0[3].xyzw
ret 
// Approximately 18 instruction slots used