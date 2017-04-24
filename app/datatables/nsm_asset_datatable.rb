class NsmAssetDatatable < AjaxDatatablesRails::Base
  include AjaxDatatablesRails::Extensions::Kaminari

  def sortable_columns
    @sortable_columns ||= [
        'NsmAsset.id',
        'NsmAsset.code',
        'NsmAsset.computer_name',
        'NsmAsset.service_tag',
        'NsmAsset.invoice_number',
        'NsmAsset.operating_system'
    ]
  end

  def searchable_columns
    @searchable_columns ||= [
        'NsmAsset.id',
        'NsmAsset.code',
        'NsmAsset.computer_name',
        'NsmAsset.service_tag',
        'NsmAsset.invoice_number',
        'NsmAsset.operating_system'
    ]
  end

  private

  def data
    records.map do |record|
      [
        record.id,
        record.code,
        record.computer_name,
        record.service_tag,
        record.invoice_number,
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
end
