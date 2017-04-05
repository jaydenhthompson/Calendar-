class EventClass < ApplicationRecord
  has_many :event_event_class
  has_many :events, through: :event_event_class
  has_many :metric_classes


  def update_metric_classes(updated_metrics_classes)
    updated_metrics_classes.keys.each do |id|
      metric_class = MetricClass.find(id)
      metric_class.update(metric_type: updated_metrics_classes[id][:metric_type])
    end
  end
end
