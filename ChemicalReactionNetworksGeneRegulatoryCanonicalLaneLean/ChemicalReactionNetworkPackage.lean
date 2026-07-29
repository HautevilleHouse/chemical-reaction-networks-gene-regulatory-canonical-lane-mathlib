import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure ChemicalReactionNetworkPackage where
  species : List String
  reactions : List (List String × List String × ℝ)
  networkConsistent : Prop
  steadyStateExists : Prop

structure ChemicalReactionNetworkEvidence (C : ChemicalReactionNetworkPackage) where
  networkConsistentClosed : C.networkConsistent
  steadyStateExistsClosed : C.steadyStateExists

def ChemicalReactionNetworkClosed (C : ChemicalReactionNetworkPackage) : Prop :=
  C.networkConsistent ∧ C.steadyStateExists

theorem chemical_reaction_network_closed_from_evidence (C : ChemicalReactionNetworkPackage)
    (E : ChemicalReactionNetworkEvidence C) : ChemicalReactionNetworkClosed C := by
  exact And.intro E.networkConsistentClosed E.steadyStateExistsClosed

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse