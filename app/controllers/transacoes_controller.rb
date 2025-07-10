class TransacoesController < ApplicationController
  def create
    transacao = Transacao.new(transacao_params)

    if transacao.save
      head :created
    else
      render json: transacao.errors, status: :unprocessable_entity
    end
  end

  def destroy_all
    Transacao.delete_all
    head :ok
  end

  def statistics
    limite = 60.seconds.ago
    transacoes = Transacao.where(:created_at.gte => limite)

    valores = transacoes.pluck(:valor)

    render json: {
      count: valores.size,
      sum: valores.sum.round(2),
      avg: valores.sum / (valores.size.nonzero? || 1),
      min: valores.min || 0,
      max: valores.max || 0
    }
  end

  private

  def transacao_params
    params.require(:transacao).permit(:valor, :data_hora)
  end
end
