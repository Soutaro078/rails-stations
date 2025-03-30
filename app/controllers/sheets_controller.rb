class SheetsController < ApplicationController
  def index
    @sheets = Sheet.all
    @grouped_sheets = @sheets.group_by(&:row)
  end
end
