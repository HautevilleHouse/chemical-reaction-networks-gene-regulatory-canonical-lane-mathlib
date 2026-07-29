import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  genes : List String
  interactions : List (String × String × ℝ)
  networkStable : Prop
  regulationPatternFound : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  networkStableClosed : G.networkStable
  regulationPatternFoundClosed : G.regulationPatternFound

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.networkStable ∧ G.regulationPatternFound

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetworkPackage)
    (E : GeneRegulatoryNetworkEvidence G) : GeneRegulatoryNetworkClosed G := by
  exact And.intro E.networkStableClosed E.regulationPatternFoundClosed

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse