module SolidQueueInterface
  class QueuesController < ApplicationController
    def index
      @queues = SolidQueue::Queue.all
    end

    def paused
      @queues = SolidQueue::Pause.all
    end
  end
end
