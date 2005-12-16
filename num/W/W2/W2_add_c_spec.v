Require Import ZArith.
Open Local Scope Z_scope.
Require Import W2_basic.
Open Local Scope w2_scope.
Require Import W2_add.


Lemma w2_add_c_spec : forall x y, [+|w2_add_c x y|] = [|x|] + [|y|].
Proof
fun x y =>
 match x as x return [+|w2_add_c x y|] = [|x|] + [|y|] with
 | OO => refl_equal [|y|]
 | OI => 
    match y as y return [+|w2_add_c OI y|] = [|OI|] + [|y|] with
    | OO => refl_equal (1)
    | OI => refl_equal (2)
    | IO => refl_equal (3)
    | II => refl_equal (4)
    end
 | IO => 
    match y as y return [+|w2_add_c IO y|] = [|IO|] + [|y|] with
    | OO => refl_equal (2)
    | OI => refl_equal (3)
    | IO => refl_equal (4)
    | II => refl_equal (5)
    end
 | II => 
    match y as y return [+|w2_add_c II y|] = [|II|] + [|y|] with
    | OO => refl_equal (3)
    | OI => refl_equal (4)
    | IO => refl_equal (5)
    | II => refl_equal (6)
    end
 end.
