import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure ChemicalReactionNetwork where
  species : Type u
  reactions : Type v
  stoichiometry : reactions -> species -> ℤ
  kinetics : reactions -> (species -> ℝ) -> ℝ
  equilibriumCondition : Prop
  equilibriumConditionTerm : equilibriumCondition

structure ChemicalReactionNetworkEvidence (N : ChemicalReactionNetwork) where
  equilibriumConditionClosed : N.equilibriumCondition

def ChemicalReactionNetworkClosed (N : ChemicalReactionNetwork) : Prop :=
  N.equilibriumCondition

theorem chemical_reaction_network_closed_from_evidence
    (N : ChemicalReactionNetwork) (E : ChemicalReactionNetworkEvidence N) :
    ChemicalReactionNetworkClosed N := by
  exact E.equilibriumConditionClosed

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse
