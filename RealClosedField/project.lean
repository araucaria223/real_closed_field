import RealClosedField.RealClosedField

-- lemma 36: Let 𝐹 be an ordered field with a real closure 𝑅, and let 𝐾/𝐹 be a finite ordered
-- extension. Then there is an 𝐹 -homomorphism 𝐾 → 𝑅.

theorem closure_emb_ext_unordered
    {F : Type*} [Field F] [LinearOrder F] [IsStrictOrderedRing F]
    {R : Type*} [Field R] [LinearOrder R] [IsStrictOrderedRing R] [Algebra F R]
    [IsRealClosure F R]
    {K : Type*} [Field K] [LinearOrder K] [IsStrictOrderedRing K] [Algebra F K]
    [FiniteDimensional F K] [IsOrderedModule F K] :
    Nonempty (K →ₐ[F] R) := by
  sorry
-- change to explicit
-- prove nonempty later if need, define 

-- corollary 39: A real closed field has no nontrivial field automorphisms.

theorem RCF_no_auto
    {R : Type*} [Field R] [IsRealClosed R] (f : R ≃+* R) :
    f = RingEquiv.refl R := by
  sorry
