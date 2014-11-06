class Scorer
  def initialize
    @puntaje1 = 0
    @puntaje2 = 0
  end
  
  def marcador_de_jugador(nro_jugador)
    if (nro_jugador == 1)
      @puntaje1.to_s
    else 
      @puntaje2.to_s
    end
  end
  
  def anota_jugador(nro_jugador)
    if (nro_jugador == 1)
      @puntaje1 += 15
    else
      @puntaje2 += 15
    end
  end
end