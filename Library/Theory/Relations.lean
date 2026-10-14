/-
Unbundled relation properties used in the book. Mathlib deprecated these in favour of
`Std.Refl`, `Std.Antisymm` and `IsTrans`, and has since deleted them; the definitions
below are copied from `Mathlib.Order.Defs.Unbundled` (Mathlib v4.33.0).
-/

universe u

variable {α : Sort u} (r : α → α → Prop)

local infixl:50 " ≺ " => r

/-- `Std.Refl` as a definition, suitable for use in proofs. -/
def Reflexive := ∀ x, x ≺ x

/-- `IsTrans` as a definition, suitable for use in proofs. -/
def Transitive := ∀ ⦃x y z⦄, x ≺ y → y ≺ z → x ≺ z

/-- `Std.Antisymm` as a definition, suitable for use in proofs. -/
def AntiSymmetric := ∀ ⦃x y⦄, x ≺ y → y ≺ x → x = y
