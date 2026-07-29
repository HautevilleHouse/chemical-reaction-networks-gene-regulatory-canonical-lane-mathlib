import canonicalLaneMathlib.AdmissibleClass
import ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmissibleClass where
  object : ChemicalReactionNetworksAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChemicalReactionNetworksWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse