import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure SequenceAlignmentPackage where
  querySequence : String
  referenceSequence : String
  alignmentScore : ℕ
  gapPenalty : ℕ
  substitutionMatrix : String → String → ℕ
  optimalAlignment : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  optimalAlignmentClosed : S.optimalAlignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.optimalAlignment

theorem sequence_alignment_closed_from_evidence
    (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) :
    SequenceAlignmentClosed S := by
  exact E.optimalAlignmentClosed

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse
