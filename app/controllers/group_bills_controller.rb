class GroupBillsController < ApplicationController
  before_action :set_group_bill, only: %i[show edit update destroy]

  # GET /group_bills or /group_bills.json
  def index
    @group_bills = GroupBill.all
  end

  # GET /group_bills/1 or /group_bills/1.json
  def show; end

  # GET /group_bills/new
  def new
    @group_bill = GroupBill.new
  end

  # GET /group_bills/1/edit
  def edit; end

  # POST /group_bills or /group_bills.json
  def create
    @group_bill = GroupBill.new(group_bill_params)

    respond_to do |format|
      if @group_bill.save
        format.html { redirect_to group_bill_url(@group_bill), notice: 'group bill was successfully created.' }
        format.json { render :show, status: :created, location: @group_bill }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_bills/1 or /group_bills/1.json
  def update
    respond_to do |format|
      if @group_bill.update(group_bill_params)
        format.html { redirect_to group_bill_url(@group_bill), notice: 'group bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_bill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_bills/1 or /group_bills/1.json
  def destroy
    @group_bill.destroy

    respond_to do |format|
      format.html { redirect_to group_bills_url, notice: 'group bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_group_bill
    @group_bill = GroupBill.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def group_bill_params
    params.require(:group_bill).permit(:group_id, :bill_id)
  end
end
