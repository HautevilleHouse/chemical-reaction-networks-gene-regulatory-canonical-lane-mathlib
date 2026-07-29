import ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure ChemicalReactionNetworksSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ChemicalReactionNetworksAdmittedObject where
  space : ChemicalReactionNetworksSpace
  hardyWeinbergEquilibrium : Prop
  linkageAnalysisComplete : Prop
  sequenceAlignmentOptimal : Prop
  phylogeneticTreeConsistent : Prop
  conclusion : hardyWeinbergEquilibrium ∧ linkageAnalysisComplete ∧ sequenceAlignmentOptimal ∧ phylogeneticTreeConsistent

structure ChemicalReactionNetworksEndgameState where
  object : ChemicalReactionNetworksAdmittedObject

def ChemicalReactionNetworksWitnessClosed (O : ChemicalReactionNetworksAdmittedObject) : Prop :=
  O.hardyWeinbergEquilibrium ∧ O.linkageAnalysisComplete ∧ O.sequenceAlignmentOptimal ∧ O.phylogeneticTreeConsistent

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse