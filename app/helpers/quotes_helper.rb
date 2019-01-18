module QuotesHelper
  def remove_quote_mark(quote)
    quote.remove("'", "\"")
  end
end
