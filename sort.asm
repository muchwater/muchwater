00010148 <main>:
    000   f7010113      addi	sp,sp,-144
    004   08112623      sw	ra,140(sp)
    008   08812423      sw	s0,136(sp)
    012   09010413      addi	s0,sp,144
    016   fe042623      sw	zero,-20(s0)
    020   0300006f      j	<068>
    024   01e00713      li	a4,30
    028   fec42783      lw	a5,-20(s0)
    032   40f70733      sub	a4,a4,a5
    036   fec42783      lw	a5,-20(s0)
    040   00279793      slli	a5,a5,0x2
    044   ff040693      addi	a3,s0,-16
    048   00f687b3      add	a5,a3,a5
    052   f8e7a223      sw	a4,-124(a5)
    056   fec42783      lw	a5,-20(s0)
    060   00178793      addi	a5,a5,1
    064   fef42623      sw	a5,-20(s0)
    068   fec42703      lw	a4,-20(s0)
    072   01d00793      li	a5,29
    076   fce7d6e3      ble	a4,a5,10160 <024>
    080   f7440793      addi	a5,s0,-140
    084   01e00593      li	a1,30
    088   00078513      mv	a0,a5
    092   01c000ef      jal	101c0 <sort>
    096   00000793      li	a5,0
    100   00078513      mv	a0,a5
    104   08c12083      lw	ra,140(sp)
    108   08812403      lw	s0,136(sp)
    112   09010113      addi	sp,sp,144
    116   00008067      ret

000101c0 <sort>:
    124   fd010113      addi	sp,sp,-48
    128   02812623      sw	s0,44(sp)
    132   03010413      addi	s0,sp,48
    136   fca42e23      sw	a0,-36(s0)
    140   fcb42c23      sw	a1,-40(s0)
    144   fe042423      sw	zero,-24(s0)
    148   0cc0006f      j	102a4 <352>
    152   fe842783      lw	a5,-24(s0)
    156   fef42623      sw	a5,-20(s0)
    160   fe842783      lw	a5,-24(s0)
    164   00178793      addi	a5,a5,1
    168   fef42223      sw	a5,-28(s0)
    172   0440006f      j	<240>
    176   fec42783      lw	a5,-20(s0)      a5 <= 0
    180   00279793      slli	a5,a5,0x2   a5 <= 0*4
    184   fdc42703      lw	a4,-36(s0)      a4 <= 3700
    188   00f707b3      add	a5,a4,a5        a5 <= 0 + 3700
    192   0007a703      lw	a4,0(a5)        a4 <= 0
    196   fe442783      lw	a5,-28(s0)      a5 <= 1 [3668]
    200   00279793      slli	a5,a5,0x2   a5 <= 1*4
    204   fdc42683      lw	a3,-36(s0)      a3 <= 3700
    208   00f687b3      add	a5,a3,a5        a5 <= 3700 + 4
    212   0007a783      lw	a5,0(a5)        a5 <= 4
    216   00e7d663      ble	a4,a5,<228>     a5[3700+4*i](4) >= a4[3700](0) ? jump(228)
    220   fe442783      lw	a5,-28(s0)      X
    224   fef42623      sw	a5,-20(s0)      X
    228   fe442783      lw	a5,-28(s0)      a5 <= 1
    232   00178793      addi	a5,a5,1     a5 <= 1+1
    236   fef42223      sw	a5,-28(s0)      [3668] <= 2
    240   fe442703      lw	a4,-28(s0)      a4 <= 2
    244   fd842783      lw	a5,-40(s0)      a5 <= 30 [3660]
    248   faf74ce3      blt	a4,a5,<176>     a5[3660] < {a4[3668]} ? jump(176)
    252   fe842783      lw	a5,-24(s0)
    256   00279793      slli	a5,a5,0x2
    260   fdc42703      lw	a4,-36(s0)
    264   00f707b3      add	a5,a4,a5
    268   0007a783      lw	a5,0(a5)
    272   fef42023      sw	a5,-32(s0)
    276   fe842783      lw	a5,-24(s0)
    280   00279793      slli	a5,a5,0x2
    284   fdc42703      lw	a4,-36(s0)
    288   00f707b3      add	a5,a4,a5
    292   fec42703      lw	a4,-20(s0)
    296   00271713      slli	a4,a4,0x2
    300   fdc42683      lw	a3,-36(s0)
    304   00e68733      add	a4,a3,a4
    308   00072703      lw	a4,0(a4)
    312   00e7a023      sw	a4,0(a5)
    316   fec42783      lw	a5,-20(s0)
    320   00279793      slli	a5,a5,0x2
    324   fdc42703      lw	a4,-36(s0)
    328   00f707b3      add	a5,a4,a5
    332   fe042703      lw	a4,-32(s0)
    336   00e7a023      sw	a4,0(a5)
    340   fe842783      lw	a5,-24(s0)
    344   00178793      addi	a5,a5,1
    348   fef42423      sw	a5,-24(s0)
    352   fe842703      lw	a4,-24(s0)
    356   fd842783      lw	a5,-40(s0)
    360   f2f748e3      blt	a4,a5,101dc <152>
    364   00000013      nop
    368   02c12403      lw	s0,44(sp)
    372   03010113      addi	sp,sp,48
    376   00008067      ret

