module SolidQueueInterface
  class ProcessesController < ApplicationController
    def index
      @processes = SolidQueue::Process.all
    end
  end
end
