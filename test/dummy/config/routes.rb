Rails.application.routes.draw do
  mount SolidQueueInterface::Engine => "/solid_queue_interface"
end
