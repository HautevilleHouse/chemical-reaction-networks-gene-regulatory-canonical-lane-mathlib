import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure LinkageAnalysisPackage where
  markers : List String
  recombinationFraction : ℝ
  lodScore : ℝ
  linkageSignificant : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  lodScoreClosed : L.lodScore ≥ 3.0
  linkageSignificantClosed : L.linkageSignificant

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  (L.lodScore ≥ 3.0) ∧ L.linkageSignificant

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.lodScoreClosed E.linkageSignificantClosed

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse