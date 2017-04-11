artii = Artii::Base.new :font => 'broadway'

Rails.logger.info artii.asciify Rails.application.class.parent_name