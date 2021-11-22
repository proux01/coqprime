Require Import PocklingtonRefl.


Local Open Scope positive_scope.

Lemma prime3421288327 : prime 3421288327.
Proof.
 apply (Pocklington_refl
         (Pock_certif 3421288327 3 ((570214721, 1)::(2,1)::nil) 1)
        ((Pock_certif 570214721 3 ((1781921, 1)::(2,6)::nil) 1) ::
         (Pock_certif 1781921 3 ((5, 1)::(2,5)::nil) 256) ::
         (Proof_certif 5 prime5) ::
         (Proof_certif 2 prime2) ::
          nil)).
 vm_cast_no_check (refl_equal true).
Qed.

Lemma prime678901234567890123456789012345678901234567890123456789012345678901234568009: prime  678901234567890123456789012345678901234567890123456789012345678901234568009.
apply (Pocklington_refl 

(Ell_certif
678901234567890123456789012345678901234567890123456789012345678901234568009
260
((2611158594491885090218419278252611158563837190503948396276492024847644113,1)::nil)
900
0
10
100)
(
(Ell_certif
2611158594491885090218419278252611158563837190503948396276492024847644113
1117789
((2336003122675106921090133538845534494933789237251785382341823297633,1)::nil)
0
1621774283297694255252846348602207711764258255039561699249852468559606057
1305579297245942545109209639126305579281918595251974198138246012423822135
1142381885090199726970558434235517381871678770845477423370965260870845840)
::
(SPock_certif 
2336003122675106921090133538845534494933789237251785382341823297633
2
((37378442183101429228912787039899105461690175967290472707722467, 1)::nil))
::
(Ell_certif
37378442183101429228912787039899105461690175967290472707722467
6726
((5557306301382906516341478893829939337927637259654768631777,1)::nil)
37378442183101429228912787039899105461690175967290472707700597
1102248
27
729)
::
(Ell_certif
5557306301382906516341478893829939337927637259654768631777
1899772
((2925249083249414412014430623242669214975289035495359,1)::nil)
0
13310
11
121)
::
(SPock_certif 
2925249083249414412014430623242669214975289035495359
2
((162513837958300800667468367957926067498627168638631, 1)::nil))
::
(SPock_certif 
162513837958300800667468367957926067498627168638631
2
((39929689916044422768419746427008861793274488609, 1)::nil))
::
(Ell_certif
39929689916044422768419746427008861793274488609
1469500298
((27172291132154927108711465018614587973,1)::nil)
48
0
4
16)
::
(Ell_certif
27172291132154927108711465018614587973
655606476
((41446038327655151348947203829,1)::nil)
0
78608
17
289)
::
(Ell_certif
41446038327655151348947203829
701827
((59054493953147091155017,1)::nil)
0
2058
7
49)
::
(Ell_certif
59054493953147091155017
6068
((9732118318000285237,1)::nil)
48
0
4
16)
::
(SPock_certif 
9732118318000285237
2
((3421288327, 1)::nil))
:: (Proof_certif 3421288327 prime3421288327) :: nil)).
vm_cast_no_check (refl_equal true).
Time Qed.
