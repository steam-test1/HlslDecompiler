ps_3_0
def c0, 1, 2, 3, 0
dcl_texcoord v0
dcl_volume s0
texld oC0, v0.xyz, s0
texldd oC1, v0.xyz, s0, v0.xyz, v0.yxz
texldd oC2, c0.xyz, s0, v0.xyz, v0.xyz
texldl r0, v0, s0
texldp r1, v0.xyyw, s0
add oC3, r0, r1