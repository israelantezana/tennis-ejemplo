class Scorer
  def initialize
    @puntaje1 = 0
    @puntaje2 = 0
  end
  
  def marcador_de_jugador(nro_jugador)
    if (nro_jugador == 1)
      mostrar_marcador(@puntaje1, @puntaje2)
    else 
      mostrar_marcador(@puntaje2, @puntaje1)
    end
  end
  
  def anota_jugador(nro_jugador)
    if (nro_jugador == 1)
      @puntaje1 = incrementar_marcador(@puntaje1)
    else
      @puntaje2 = incrementar_marcador(@puntaje2)
    end
  end
  
  def mostrar_marcador(puntaje_a_mostrar, puntaje_adversario)
    if deuce?(puntaje_a_mostrar, puntaje_adversario)
      "Deuce"
    else 
      if advantage?(puntaje_a_mostrar, puntaje_adversario)
        "Advantage"  
      else
        puntaje_a_mostrar.to_s
      end
    end
  end
  
  def deuce?(puntaje_a_mostrar, puntaje_adversario)
    puntaje_a_mostrar == 40 && puntaje_adversario == 40
  end
  
  def advantage?(puntaje_actual, puntaje_adversario)
    puntaje_actual == 55 && puntaje_adversario == 40
  end
  
  def incrementar_marcador(puntaje_actual)
    if (puntaje_actual == 30)
      puntaje = 40
    else
      puntaje = puntaje_actual + 15
    end
  end
end