SolidQueueInterface::Engine.routes.draw do
  resources :jobs, only: :index, as: :solid_queue_interface_jobs do
    get :scheduled, on: :collection
    get :failed, on: :collection
    get :blocked, on: :collection
    get :claimed, on: :collection
    get :ready, on: :collection
    get :recurring, on: :collection
  end

  resources :queues, only: :index, as: :solid_queue_interface_queues do
    get :paused, on: :collection
  end

  root to: "jobs#index"
end
