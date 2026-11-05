import RealClosedField.RealClosedField

universe u

namespace IsRealClosure

/-- Lemma 34: every ordered field has a real closure. -/
theorem exists_isRealClosure {F: Type u}[Field F][LinearOrder F][IsStrictOrderedRing F] :
∃ R: Type u, ∃ _ : Field R, ∃ _ :LinearOrder R, ∃ _ : IsStrictOrderedRing R,
∃ _ :Algebra F R, IsRealClosure F R :=by
  sorry

/-- Lemma 37: a finite ordered extension K/F has a unique order-preserving
F-map into a real closure R of F. -/
theorem existsUnique_monotone_algHom {F R K : Type*}
    [Field F] [LinearOrder F] [IsStrictOrderedRing F]
    [Field R] [LinearOrder R] [IsStrictOrderedRing R] [Algebra F R] [IsRealClosure F R]
    [Field K] [LinearOrder K] [IsStrictOrderedRing K] [Algebra F K]
    [FiniteDimensional F K] [IsOrderedModule F K] :
    ∃! φ : K →ₐ[F] R, Monotone φ := by
  sorry

/-- Lemma 40: for algebraic K/F, restricting R's order along F-maps K → R gives
a bijection onto the orderings of K extending F's. -/
theorem orderings_correspond_algHom {F R K : Type*}
    [Field F] [LinearOrder F] [IsStrictOrderedRing F]
    [Field R] [LinearOrder R] [IsStrictOrderedRing R] [Algebra F R] [IsRealClosure F R]
    [Field K] [Algebra F K] [Algebra.IsAlgebraic F K] :
    (∀ φ : K →ₐ[F] R,
      ((Subsemiring.nonneg R).comap (φ : K →+* R)).IsOrdering ∧
      (Subsemiring.nonneg F).map (algebraMap F K) ≤ (Subsemiring.nonneg R).comap (φ : K →+* R)) ∧
    Function.Injective (fun φ : K →ₐ[F] R ↦ (Subsemiring.nonneg R).comap (φ : K →+* R)) ∧
    (∀ O : Subsemiring K, O.IsOrdering → (Subsemiring.nonneg F).map (algebraMap F K) ≤ O →
      ∃ φ : K →ₐ[F] R, (Subsemiring.nonneg R).comap (φ : K →+* R) = O) := by
  sorry

end IsRealClosure
