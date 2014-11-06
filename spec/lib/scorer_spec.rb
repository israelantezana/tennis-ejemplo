require 'spec_helper'
require 'scorer'

describe Scorer do
  it "empieza con ambos marcadores en 0" do
    scorer = Scorer.new
    expect(scorer.marcador_de_jugador(1)).to eq("0")
    expect(scorer.marcador_de_jugador(2)).to eq("0")
  end
  
  it "jugador 1 anota" do
    scorer = Scorer.new
    scorer.anota_jugador(1)
    expect(scorer.marcador_de_jugador(1)).to eq("15")
    expect(scorer.marcador_de_jugador(2)).to eq("0")
  end
  
  it "jugador 2 anota dos veces" do
    scorer = Scorer.new
    scorer.anota_jugador(1)
    scorer.anota_jugador(2)
    scorer.anota_jugador(2)
    expect(scorer.marcador_de_jugador(1)).to eq("15")
    expect(scorer.marcador_de_jugador(2)).to eq("30")
  end
  
end