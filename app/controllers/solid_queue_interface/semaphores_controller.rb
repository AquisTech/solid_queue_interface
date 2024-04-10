module SolidQueueInterface
  class SemaphoresController < ApplicationController
    def index
      @semaphores = SolidQueue::Semaphore.all
    end
  end
end
