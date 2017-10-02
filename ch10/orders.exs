defmodule Orders do
  @tax_rates [ NC: 0.075, TX: 0.08 ]
  @orders [
    [id: 123, ship_to: :NC, net_amount: 100.00 ],
    [id: 124, ship_to: :OK, net_amount: 35.50  ],
    [id: 125, ship_to: :TX, net_amount: 24.00  ],
    [id: 126, ship_to: :TX, net_amount: 44.80  ],
    [id: 127, ship_to: :NC, net_amount: 25.00  ],
    [id: 128, ship_to: :MA, net_amount: 10.00  ],
    [id: 129, ship_to: :CA, net_amount: 102.00 ],
    [id: 130, ship_to: :NC, net_amount: 50.00  ]
  ]

  def tax_rates, do: @tax_rates
  def orders, do: @orders


  def calculate_tax(tax_rates, orders) do
    for order <- orders do
      [
        id: order[:id],
        ship_to: order[:ship_to],
        net_amount: order[:net_amount],
        total_amount: calculate_total(order[:ship_to], order[:net_amount])
      ]
    end
  end

  defp calculate_total(ship_to, net_amount) when ship_to in [:NC, :TX] do
    net_amount + (@tax_rates[ship_to] * net_amount)
    |> Float.round(2)
  end

  defp calculate_total(_, net_amount), do: net_amount
end
