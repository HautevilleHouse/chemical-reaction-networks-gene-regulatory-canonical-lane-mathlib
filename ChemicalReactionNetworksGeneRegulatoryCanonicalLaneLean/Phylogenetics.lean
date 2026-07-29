import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean.SequenceAlignment

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure PhylogeneticTree where
  taxa : Type u
  branchLengths : taxa → taxa → ℝ
  evolutionaryModel : Type v
  likelihood : ℝ
  treeTopology : Prop
  bifurcating : Prop
  validTree : Prop
  validTreeTerm : validTree

structure PhylogeneticEvidence (T : PhylogeneticTree) where
  treeTopologyClosed : T.treeTopology
  bifurcatingClosed : T.bifurcating
  validTreeClosed : T.validTree

def PhylogeneticClosed (T : PhylogeneticTree) : Prop :=
  T.treeTopology ∧ T.bifurcating ∧ T.validTree

theorem phylogenetic_closed_from_evidence (T : PhylogeneticTree) (E : PhylogeneticEvidence T) : PhylogeneticClosed T := by
  exact And.intro E.treeTopologyClosed (And.intro E.bifurcatingClosed E.validTreeClosed)

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse