class ContactMailersController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)

    if params[:back].present?
      render :new
      return
    end

    if @inquiry.save
      ContactMailer.send_mail(@inquiry).deliver_later
      flash[:info] = 'お問い合わせありがとうございました'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    # binding.pry
    render :new unless @inquiry.valid?
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:name, :message, :email, :category)
  end
end
