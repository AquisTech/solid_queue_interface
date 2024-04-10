module SolidQueueInterface
  class QueuesController < ApplicationController
    def index
      @queues = SolidQueue::Queue.all
    end

    def paused
      @queues = SolidQueue::Pause.all
    end

    def pause
      @queue = SolidQueue::Queue.find_by_name(params[:queue_name])
      @queue.pause
      redirect_to solid_queue_interface_queues_path, notice: "Successfully paused queue: #{params[:queue_name]}"
    end

    def resume
      @queue = SolidQueue::Queue.find_by_name(params[:queue_name])
      @queue.resume
      redirect_to solid_queue_interface_queues_path, notice: "Successfully resumed queue: #{params[:queue_name]}"
    end
  end
end
