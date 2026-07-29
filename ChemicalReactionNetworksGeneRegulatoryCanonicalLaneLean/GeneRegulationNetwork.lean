import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure GeneRegulationNetworkPackage where
  genes : Type u
  regulatoryInteractions : Type v
  expressionLevels : Type w
  networkTopology : Prop
  steadyStateAttractor : Prop
  robustnessProperty : Prop

structure GeneRegulationNetworkEvidence (G : GeneRegulationNetworkPackage) where
  networkTopologyClosed : G.networkTopology
  steadyStateAttractorClosed : G.steadyStateAttractor
  robustnessPropertyClosed : G.robustnessProperty

def GeneRegulationNetworkClosed (G : GeneRegulationNetworkPackage) : Prop :=
  G.networkTopology ∧ G.steadyStateAttractor ∧ G.robustnessProperty

theorem gene_regulation_network_closed_from_evidence (G : GeneRegulationNetworkPackage) (E : GeneRegulationNetworkEvidence G) :
    GeneRegulationNetworkClosed G := by
  exact And.intro E.networkTopologyClosed (And.intro E.steadyStateAttractorClosed E.robustnessPropertyClosed)

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse