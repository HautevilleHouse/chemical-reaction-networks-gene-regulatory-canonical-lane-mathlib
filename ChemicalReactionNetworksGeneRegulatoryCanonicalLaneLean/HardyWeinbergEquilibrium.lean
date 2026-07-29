import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  alleleFrequencies : ℝ → ℝ → ℝ
  genotypeFrequencies : ℝ → ℝ → ℝ → ℝ
  randomMatingAssumption : Prop
  equilibriumReached : Prop

structure HardyWeinbergEquilibriumEvidence (H : HardyWeinbergEquilibriumPackage) where
  randomMatingAssumptionClosed : H.randomMatingAssumption
  equilibriumReachedClosed : H.equilibriumReached

def HardyWeinbergEquilibriumClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.randomMatingAssumption ∧ H.equilibriumReached

theorem hardy_weinberg_equilibrium_closed_from_evidence
    (H : HardyWeinbergEquilibriumPackage) (E : HardyWeinbergEquilibriumEvidence H) :
    HardyWeinbergEquilibriumClosed H := by
  exact And.intro E.randomMatingAssumptionClosed E.equilibriumReachedClosed

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse
