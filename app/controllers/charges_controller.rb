class ChargesController < ApplicationController
  def index
    @success_charges = Charge.paid
    @disputed_charges = Charge.disputed
    @failed_charges = Charge.failed
  end
end
