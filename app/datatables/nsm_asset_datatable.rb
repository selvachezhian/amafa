class NsmAssetDatatable < AjaxDatatablesRails::Base
  include AjaxDatatablesRails::Extensions::Kaminari

  def sortable_columns
    @sortable_columns ||= ['nsm_assets.id', 'nsm_assets.code', 'nsm_assets.operating_system']
  end

  def searchable_columns
    @searchable_columns ||= ['nsm_assets.id', 'nsm_assets.code', 'nsm_assets.operating_system']
  end

  private

  def data
    records.map do |record|
      [
          record.id,
          record.code,
          record.operating_system
      ]
    end
  end

  def employee
    @employee ||= Employee.find(options[:employee])
  end

  def get_raw_records
    employee.nsm_assets
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
