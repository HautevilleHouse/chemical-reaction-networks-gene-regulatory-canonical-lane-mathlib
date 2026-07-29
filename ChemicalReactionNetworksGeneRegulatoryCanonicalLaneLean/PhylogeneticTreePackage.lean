import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure PhylogeneticTreePackage where
  species : List String
  treeTopology : Type u
  branchLengths : List ℝ
  treeLikelihood : ℝ
  treeOptimal : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  treeLikelihoodClosed : P.treeLikelihood ≥ 0
  treeOptimalClosed : P.treeOptimal

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  (P.treeLikelihood ≥ 0) ∧ P.treeOptimal

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.treeLikelihoodClosed E.treeOptimalClosed

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse