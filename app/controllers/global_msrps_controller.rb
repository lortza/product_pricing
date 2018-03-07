class GlobalMsrpsController < ApplicationController
  before_action :set_global_msrp, only: [:edit, :update, :destroy]

  def edit
  end

  def update
    respond_to do |format|
      if @global_msrp.update(global_msrp_params)
        format.html { redirect_to root_path, notice: "Global MSRP was successfully updated to $#{@global_msrp.price}." }
        format.json { render :show, status: :ok, location: root_path }
      else
        format.html { render :edit }
        format.json { render json: @global_msrp.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @global_msrp.destroy
    respond_to do |format|
      format.html { redirect_to global_msrps_url, notice: 'Global msrp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_global_msrp
      @global_msrp = GlobalMsrp.find(params[:id])
    end

    def global_msrp_params
      params.require(:global_msrp).permit(:price)
    end
end
