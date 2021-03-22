require 'csv'

class MagazinesImportersController < ApplicationController
  def create
    Magazine.import(params[:file]) if params[:file]
    redirect_to root_path, flash: { notice: 'Data imported' }
  end
end
