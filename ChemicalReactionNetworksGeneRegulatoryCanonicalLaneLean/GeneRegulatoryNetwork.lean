import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  geneSymbols : Type u
  proteinSymbols : Type v
  regulationMap : geneSymbols → List proteinSymbols
  degradationRates : proteinSymbols → ℝ
  productionRates : geneSymbols → ℝ
  networkConnected : Prop
  steadyStateExistence : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  networkConnectedClosed : G.networkConnected
  steadyStateExistenceClosed : G.steadyStateExistence

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.networkConnected ∧ G.steadyStateExistence

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.networkConnectedClosed E.steadyStateExistenceClosed

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse
