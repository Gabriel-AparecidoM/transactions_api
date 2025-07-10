class TransactionsController < ApplicationController
  JSON_FIELDS: %i[ value ]

  def create
    transaction = Transaction.new(transaction_params)

    if transaction.save
      render json: transaction, only: JSON_FIELDS, status: :created
    else
      render json: transaction.errors, status: :unprocessable_entity
    end
  end

  def destroy_all
    Transaction.delete_all
    head :no_content
  end

  def statistics
    limit = 60.seconds.ago
    transactions = Transaction.where(:created_at.gte => limit)

    value = transactions.pluck(:value)

    render json: {
      count: value.size,
      sum: value.sum.round(2),
      avg: value.sum / (value.size.nonzero? || 1),
      min: value.min || 0,
      max: value.max || 0
    }
  end

  private

  def transaction_params
    params.require(:transaction).permit(:value)
  end
end
