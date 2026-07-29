import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure AdmissibleClass where
  object : GeneRegulatoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeneRegulatoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse