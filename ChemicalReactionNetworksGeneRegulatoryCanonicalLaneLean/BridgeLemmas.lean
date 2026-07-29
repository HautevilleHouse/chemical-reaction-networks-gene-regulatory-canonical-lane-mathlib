import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeneRegulatoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse