import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesList : List String
  geneticDistances : String → String → ℝ
  treeTopology : Type u
  branchLengths : treeTopology → ℝ
  maximumParsimony : Prop
  treeConstructed : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  maximumParsimonyClosed : P.maximumParsimony
  treeConstructedClosed : P.treeConstructed

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.maximumParsimony ∧ P.treeConstructed

theorem phylogenetic_tree_closed_from_evidence
    (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.maximumParsimonyClosed E.treeConstructedClosed

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse
