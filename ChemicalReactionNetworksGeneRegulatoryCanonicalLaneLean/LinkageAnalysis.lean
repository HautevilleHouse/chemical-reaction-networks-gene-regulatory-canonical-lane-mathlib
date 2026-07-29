import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean.HardyWeinbergEquilibrium

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure LinkageAnalysisPackage where
  loci : Type u
  recombinationFraction : loci → loci → ℝ
  linkageDisequilibrium : loci → loci → ℝ
  lodScore : ℝ
  chromosomeMap : Prop
  geneOrder : Prop
  linkageAnalysisComplete : Prop
  linkageAnalysisCompleteTerm : linkageAnalysisComplete

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  chromosomeMapClosed : L.chromosomeMap
  geneOrderClosed : L.geneOrder
  linkageAnalysisCompleteClosed : L.linkageAnalysisComplete

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.chromosomeMap ∧ L.geneOrder ∧ L.linkageAnalysisComplete

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.chromosomeMapClosed (And.intro E.geneOrderClosed E.linkageAnalysisCompleteClosed)

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse