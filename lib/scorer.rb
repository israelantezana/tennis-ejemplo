class Scorer
  def initialize
    @puntaje1 = 0
    @puntaje2 = 0
  end
  
  def marcador_de_jugador(nro_jugador)
    if (nro_jugador == 1)
      if deuce?
        "Deuce"
      else
        @puntaje1.to_s
      end
    else 
      if deuce?
        "Deuce"
      else
        @puntaje2.to_s
      end
    end
  end
  
  def anota_jugador(nro_jugador)
    if (nro_jugador == 1)
      @puntaje1 = incrementar_marcador(@puntaje1)
    else
      @puntaje2 = incrementar_marcador(@puntaje2)
    end
  end
  
  def deuce?
    @puntaje1 == 40 && @puntaje2 == 40
  end
  
  def incrementar_marcador(puntaje_actual)
    if (puntaje_actual == 30)
      puntaje = 40
    else
      puntaje = puntaje_actual + 15
    end
  end
end