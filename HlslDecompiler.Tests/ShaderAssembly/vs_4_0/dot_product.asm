//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer $Globals
// {
//
//   float2 constant2;                  // Offset:    0 Size:     8
//   float3 constant3;                  // Offset:   16 Size:    12
//   float4 constant4;                  // Offset:   32 Size:    16
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
// TEXCOORD                 0   xyzw        1     NONE   float   xyz 
// TEXCOORD                 1   xyzw        2     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
//
vs_4_0
dcl_constantbuffer cb0[3], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xy
dcl_output o0.xyzw
dp4 o0.x, cb0[2].xyzw, v0.xyzw
dp3 o0.y, cb0[1].xyzx, v1.xyzx
dp2 o0.z, cb0[0].xyxx, v2.xyxx
mov o0.w, l(4.000000)
ret 
// Approximately 5 instruction slots used