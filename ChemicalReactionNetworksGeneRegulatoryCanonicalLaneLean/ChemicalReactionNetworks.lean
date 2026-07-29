import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean

structure ChemicalReactionNetwork where
  species : Type u
  reactions : Type v
  stoichiometry : reactions → species → ℤ
  forwardRate : reactions → ℝ
  reverseRate : reactions → ℝ
  speciesDecidableEq : DecidableEq species
  reactionsDecidableEq : DecidableEq reactions

structure SpeciesConcentrations (N : ChemicalReactionNetwork) where
  concentration : N.species → ℝ
  initialConcentration : N.species → ℝ
  time : ℝ → N.species → ℝ
  odeSystem : Prop
  odeSystemTerm : odeSystem

def ChemicalReactionNetworkClosed (N : ChemicalReactionNetwork) : Prop :=
  True

end ChemicalReactionNetworksGeneRegulatoryCanonicalLaneLean
end HautevilleHouse