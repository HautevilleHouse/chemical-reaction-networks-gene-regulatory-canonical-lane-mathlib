import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequenceA : String
  sequenceB : String
  alignmentScore : ℕ
  alignmentOptimal : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  alignmentScoreClosed : S.alignmentScore ≥ 0
  alignmentOptimalClosed : S.alignmentOptimal

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  (S.alignmentScore ≥ 0) ∧ S.alignmentOptimal

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.alignmentScoreClosed E.alignmentOptimalClosed

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse