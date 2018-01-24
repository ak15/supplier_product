class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.includes(:products).group("suppliers.id, products.id")
    .order("(sum(case products.status when 0 then 1 else 0 end)/sum(case products.status when 0 then 1 else 1 end))*100 desc").references(:products)
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    if (params[:inactive_check].present? && params[:inactive_check] == "false") || params[:inactive_check].blank?
      @products = @supplier.products.active
    elsif params[:inactive_check].present? && params[:inactive_check] == "true"
      @products = @supplier.products.inactive
    end
  end
end
